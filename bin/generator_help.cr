require "liquid"
require "json"
require "http/client"

class GeneratorHelp
  @tpl : String | Nil

  def initialize(exercise : String)
    response = HTTP::Client.get("https://raw.githubusercontent.com/exercism/problem-specifications/main/exercises/#{exercise}/canonical-data.json")
    @json = JSON.parse(response.body)
    template_path = "./exercises/practice/#{exercise}/.meta/template.liquid"
    raise "Template not found: #{template_path}" unless File.exists?(template_path)
    template_file = File.read("./exercises/practice/#{exercise}/.meta/template.liquid")
    remove_tests(toml(exercise))
    ctx = Liquid::Context.new
    ctx.set "json", @json
    tpl = Liquid::Template.parse template_file
    @tpl = tpl.render ctx
  end

  def to_s
    @tpl
  end

  def toml(exercise : String)
    uuid = [] of String
    path = "./exercises/practice/#{exercise}/.meta/tests.toml"
    raise "Toml not found: #{path}" unless File.exists?(path)
    File.read(path).split("\n").each do |line|
      line = line.strip
      if line.starts_with? "#"
        next
      elsif line.starts_with? "["
        uuid << line[1...-1]
      elsif line.gsub(" ", "") == "include=false"
        uuid.pop
      end
    end
    uuid
  end

  def remove_tests(uuid : Array(String))
    @json["cases"].as_a.reverse.each do |test|
      if !uuid.includes?(test["uuid"]?) && !test["uuid"]?.nil?
        @json["cases"].as_a.delete(test)
      elsif !test["cases"]?.nil?
        test["cases"].as_a.reverse.each do |subtest|
          if !uuid.includes?(subtest["uuid"]?) && !subtest["uuid"]?.nil?
            test["cases"].as_a.delete(subtest)
          end
        end
      end
    end
  end
end

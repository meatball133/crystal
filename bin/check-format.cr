require "json"
require "compiler/crystal/formatter"

module Check_template
  def self.check_practice_exercises
    check_folder("./exercises/practice")
  end

  def self.check_concept_exercises
    check_folder("./exercises/concept")
  end

  def self.check_folder(path)
    if Dir.exists?(path)
      Dir.open(path).each_child do |dir|
        json = JSON.parse(File.read("#{path}/#{dir}/.meta/config.json"))

        if json["files"]["exemplar"]?
          exemple = File.read("#{path}/#{dir}/#{json["files"]["exemplar"][0]}")
        else
          exemple = File.read("#{path}/#{dir}/#{json["files"]["example"][0]}")
        end
        solution = File.read("#{path}/#{dir}/#{json["files"]["solution"][0]}")
        spec = File.read("#{path}/#{dir}/#{json["files"]["test"][0]}")

        case
        when !(Crystal.format(exemple) == exemple)
          raise "The example file \"#{path}/#{dir}/.meta/src/#{json["files"]["exemplar"]? ? "exemplar" : "exemple" }.cr\" is not formatted"
        when !(Crystal.format(solution) == solution)
          raise "The solution file \"#{path}/#{dir}/#{json["files"]["solution"]}\" is not formatted"
        when !(Crystal.format(spec) == spec)
          raise "The spec file \"#{path}/#{dir}/#{json["files"]["test"]}\" is not formatted"
        else
          puts "All files in \"#{path}/#{dir}\" are formatted"
        end
      end
    end
  end
end

Check_template.check_practice_exercises
Check_template.check_concept_exercises

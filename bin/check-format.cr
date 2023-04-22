require "json"

module Check_template
  def self.check_practice_exercises
    Dir.open("./exercises/practice").each_child do |dir|
      json = JSON.parse(File.read("./exercises/practice/#{dir}/.meta/config.json"))
      File.write("/tmp/example.cr", File.read("./exercises/practice/#{dir}/.meta/src/example.cr"))
      File.write("/tmp/src.cr", File.read("./exercises/practice/#{dir}/#{json["files"]["solution"][0]}"))
      File.write("/tmp/spec.cr", File.read("./exercises/practice/#{dir}/#{json["files"]["test"][0]}"))

      system("crystal tool format /tmp/example.cr")
      system("crystal tool format /tmp/src.cr")
      system("crystal tool format /tmp/spec.cr")
      case
      when !File.same_content?("/tmp/example.cr", "./exercises/practice/#{dir}/.meta/src/example.cr")
        raise "The example file \"./exercises/practice/#{dir}/.meta/src/example.cr\" is not formatted"
      when !File.same_content?("/tmp/src.cr", "./exercises/practice/#{dir}/#{json["files"]["solution"][0]}")
        raise "The source file \"./exercises/practice/#{dir}/#{json["files"]["solution"]}\" is not formatted"
      when !File.same_content?("/tmp/spec.cr", "./exercises/practice/#{dir}/#{json["files"]["test"][0]}")
        raise "The spec file \"./exercises/practice/#{dir}/#{json["files"]["test"]}\" is not formatted"
      else
        puts "All files in \"./exercises/practice/#{dir}\" are formatted"
      end
    end
  end

  def self.check_concept_exercises
    if Dir.exists?("exercises/concept")
      Dir.open("./exercises/concept").each_child do |dir|
        json = JSON.parse(File.read("./exercises/concept/#{dir}/.meta/config.json"))
        File.write("/tmp/exemplar.cr", File.read("./exercises/concept/#{dir}/.meta/src/exemplar.cr"))
        File.write("/tmp/src.cr", File.read("./exercises/concept/#{dir}/#{json["files"]["solution"][0]}"))
        File.write("/tmp/spec.cr", File.read("./exercises/concept/#{dir}/#{json["files"]["test"][0]}"))

        system("crystal tool format /tmp/exemplar.cr")
        system("crystal tool format /tmp/src.cr")
        system("crystal tool format /tmp/spec.cr")
        case
        when !File.same_content?("/tmp/exemplar.cr", "./exercises/concept/#{dir}/.meta/src/exemplar.cr")
          raise "The exemplar file \"./exercises/concept/#{dir}/.meta/src/exemplar.cr\" is not formatted"
        when !File.same_content?("/tmp/src.cr", "./exercises/concept/#{dir}/#{json["files"]["solution"][0]}")
          raise "The source file \"./exercises/concept/#{dir}/#{json["files"]["solution"]}\" is not formatted"
        when !File.same_content?("/tmp/spec.cr", "./exercises/concept/#{dir}/#{json["files"]["test"][0]}")
          raise "The spec file \"./exercises/concept/#{dir}/#{json["files"]["test"]}\" is not formatted"
        else
          puts "All files in \"./exercises/concept/#{dir}\" are formatted"
        end
      end
    end
  end
end

Check_template.check_practice_exercises
Check_template.check_concept_exercises

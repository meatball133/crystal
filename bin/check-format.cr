module Check_template
  def self.check_practice_exercises
    Dir.open("./exercises/practice").each do |dir|
      unless dir == "." || dir == ".."
        File.write("/tmp/example.cr", File.open("./exercises/practice/#{dir}/.meta/src/example.cr"))
        File.write("/tmp/src.cr", File.open("./exercises/practice/#{dir}/src/#{dir.gsub("-", "_")}.cr"))
        File.write("/tmp/spec.cr", File.open("./exercises/practice/#{dir}/spec/#{dir.gsub("-", "_")}_spec.cr"))

        system("crystal tool format /tmp/example.cr")
        system("crystal tool format /tmp/src.cr")
        system("crystal tool format /tmp/spec.cr")
        case
        when !File.same_content?("/tmp/example.cr", "./exercises/practice/#{dir}/.meta/src/example.cr")
          raise "The example file \"./exercises/practice/#{dir}/.meta/src/example.cr\" is not formatted"
        when !File.same_content?("/tmp/src.cr", "./exercises/practice/#{dir}/src/#{dir.gsub("-", "_")}.cr")
          raise "The source file \"./exercises/practice/#{dir}/src/#{dir.gsub("-", "_")}.cr\" is not formatted"
        when !File.same_content?("/tmp/spec.cr", "./exercises/practice/#{dir}/spec/#{dir.gsub("-", "_")}_spec.cr")
          raise "The spec file \"./exercises/practice/#{dir}/spec/#{dir.gsub("-", "_")}_spec.cr\" is not formatted"
        else
          puts "All files in \"./exercises/practice/#{dir}\" are formatted"
        end
      end
    end
  end

  def self.check_concept_exercises
    if Dir.exists?("exercises/concept")
      Dir.open("./exercises/concept").each do |dir|
        unless dir == "." || dir == ".."
          File.write("/tmp/exemplar.cr", File.open("./exercises/concept/#{dir}/.meta/src/exemplar.cr"))
          File.write("/tmp/src.cr", File.open("./exercises/concept/#{dir}/src/#{dir.gsub("-", "_")}.cr"))
          File.write("/tmp/spec.cr", File.open("./exercises/concept/#{dir}/spec/#{dir.gsub("-", "_")}_spec.cr"))

          system("crystal tool format /tmp/exemplar.cr")
          system("crystal tool format /tmp/src.cr")
          system("crystal tool format /tmp/spec.cr")
          case
          when !File.same_content?("/tmp/exemplar.cr", "./exercises/concept/#{dir}/.meta/src/exemplar.cr")
            raise "The exemplar file \"./exercises/concept/#{dir}/.meta/src/exemplar.cr\" is not formatted"
          when !File.same_content?("/tmp/src.cr", "./exercises/concept/#{dir}/src/#{dir.gsub("-", "_")}.cr")
            raise "The source file \"./exercises/concept/#{dir}/src/#{dir.gsub("-", "_")}.cr\" is not formatted"
          when !File.same_content?("/tmp/spec.cr", "./exercises/concept/#{dir}/spec/#{dir.gsub("-", "_")}_spec.cr")
            raise "The spec file \"./exercises/concept/#{dir}/spec/#{dir.gsub("-", "_")}_spec.cr\" is not formatted"
          end
        end
      end
    end
  end
end

Check_template.check_practice_exercises
Check_template.check_concept_exercises

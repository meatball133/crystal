require "spec"
require "json"
require "../src/generator_help"

describe "GeneratorHelp" do
    describe "check_config" do
        it "should raise an error if the exercise isnt found" do
            generator_help = GeneratorHelp.new("say")
            costum_config_path = "./test-generator/spec/assets/config-files/config.json"
            expect_raises Exception do
                generator_help.check_config(costum_config_path)
            end
        end

        it "should not raise an error if the exercise is found" do
            generator_help = GeneratorHelp.new("anagram")
            costum_config_path = "./test-generator/spec/assets/config-files/config.json"
            generator_help.check_config(costum_config_path)
        end
    end
end
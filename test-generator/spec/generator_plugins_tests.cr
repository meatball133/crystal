require "spec"
require "../src/generator_plugins"

include GeneratorPlugins

describe GeneratorPlugins do
  describe "cammelcase" do
    it "should cammelcase a string" do
        to_cammel("hello-world").should eq "HelloWorld"
    end

    it "should be able to handle spaces" do
        to_cammel("hello-world 5").should eq "HelloWorld 5"
    end
  end
end

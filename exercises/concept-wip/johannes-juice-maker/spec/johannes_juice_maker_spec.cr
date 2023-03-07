require "spec"
require "../src/*"

describe "JuiceMaker" do
  describe "initialize" do
    it "should create a new JuiceMaker" do
      juice_maker = JuiceMaker.new(0)
      juice_maker.@fluid.should eq 0
      juice_maker.@running.should eq false
    end

    it "Can take a fluid as input" do
      juice_maker = JuiceMaker.new(5)
      juice_maker.@fluid.should eq 5
      juice_maker.@running.should eq false
    end
  end
end

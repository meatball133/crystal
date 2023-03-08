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

  describe "start" do
    it "should start the machine" do
      juice_maker = JuiceMaker.new(50)
      juice_maker.start
      juice_maker.@running.should eq true
    end
    it "should start the machine if there is no fluid" do
      juice_maker = JuiceMaker.new(0)
      juice_maker.start
      juice_maker.@running.should eq true
    end
  end

  describe "add_fluid" do
    it "should add fluid to the machine" do
      juice_maker = JuiceMaker.new(0)
      juice_maker.add_fluid(5)
      juice_maker.@fluid.should eq 5
    end
    it "can add fluid multiple times" do
      juice_maker = JuiceMaker.new(5)
      juice_maker.add_fluid(5)
      juice_maker.add_fluid(20)
      juice_maker.add_fluid(1)
      juice_maker.@fluid.should eq 31
    end
  end

  describe "stop" do
    it "should stop the machine" do
      juice_maker = JuiceMaker.new(50)
      juice_maker.start
      juice_maker.@running.should eq true
      juice_maker.stop(5)
      juice_maker.@running.should eq false
      juice_maker.@fluid.should eq 25
    end

    it "check so that it is turned on" do
      juice_maker = JuiceMaker.new(50)
      juice_maker.start
      juice_maker.@running.should eq true
      juice_maker.stop(1)
      juice_maker.@running.should eq false
      juice_maker.@fluid.should eq 45
    end
  end
end

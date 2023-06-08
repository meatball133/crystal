require "spec"
require "../src/*"

describe "JuiceMaker" do
  describe "debug_light_on?" do
    it "should be on if the machine is running" do
      JuiceMaker.debug_light_on?.should be_true
    end
  end

  describe "initialize" do
    it "should create a new JuiceMaker" do
      juice_maker = JuiceMaker.new(0)
      juice_maker.@fluid.should eq 0
      juice_maker.@running.should be_false
    end

    it "Can take a fluid as input" do
      juice_maker = JuiceMaker.new(5)
      juice_maker.@fluid.should eq 5
      juice_maker.@running.should be_false
    end
  end

  describe "start" do
    it "Can start the machine" do
      juice_maker = JuiceMaker.new(50)
      juice_maker.start
      juice_maker.@running.should be_true
    end

    it "Can start the machine even if there is no fluid" do
      juice_maker = JuiceMaker.new(0)
      juice_maker.start
      juice_maker.@running.should be_true
    end
  end

  describe "running?" do
    it "Status should return true if the machine is started" do
      juice_maker = JuiceMaker.new(50)
      juice_maker.start
      juice_maker.running?.should be_true
    end

    it "Status return false if the machine is not started" do
      juice_maker = JuiceMaker.new(0)
      juice_maker.running?.should be_false
    end
  end

  describe "add_fluid" do
    it "Can add fluid to the machine" do
      juice_maker = JuiceMaker.new(0)
      juice_maker.add_fluid(5)
      juice_maker.@fluid.should eq 5
    end
    it "Can add fluid multiple times" do
      juice_maker = JuiceMaker.new(5)
      juice_maker.add_fluid(5)
      juice_maker.add_fluid(20)
      juice_maker.add_fluid(1)
      juice_maker.@fluid.should eq 31
    end
  end

  describe "stop" do
    it "Can stop the machine" do
      juice_maker = JuiceMaker.new(50)
      juice_maker.start
      juice_maker.running?.should be_true
      juice_maker.stop(5)
      juice_maker.@running.should be_false
      juice_maker.@fluid.should eq 25
    end

    it "Doesn't remove any fluid if the machine stops right after start" do
      juice_maker = JuiceMaker.new(50)
      juice_maker.start
      juice_maker.running?.should be_true
      juice_maker.stop(0)
      juice_maker.running?.should be_false
      juice_maker.@fluid.should eq 50
    end
  end
end

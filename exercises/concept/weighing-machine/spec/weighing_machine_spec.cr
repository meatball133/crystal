require "spec"
require "../src/*"

describe WeighingMachine do
  describe "precision" do
    it "should return the precision of the weighing machine" do
      weighing_machine = WeighingMachine.new(3)
      weighing_machine.precision.should eq(3)
    end

    it "should return the precision of the weighing machine when precsion is 5" do
      weighing_machine = WeighingMachine.new(5)
      weighing_machine.precision.should eq(5)
    end
  end

  describe "metric" do
    it "should be by default metric" do
      weighing_machine = WeighingMachine.new(3)
      weighing_machine.metric.should eq(true)
    end

    it "should return the metric of the weighing machine when metric is false" do
      weighing_machine = WeighingMachine.new(3, false)
      weighing_machine.metric.should eq(false)
    end
  end

  describe "weight" do
    it "should return the weight of the weighing machine" do
      weighing_machine = WeighingMachine.new(3)
      weighing_machine.weight.should eq(0.0)
    end
  end
end

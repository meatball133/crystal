require "spec"
require "../src/*"

describe Reactor do
  describe "is_criticality_balanced?" do
    it "Should return false if the temperature is too low" do
      Reactor.is_criticality_balanced?(799, 499).should be_false
    end

    it "Should return false if too many neutrons are emitted" do
      Reactor.is_criticality_balanced?(200, 501).should be_false
    end

    it "Should return false if the product of temperature and neutrons emitted is too low" do
      Reactor.is_criticality_balanced?(800, 500).should be_false
    end

    it "Should return true if the temperature is high enough, the number of neutrons emitted is low enough, and the product of temperature and neutrons emitted is high enough" do
      Reactor.is_criticality_balanced?(2000, 400).should be_true
    end
  end

  describe "reactor_efficiency" do
    it "Should return \"green\" if the reactor is running at 80% efficiency" do
      Reactor.reactor_efficiency(200, 60, 15000).should eq "green"
    end

    it "Should return \"orange\" if the reactor is running at less than 80% but at least 60% efficiency" do
      Reactor.reactor_efficiency(150, 45, 10000).should eq "orange"
    end

    it "Should return \"red\" if the reactor is running at less than 60% efficiency" do
      Reactor.reactor_efficiency(100, 30, 5000).should eq "red"
    end
  end
end

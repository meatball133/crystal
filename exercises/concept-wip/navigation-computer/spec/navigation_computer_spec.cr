require "spec"
require "../src/*"

describe "Navigation" do
  describe "Constants" do
    it "NEPTUNE_DISTANCE should be 4.5 billion km and be int64" do
      Navigation::NEPTUNE_DISTANCE.should eq 4.5e9
      Navigation::NEPTUNE_DISTANCE.should be_a(Int64)
    end

    it "MARS_DISTANCE should be 227_940_000 km and be int32" do
      Navigation::MARS_DISTANCE.should eq 227_940_000
      Navigation::MARS_DISTANCE.should be_a(Int32)
    end
    it "ATMOSPHERE_DISTANCE should be 10_000 km and be int16" do
      Navigation::ATMOSPHERE_DISTANCE.should eq 10_000
      Navigation::ATMOSPHERE_DISTANCE.should be_a(Int16)
    end
  end
end

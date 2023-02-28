require "spec"
require "../src/*"

describe "Navigation" do
  describe "Constants" do
    it "NEPTUNE_DISTANCE should be 4.4 billion km and be int64" do
      Navigation::NEPTUNE_DISTANCE.should eq 4_400_000_000
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

  describe "correct_area_analysis" do
    it "Giving 9999 should return 9999 as Uint" do
      Navigation.new.correct_area_analysis(9_999).should eq 9_999
      Navigation.new.correct_area_analysis(9_999).should be_a(UInt32)
    end

    it "Giving 0 should return 0 as Uint" do
      Navigation.new.correct_area_analysis(0).should eq 0
      Navigation.new.correct_area_analysis(0).should be_a(UInt32)
    end
  end

  describe "calculate_velocity" do
    it "1000 m and 5 seconds should equal 200 meter per second" do
      Navigation.new.calculate_velocity(1000, 5).should eq 200_f32
      Navigation.new.calculate_velocity(1000, 5).should be_a(Float32)
    end

    it "4531 m and 14.6 seconds should equal" do
      Navigation.new.calculate_velocity(4531, 14.6).should eq 310.34247_f32
      Navigation.new.calculate_velocity(4531, 14.6).should be_a(Float32)
    end
  end
end

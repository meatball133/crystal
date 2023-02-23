require "spec"
require "../src/*"

describe "Temprature" do
  describe "to_kelvin" do
    it "should convert 0 celsius to 273.15 Kelvin" do
      Temperature.new.to_kelvin(0).should eq 273.15
    end

    it "should convert -273.15 to 0 Kelvin" do
      Temperature.new.to_kelvin(-273.15).should eq 0
    end

    it "should convert -100 celsius to 173.15 Kelvin" do
      Temperature.new.to_kelvin(-100).should eq 173.15
    end

    it "should convert 100 celsius to 373.15 Kelvin" do
      Temperature.new.to_kelvin(100).should eq 373.15
    end
  end

  describe "to_whole_number" do
    it "should convert 1.12 celsius to 1.1" do
      Temperature.new.to_whole_number(1.12).should eq 1.1
    end

    it "should convert 1 celsius to 1" do
      Temperature.new.to_whole_number(1).should eq 1
    end

    it "should convert -273.15 to -273" do
      Temperature.new.to_whole_number(-273.15).should eq -273.2
    end

    it "should convert 1.1 celsius to 1.1" do
      Temperature.new.to_whole_number(1.1).should eq 1.1
    end

    it "should convert 4.2434 celsius to 4.2" do
      Temperature.new.to_whole_number(4.2434).should eq 4.2
    end
  end

  describe "to_fahrenheit" do
    it "should convert 0 celsius to 32 fahrenheit" do
      Temperature.new.to_fahrenheit(0).should eq 32
    end

    it "should convert -273.15 to -456 fahrenheit" do
      Temperature.new.to_fahrenheit(-273.15).should eq -456
    end

    it "should convert -100 celsius to -148 fahrenheit" do
      Temperature.new.to_fahrenheit(-100).should eq -148
    end

    it "should convert 100 celsius to 212 fahrenheit" do
      Temperature.new.to_fahrenheit(100).should eq 212
    end
  end
end

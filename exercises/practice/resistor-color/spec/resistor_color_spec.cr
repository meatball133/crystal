require "spec"
require "../src/*"

describe "ResistorColor" do
  it "Black" do
    ResistorColor.color_code("black").should eq(0)
  end

  pending "White" do
    ResistorColor.color_code("white").should eq(9)
  end

  pending "Orange" do
    ResistorColor.color_code("orange").should eq(3)
  end
end

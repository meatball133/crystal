require "spec"
require "../src/*"

describe "Minesweeper" do
  it "no rows" do
    minesweeper = Minesweeper.new([] of String)
    minesweeper.annotate.should eq([] of String)
  end

  it "no columns" do
    minesweeper = Minesweeper.new([""] of String)
    minesweeper.annotate.should eq([""] of String)
  end

  it "no mines" do
    minesweeper = Minesweeper.new(["   ", "   ", "   "] of String)
    minesweeper.annotate.should eq(["   ", "   ", "   "] of String)
  end

  it "minefield with only mines" do
    minesweeper = Minesweeper.new(["***", "***", "***"] of String)
    minesweeper.annotate.should eq(["***", "***", "***"] of String)
  end

  it "mine surrounded by spaces" do
    minesweeper = Minesweeper.new(["   ", " * ", "   "] of String)
    minesweeper.annotate.should eq(["111", "1*1", "111"] of String)
  end

  it "space surrounded by mines" do
    minesweeper = Minesweeper.new(["***", "* *", "***"] of String)
    minesweeper.annotate.should eq(["***", "*8*", "***"] of String)
  end

  it "horizontal line" do
    minesweeper = Minesweeper.new([" * * "] of String)
    minesweeper.annotate.should eq(["1*2*1"] of String)
  end

  it "horizontal line, mines at edges" do
    minesweeper = Minesweeper.new(["*   *"] of String)
    minesweeper.annotate.should eq(["*1 1*"] of String)
  end

  it "vertical line" do
    minesweeper = Minesweeper.new([" ", "*", " ", "*", " "] of String)
    minesweeper.annotate.should eq(["1", "*", "2", "*", "1"] of String)
  end

  it "vertical line, mines at edges" do
    minesweeper = Minesweeper.new(["*", " ", " ", " ", "*"] of String)
    minesweeper.annotate.should eq(["*", "1", " ", "1", "*"] of String)
  end

  it "cross" do
    minesweeper = Minesweeper.new(["  *  ", "  *  ", "*****", "  *  ", "  *  "] of String)
    minesweeper.annotate.should eq([" 2*2 ", "25*52", "*****", "25*52", " 2*2 "] of String)
  end

  it "large minefield" do
    minesweeper = Minesweeper.new([" *  * ", "  *   ", "    * ", "   * *", " *  * ", "      "] of String)
    minesweeper.annotate.should eq(["1*22*1", "12*322", " 123*2", "112*4*", "1*22*2", "111111"] of String)
  end
end

require "spec"
require "../src/*"

describe "Strain" do
  it "keep on empty list returns empty list" do
    numbers = [] of Int32
    numbers.keep { |x| true }.should eq([] of Int32)
  end

  it "keeps everything" do
    numbers = [1, 3, 5]
    numbers.keep { |x| true }.should eq([1, 3, 5])
  end

  it "keeps nothing" do
    numbers = [1, 3, 5]
    numbers.keep { |x| false }.should eq([] of Int32)
  end

  it "keeps first and last" do
    numbers = [1, 2, 3]
    numbers.keep { |x| x % 2 == 1 }.should eq([1, 3])
  end

  it "keeps neither first nor last" do
    numbers = [1, 2, 3]
    numbers.keep { |x| x % 2 == 0 }.should eq([2])
  end

  it "keeps strings" do
    numbers = ["apple", "zebra", "banana", "zombies", "cherimoya", "zealot"]
    numbers.keep { |x| x.starts_with?('z') }.should eq(["zebra", "zombies", "zealot"])
  end

  it "keeps lists" do
    numbers = [[1, 2, 3], [5, 5, 5], [5, 1, 2], [2, 1, 2], [1, 5, 2], [2, 2, 1], [1, 2, 5]]
    numbers.keep { |x| x.includes?(5) }.should eq([[5, 5, 5], [5, 1, 2], [1, 5, 2], [1, 2, 5]])
  end

  it "discard on empty list returns empty list" do
    numbers = [] of Int32
    numbers.discard { |x| true }.should eq([] of Int32)
  end

  it "discards everything" do
    numbers = [1, 3, 5]
    numbers.discard { |x| true }.should eq([] of Int32)
  end

  it "discards nothing" do
    numbers = [1, 3, 5]
    numbers.discard { |x| false }.should eq([1, 3, 5])
  end

  it "discards first and last" do
    numbers = [1, 2, 3]
    numbers.discard { |x| x % 2 == 1 }.should eq([2])
  end

  it "discards neither first nor last" do
    numbers = [1, 2, 3]
    numbers.discard { |x| x % 2 == 0 }.should eq([1, 3])
  end

  it "discards strings" do
    numbers = ["apple", "zebra", "banana", "zombies", "cherimoya", "zealot"]
    numbers.discard { |x| x.starts_with?('z') }.should eq(["apple", "banana", "cherimoya"])
  end

  it "discards lists" do
    numbers = [[1, 2, 3], [5, 5, 5], [5, 1, 2], [2, 1, 2], [1, 5, 2], [2, 2, 1], [1, 2, 5]]
    numbers.discard { |x| x.includes?(5) }.should eq([[1, 2, 3], [2, 1, 2], [2, 2, 1]])
  end
end

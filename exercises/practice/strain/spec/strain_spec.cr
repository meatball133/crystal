require "spec"
require "../src/*"

describe "Strain" do
  it "keep on empty list returns empty list" do
    numbers = [] of Int32
    numbers.keep { |x| true }.should eq([] of Int32)
  end

  pending "keeps everything" do
    numbers = [1, 3, 5]
    numbers.keep { |x| true }.should eq([1, 3, 5])
  end

  pending "keeps nothing" do
    numbers = [1, 3, 5]
    numbers.keep { |x| false }.should eq([] of Int32)
  end

  pending "keeps first and last" do
    numbers = [1, 2, 3]
    numbers.keep { |x| x % 2 == 1 }.should eq([1, 3])
  end

  pending "keeps neither first nor last" do
    numbers = [1, 2, 3]
    numbers.keep { |x| x % 2 == 0 }.should eq([2])
  end

  pending "keeps strings" do
    numbers = ["apple", "zebra", "banana", "zombies", "cherimoya", "zealot"]
    numbers.keep { |x| x.starts_with?('z') }.should eq(["zebra", "zombies", "zealot"])
  end

  pending "keeps lists" do
    numbers = [[1, 2, 3], [5, 5, 5], [5, 1, 2], [2, 1, 2], [1, 5, 2], [2, 2, 1], [1, 2, 5]]
    numbers.keep { |x| x.includes?(5) }.should eq([[5, 5, 5], [5, 1, 2], [1, 5, 2], [1, 2, 5]])
  end

  pending "discard on empty list returns empty list" do
    numbers = [] of Int32
    numbers.discard { |x| true }.should eq([] of Int32)
  end

  pending "discards everything" do
    numbers = [1, 3, 5]
    numbers.discard { |x| true }.should eq([] of Int32)
  end

  pending "discards nothing" do
    numbers = [1, 3, 5]
    numbers.discard { |x| false }.should eq([1, 3, 5])
  end

  pending "discards first and last" do
    numbers = [1, 2, 3]
    numbers.discard { |x| x % 2 == 1 }.should eq([2])
  end

  pending "discards neither first nor last" do
    numbers = [1, 2, 3]
    numbers.discard { |x| x % 2 == 0 }.should eq([1, 3])
  end

  pending "discards strings" do
    numbers = ["apple", "zebra", "banana", "zombies", "cherimoya", "zealot"]
    numbers.discard { |x| x.starts_with?('z') }.should eq(["apple", "banana", "cherimoya"])
  end

  pending "discards lists" do
    numbers = [[1, 2, 3], [5, 5, 5], [5, 1, 2], [2, 1, 2], [1, 5, 2], [2, 2, 1], [1, 2, 5]]
    numbers.discard { |x| x.includes?(5) }.should eq([[1, 2, 3], [2, 1, 2], [2, 2, 1]])
  end
end

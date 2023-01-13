require "spec"
require "../src/*"

describe "AllYourBase" do
  it "single bit one to decimal" do
    input_base = 2
    digits = [1] of Int32
    output_base = 10
    AllYourBase.rebase(input_base, digits, output_base).should eq([1])
  end

  pending "binary to single decimal" do
    input_base = 2
    digits = [1, 0, 1] of Int32
    output_base = 10
    AllYourBase.rebase(input_base, digits, output_base).should eq([5])
  end

  pending "single decimal to binary" do
    input_base = 10
    digits = [5] of Int32
    output_base = 2
    AllYourBase.rebase(input_base, digits, output_base).should eq([1, 0, 1])
  end

  pending "binary to multiple decimal" do
    input_base = 2
    digits = [1, 0, 1, 0, 1, 0] of Int32
    output_base = 10
    AllYourBase.rebase(input_base, digits, output_base).should eq([4, 2])
  end

  pending "decimal to binary" do
    input_base = 10
    digits = [4, 2] of Int32
    output_base = 2
    AllYourBase.rebase(input_base, digits, output_base).should eq([1, 0, 1, 0, 1, 0])
  end

  pending "trinary to hexadecimal" do
    input_base = 3
    digits = [1, 1, 2, 0] of Int32
    output_base = 16
    AllYourBase.rebase(input_base, digits, output_base).should eq([2, 10])
  end

  pending "hexadecimal to trinary" do
    input_base = 16
    digits = [2, 10] of Int32
    output_base = 3
    AllYourBase.rebase(input_base, digits, output_base).should eq([1, 1, 2, 0])
  end

  pending "15-bit integer" do
    input_base = 97
    digits = [3, 46, 60] of Int32
    output_base = 73
    AllYourBase.rebase(input_base, digits, output_base).should eq([6, 10, 45])
  end

  pending "empty list" do
    input_base = 2
    digits = [] of Int32
    output_base = 10
    AllYourBase.rebase(input_base, digits, output_base).should eq([0])
  end

  pending "single zero" do
    input_base = 10
    digits = [0] of Int32
    output_base = 2
    AllYourBase.rebase(input_base, digits, output_base).should eq([0])
  end

  pending "multiple zeros" do
    input_base = 10
    digits = [0, 0, 0] of Int32
    output_base = 2
    AllYourBase.rebase(input_base, digits, output_base).should eq([0])
  end

  pending "leading zeros" do
    input_base = 7
    digits = [0, 6, 0] of Int32
    output_base = 10
    AllYourBase.rebase(input_base, digits, output_base).should eq([4, 2])
  end

  pending "input base is one" do
    input_base = 1
    digits = [0] of Int32
    output_base = 10
    AllYourBase.rebase(input_base, digits, output_base).should eq({"error" => "input base must be >= 2"})
  end

  pending "input base is zero" do
    input_base = 0
    digits = [] of Int32
    output_base = 10
    AllYourBase.rebase(input_base, digits, output_base).should eq({"error" => "input base must be >= 2"})
  end

  pending "input base is negative" do
    input_base = -2
    digits = [1] of Int32
    output_base = 10
    AllYourBase.rebase(input_base, digits, output_base).should eq({"error" => "input base must be >= 2"})
  end

  pending "negative digit" do
    input_base = 2
    digits = [1, -1, 1, 0, 1, 0] of Int32
    output_base = 10
    AllYourBase.rebase(input_base, digits, output_base).should eq({"error" => "all digits must satisfy 0 <= d < input base"})
  end

  pending "invalid positive digit" do
    input_base = 2
    digits = [1, 2, 1, 0, 1, 0] of Int32
    output_base = 10
    AllYourBase.rebase(input_base, digits, output_base).should eq({"error" => "all digits must satisfy 0 <= d < input base"})
  end

  pending "output base is one" do
    input_base = 2
    digits = [1, 0, 1, 0, 1, 0] of Int32
    output_base = 1
    AllYourBase.rebase(input_base, digits, output_base).should eq({"error" => "output base must be >= 2"})
  end

  pending "output base is zero" do
    input_base = 10
    digits = [7] of Int32
    output_base = 0
    AllYourBase.rebase(input_base, digits, output_base).should eq({"error" => "output base must be >= 2"})
  end

  pending "output base is negative" do
    input_base = 2
    digits = [1] of Int32
    output_base = -7
    AllYourBase.rebase(input_base, digits, output_base).should eq({"error" => "output base must be >= 2"})
  end

  pending "both bases are negative" do
    input_base = -2
    digits = [1] of Int32
    output_base = -7
    AllYourBase.rebase(input_base, digits, output_base).should eq({"error" => "input base must be >= 2"})
  end
end

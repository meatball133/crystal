# Introduction

There are various ways to solve **rain-drops**.
To solve this exercise is some form of conditionals required.

## General guidance

To solve this exercise is some form of conditionals required.

## Approach: Using conditionals

Using conditionals to build a string using if expressions and the ternary operator.

```crystal
module Raindrops
  def self.convert(count : Int32) : String
    result = ""
    result += "Pling" if count.divisible_by?(3)
    result += "Plang" if count.divisible_by?(5)
    result += "Plong" if count.divisible_by?(7)
    result.blank? ? count.to_s : result
  end
end
```

For more information, check the [conditionals approach][approach-conditionals].

## Approach: Using rules

Using rules to create logic to create a `String` for result.
This solution is very consise since it only uses only one if statement.

```crystal
module Raindrops
  DROPS = {3 => "Pling", 5 => "Plang", 7 => "Plong"}
  def self.convert(number : Int)
    DROPS.join { |k, v| v if number.divisible_by?(k) }.presence || number.to_s
  end
end
```

For more information, check the [Rukes approach][approach-rules].

## Approach: Using String::Builder

This approach uses the [`String::Builder` class][string-builder] to build the reversed string.

```crystal
module ReverseString
  def self.reverse(input : String) : String
    result = String.build(input.size) do |builder|
      (0...input.size).reverse_each do |i|
        builder << input[i]
      end
    end
  end
end
```

For more information, check the [String::Builder approach][approach-string-builder].

## Benchmark

For more information, check the [Performance article][article-performance].

[approach-array]: https://exercism.org/tracks/crystal/exercises/reverse-string/approaches/array
[approach-string-builder]: https://exercism.org/tracks/crystal/exercises/reverse-string/approaches/string-builder
[article-performance]: https://exercism.org/tracks/crystal/exercises/reverse-string/articles/performance
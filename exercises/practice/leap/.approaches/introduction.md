# Introduction

There are various ways to solve **leap**.
Crystal comes with a leap method built-in into the `Time` module (leap_year?).
This exercise although aims at practecing boolean logic thereby that method has been blocked.
But for all other purposes when dealing with time should the built-in method be used.

## General guidance

The goal of this exericse is to use various boolean logic to respond to if a year is a leap year or not.

## Approach: Using `divisible_by?`

This is the most examplar solution, and is the same way as the [`leap_year?`][leap-year] method is implimented (as of Crystal 1.11).
`divisible_by?` offers a clear indication of what the method does and is easy to read.
Comparred to using `number % 4 == 0` which is harder to read and understand.
Although `%` can get the remainder which `divisible_by?` can't.

```crystal
module Year
  def self.leap?(year : Number) : Bool
    year.divisible_by?(4) && (year.divisible_by?(400) || !year.divisible_by?(100))
  end
end
```

For more information, check the [`divisible_by?` approach][approach-divisible_by].

## Approach: Using `%` (modolus)

Using `%` is a great way to check if a number is divideable by another and/or to get the rest of a divison.


```crystal
module Year
  def self.leap?(year : Number) : Bool
    year % 4 == 0 && (year % 400 == 0 || year % 100 != 0)
  end
end
```

For more information, check the [modolus approach][approach-modolus].

## Benchmark

For more information, check the [Performance article][article-performance].

[approach-divisible_by]: https://exercism.org/tracks/crystal/exercises/leap/approaches/divisible-by
[approach-modolus]: https://exercism.org/tracks/crystal/exercises/leap/approaches/modolus
[article-performance]: https://exercism.org/tracks/crystal/exercises/leap/articles/performance
[leap-year]: https://crystal-lang.org/api/Time.html#leap_year%3F%28year%3AInt%29%3ABool-class-method

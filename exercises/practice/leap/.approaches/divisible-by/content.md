# Using `divisible_by?`

```crystal
module Year
  def self.leap?(year : Number) : Bool
    year.divisible_by?(4) && (year.divisible_by?(400) || !year.divisible_by?(100))
  end
end
```

The method takes a `Number` as an argument and returns a `Bool`.
The method first checks if the number is dividable by 4 using the [`divisible_by?`][divisible_by] method.
If the number is dividable by 4 it returns `true` otherwise `false`.

Then is the same procedure  done but with 400 and 100 instead of 4.
But the result when dividing by 100 is inverted using the `!` operator.
Then the result of the division by 400 is checked with the `||` operator, which means or.
If one of the two is true the result is true.

After that are the two results combined with the `&&` operator, which means and.
If both are true the result is true, otherwise false.
Then the result is returned.

[divisible_by]: https://crystal-lang.org/api/Int.html#divisible_by%3F%28num%29%3ABool-instance-method

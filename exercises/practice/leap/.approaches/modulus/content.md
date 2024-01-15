# Using modulus

```crystal
module Year
  def self.leap?(year : Number) : Bool
    year % 4 == 0 && (year % 400 == 0 || year % 100 != 0)
  end
end
```

The `Year.leap?` method takes a `Number` as an argument and returns a `Bool`.
The `Year.leap?` method first checks if the number is divisible by 4 using the `%` (modulus) method.
It gets the remainder of the division.
Then it checks if the remainder is 0.
If the remainder is 0 it returns `true` otherwise `false`.

Then is the same procedure done but with 400 and 100 instead of 4.
But the result when dividing by 100, is instead checked if the remainder is not 0.
Finally, we evaluate the result of the division by 400 using the [`||` operator][or], the logical OR operator.
If one of the two is true the result is true.

After those checks, the two resulting Boolean values are combined with the [`&&` operator][and], the logical AND operator.
If both are true the result is true, otherwise false.
Then the result is returned.

[and]: https://crystal-lang.org/reference/syntax_and_semantics/and.html
[or]: https://crystal-lang.org/reference/syntax_and_semantics/or.html

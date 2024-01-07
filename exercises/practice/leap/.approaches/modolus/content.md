# Using modolus

```crystal
module Year
  def self.leap?(year : Number) : Bool
    year % 4 == 0 && (year % 400 == 0 || year % 100 != 0)
  end
end
```

The method takes a `Number` as an argument and returns a `Bool`.
The method first checks if the number is divideable by 4 using the `%` (modolus) method.
It gets the remainder of the division.
Then it checks if the remainder is 0.
If the remainder is 0 it returns `true` otherwise `false`.

Then is the same procedur done but with 400 and 100 instead of 4.
But the result for when dividing by 100, is instead checked if the remainder is not 0.
Then the result of the division by 400 is checked with the `||` operator, which means or.
If one of the two is true the result is true.

After that are the two results combined with the `&&` operator, which means and.
If both are true the result is true, otherwise false.
Then the result is returned.

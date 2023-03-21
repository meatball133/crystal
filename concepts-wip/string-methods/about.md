# String methods

String has a number of methods that can be used to manipulate the string.  
These methods are called on the string itself, and are often chained together to perform multiple operations on a string.

## String#upcase & String#downcase

The `upcase` method returns a new string with all the characters converted to uppercase.

```crystal
"hello".upcase
# => "HELLO"
```

The `downcase` method returns a new string with all the characters converted to lowercase.

```crystal
"HELLO".downcase
# => "hello"
```

## String#capitalize & String#camelcase & String#underscore & String#titleize

There are a number of methods that can do more specific case conversions.
That can be useful when you want to convert a string to a specific format.
Here is a list of some of the most common methods:

| Method                          | Description                                                                                                        | Example                                              |
| ------------------------------- | ------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------- |
| `String#capitalize`             | Converts the first letter to uppercase and the rest to lower case                                                  | `"hEllO" # => "Hello"`                               |
| `String#camelcase`              | Converts underscore to cammelcase                                                                                  | `"eiffel_tower" # => "EiffelTower"`                  |
| `String#camelcase(lower: true)` | Same as String#camelcase but leaves the first character lower cased                                                | `"empire_state_building" # => "empireStateBuilding"` |
| `String#underscore`             | Converts all characters to downcase and places an underscore where between a downcase letter and an upcased letter | `"PartyInTheUSA" # => "party_in_the_usa"`            |
| `String#titleize`               | Capitalizes the first letter for each word and downcase the rest                                                   | `"the great gatsBY" # => "The Great Gatsby"`         |

## String#sub & String#gsub

Crystal has methods for replacing parts of a string.
These are known as `sub` (_substitution_) and `gsub` (_global substitution_).

These methods can take a string, char or regex as the first argument, and a string or char as the second argument.
The first argument is the part of the string that will be replaced, and the second argument is the replacement.
Chars and regex will be explained at a later stage.

The `sub` method will replace the first occurrence of the first argument with the second argument.

```crystal
"hello".sub("l", "r")
# => "herlo"
```

The `gsub` method works the same as sub but will replace all occurrences of the first argument with the second argument.

```crystal
"hello".gsub("l", "r")
# => "herro"
```

## String#chomp & String#strip


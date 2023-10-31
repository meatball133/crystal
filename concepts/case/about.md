# Case

[`case`][case] (often referred to as switch in other languages) is a form of control expression like if-else.
`case` allows for chaining of multiple if-else-if statements and can be more readable and also allows for powerful constructs.

A `case` is defined by the keyword `case` followed by an optional expression.
Then for each case, the keyword `when` is used followed by an expression which is compared to the case expression.
The `when` keyword should not be indented from the `case` keyword.
After the `when` keyword is the code that should be executed if the case expression matches the when expression.
Case allows for an optional `else` statement which is executed if no other case matches.

The case expression is evaluated and then compared to each when expression.
The expression is compared using the [case subsumption operator (`===`)][case-subsumption].

```Crystal
case 1
when 1
  puts "One"
when 2
  puts "Two"
else
  puts "Other"
end
# => One

# This is the same as:
tmp = 1
if 1 === tmp
  puts "One"
elsif 2 === tmp
  puts "Two"
else
  puts "Other"
end
```

## Case subsumption operator (`===`)

The case subsumption operator (`===`) is a bit different from the equality operator (`==`).
The operator checks if the right side is a member of the set described by the left side.
This means that it does matter where each operand is placed.
How this works depends on the type of the left side, for example a `Range` would check if the right side is in the range or a `Object` would check if the right side is an instance of the `Object`.

```Crystal
(1..3) == 1  # => false
(1..3) === 1 # => true

String == "foo"  # => false
String === "foo" # => true
```

## Case with multiple expressions

Cases allow for matching multiple expressions in a single case with each possible value separated by a comma.
It will execute the code if any of the expressions match.
This can be useful when you want a single case to have multiple possible values.

```Crystal
case 1
when 1, 2
  puts "One or two"
else
  puts "Other"
end
```

## Cases with ranges

Cases can also check if a value is in a range.
This is done by having a range as the when expression.

```Crystal
case var
when 1..3
  puts "One to three"
else
  puts "Other"
end
```

## Cases with no case expression

When there is no need for a case expression, it is possible to omit it.
Doing this will make it so that each case expression is evaluated for truthiness.
And makes them behave like if-else-if statements.

```Crystal
case
when 1 == 1
  puts "One is equal to one"
when 1 > 2
  puts "One is greater than two"
else
  puts "Other"
end
```

## Single line when

Crystal allows for single line case statements.
This can be used when you have a simple single line statement.
The single line when statement is written as `when <expression> then <statement>`.
And when used in the else statement it is written as `else <statement>`.

```Crystal
case var
when 1 then puts "One"
when 2 then puts "Two"
else puts "Other"
end
```

## Case with types

Case allows for the matching with types.
The comparison will use the `is_a?` operator to check the type of the variable.
This allows for example to have one branch for each type in a union type.

```Crystal
case var
when Int32
  puts "Int32"
when String
  puts "String"
else
  puts "Other"
end
```

## Implicit object

Case allows for the use of an implicit object.
This allows for example a when expression to be a method call on the case expression.
Based on if the method returns a truthy or falsey value will the case be matched or not.

```Crystal
case 1
when .odd?
  puts "Odd"
when .even?
  puts "Even"
end
```

## Exhaustive case

Case allows for exhaustive cases, this means that it is possible to ensure that all possible values are handled.
It is written similar to the when statement, but with a `in` keyword instead of `when`.
When a case is exhaustive, so does it not support any `when` or `else` statements.

Exhaustive cases can be used on `Bools`, `Union` types, `Enum`, and `Tuples`.
The two latter ones will be covered in later concepts.

Exhaustive cases means that all possibilities will have to be handled, otherwise a compile error will be raised.
Handling `Union` types as an exhaustive case is very similar to a non-exhaustive case.

```Crystal
var : (Int32 | String | Bool)
case var 
in Int32
  puts "Int32"
in String
  puts "String"
in Bool
  puts "Bool"
end
```

`Bools` can be handled as an exhaustive case by using the `true` and `false` keywords.

```Crystal
var : Bool
case var
in true
  puts "True"
in false
  puts "False"
end
```

[case]: https://crystal-lang.org/reference/latest/syntax_and_semantics/case.html
[case-subsumption]: https://crystal-lang.org/reference/latest/syntax_and_semantics/operators.html#subsumption

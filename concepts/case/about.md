# Case

Case (similar to switch in other languages) is a form of control expression like if-else.
Case allows for chaining of multiple if-else-if statements and can be more readable and also allows for powerful constructs.

A case is defined by the keyword case followed by an optional expression.
Then for each case, the keyword when is used followed by an expression on a new line.
Case allows for an optional else statement which is executed if no other case matches.

The case expression is evaluated and then compared to each when expression.
The expression is compared using the [case subsumption operator (`===`)].

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
elsif 1 === tmp
  puts "Two"
else
  puts "Other"
end
```

## Case subsumption operator (`===`)

The case subsumption operator (`===`) is a bit different from the normal equality operator (`==`).
The operator checks if the right side is a member of the set described by the left side.
This means that it does matter where each operand is placed.
How this works depends on the type of the left side, for example a range would check if the right side is in the range or a class would check if the right side is an instance of the class.

```Crystal
(1..3) == 1  # => false
(1..3) === 1 # => true

String == "foo"  # => false
String === "foo" # => true
```

## Case with multiple expressions

Cases allows for matching multiple expressions in a single case, each possible value is separated by a comma.
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

Cases can also use ranges to compare with.
This can be useful when you want to check if a value is in a range.

```Crystal
case 1
when 1..3
  puts "One to three"
else
  puts "Other"
end
```

## Cases with no case expression

When there is no need for a case expression then it is possible to omit it.
Doing this will make so each case expression is evaluated for truthiness, and it is possible to have comparison operators in the case expression.

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

Crystal allows for single line when statements.
This can be used when you have a simple single line statement.
The single line when statement is written as `when <expression> then <statement>`.
And when used in the else statement it is written as `else <statement>`.

```Crystal
case 1
when 1 then puts "One"
when 2 then puts "Two"
else puts "Other"
end
```

## Case with types

Case allows for the matching with types.
This allows for comparing with 

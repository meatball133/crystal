# Conditionals

Crystal has what is known as Control expressions, these are used to control the way the program will run and they take a truthy or falsey value.
There are operators that can be used to create thruthy or falsey values, these are known as equality and comparison operators .

There are 2 main control expresions that are used to control which code will run and which will not.
Also known as which given branch will run.

That is the `if` and the `unless` expresion.

## Comparison operators

Comparison operators are used to compare values and return a `true` or `false` value.
These operators require 2 values to be compared of the same type.
If the values are not of the same type then the compiler will throw an error.
Here is a list of the comparison operators and an example when they give a `true` value:

| Method | Description   | Example |
| ------ | ------------- | ------- |
| <      | less          | 5 < 4   |
| <=     | less or equal | 4 <= 4  |
| >      | more          | 3 > 1   |
| >=     | more or equal | 2 >= 2  |

## Equality operators

Equality operators are similar to comparison operators but they are used to check if 2 values are equal or not equal.

The `==` operator is used to check if 2 values are equal, and that includes checking the type of the value.
If the values are the same then it will return `true` otherwise it will return `false`.
The `==` operator can compare any type of value with any other type of value.
The `!=` works the same way but it will return `true` if the values are not equal and `false` if they are equal.

## Spaceship operator

The spaceship operator is a special comparison operator and has got its name because of the way it looks.
It is special in the sense that it doesn't return a truthy or falsey value but it returns a number.
It is written as `<=>` and it is used to compare 2 values.
It will return `1` if the left value is greater than the right value, `-1` if the left value is less than the right value and `0` if the values are equal.

```crystal
1 <=> 2 # => -1
2 <=> 1 # => 1
1 <=> 1 # => 0
```

## If statement

The `if` statement is used to check if a given condition is truthy or falsey.
If the condition is truthy then the code inside the if statement will run.

```crystal
if 1 == 1
  puts "1 is equal to 1"
end
# => 1 is equal to 1

if 1 > 2
  puts "1 is greater than 2"
end
```

## Unless statement

The `unless` statement works very similar to the If statement but it will run the code inside the `unless` statement if the condition is falsey.

```crystal
unless 1 == 1
  puts "1 is not equal to 1"
end

unless 1 > 2
  puts "1 is not greater than 2"
end
# => 1 is not greater than 2
```

## Else statement

The `else` statement can be used in conjunction with the if and unless statements.
The `else` statement will be executed it the if branch or the unless branch is not executed.

```crystal
if 1 == 1
  puts "1 is equal to 1"
else
  puts "1 is not equal to 1"
end
# => 1 is equal to 1

unless 1 < 2
  puts "1 is not greater than 2"
else
  puts "1 is greater than 2"
end
# => 1 is greater than 2
```

## Elsif statement

The `elsif` statement can be used in conjunction with the if statement.
The `elsif` statement will be executed if the if branch is not executed and the condition of the elsif statement is truthy.
Elsif statements can be chained together and the first truthy condition will be executed.
There can also be an else statement at the end of the if statement which will run if non of the earlier statement has been true.

```crystal
if 1 != 1
  puts "1 is equal to 1"
elsif 1 > 2
  puts "1 is greater than 2"
else
  puts "1 is not equal to 1 and 1 is not greater than 2"
end
# => 1 is greater than 2
```

## Types with conditionals

When assining to different types then will the variable carry both of the types.
This is because the compiler doesn't know which branch will be executed.
This multiple assigment which is also known as a union will be explained in later concepts.
This can be seen in the following example:

```crystal
if 1 == 1
  a = 1
else
  a = "1"
end

typeof(a) # => Int32 | String
```

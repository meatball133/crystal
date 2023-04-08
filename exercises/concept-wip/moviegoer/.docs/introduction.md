# Introduction

## The ternary operator

[Ternary operator][ternary-operator] is a shorthand way of writing an `if` and `else` statement.
It is also known as the _conditional operator_.
The ternary operator is commonly used when only two branches are needed and the branches are short.

Ternary operator is built of a condition, a question mark, a true branch, a colon and a false branch.
The condition should either be truthy or falsy.

Here is the syntax:

```crystal
condition ? true_branch : false_branch
```

For example:

```crystal
if traffic_light == 'green'
  cross_the_road
else
  wait
end
```

can be re-written as:

```crystal
traffic_light == 'green' ? cross_the_road : wait
```

## Assigning a value based on a condition

The ternary operator can be used to assign a value based on a condition.
For example, the following code assigns the value of `x` to `y` if `x` is greater than `0`.
Otherwise, it assigns the value of `0` to `y`:

```crystal
x = -5

y = x > 0 ? x : 0

p y # => 0
```

[ternary-operator]: https://crystal-lang.org/reference/latest/syntax_and_semantics/ternary_if.html

# Bools

Crystal has a type know as [`Bool`][bools], it is used to represent the values `true` and `false`.
With the bool type can you use logical operators(`!`, `||`, `&&`) which can be used to combine bools and change their values.

```crystal
true && true
# => True

true && false
# => False

false && false
# => false

false || true
# => True
false || false
# => false

!false
# => true

!true
# => false
```

## Logical operators

Crystal has 3 logical operators which is used to combine bools and change their values.

### And(`&&`)

The [and operator][and] in crystal is represented by `&&` and returns `true` if both values given is `true` otherwise it returns `false`.
When using the and operator so should one bool be placed one the right side of the `&&` and one on the left side.

```crystal
true && true
# => true

true && false
# => false

false && false
# => false
```

### Or(`||`)

The [or operator][or] in crystal is represented by `||` and returns `true` if **at least one** of values given is `true` if both of the values are `false` then it returns `false`.
When using the or operator so should one bool be placed one the right side of the `||` and one on the left side.

```crystal
true || true
# => true

true || false
# => true

false || true
# => true

false || false
# => false
```

### Not(`!`)

The not operator in crystal is represented by `!` and returns `true` if the given bool is `false` and return `false` if `true` is given.
When using the not operator so should the bool be placed after the operator (`!`).

```crystal
!true
# => false

!false
# => true
```

## Using brackets(`()`)

When working with booleans you can use brackets to decided which bools to evaluate first.
Dependent on how the brackets are used so can the result end up to be different.

In crystal so is what is in brackets evaluated first.
After brackets has been evaluated so are booleans evaluated from left to right.
In the example below so will first AND operation be evaluated which will evaluate to: `false && false || true`.
Then the second AND operation which makes it look like: `false || true`, which results in `true`.
In the second example it will first evaluate what is in the brackets, after the evaluation it will look like: `true && false && true`.
In a situation where there is only AND operation so does all bools has to be true to make the result be true, since one is false so will the result be false.

```crystal
true && false && false || true
# => true

true && false && (false || true)
# => false
```

Since what is in the bracket is evaluated first so will it affect when using the not operator.

```crystal
!true && false
# => false

!(true && false)
# => true
```

```exercism/caution
You should only use brackets when they affect the result, otherwise should they be omitted.
```

[bools]: https://crystal-lang.org/reference/1.7/syntax_and_semantics/literals/bool.html
[and]: https://crystal-lang.org/reference/1.7/syntax_and_semantics/and.html
[or]: https://crystal-lang.org/reference/1.7/syntax_and_semantics/or.html

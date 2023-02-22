# Bools

Crystal has a type know as [`Bool`][bools], it is used to represent the values `true` and `false`.
You can use logical operators (`!`, `||`, `&&`) which can be used to combine Bools and create more complex expressions:

## Logical operators

Crystal has 3 logical operators which are used to combine Bools and make expressions that produce different values.

### And(`&&`)

The [_and_ operator][and] in crystal is represented by `&&` and returns `true` if both values given are `true` otherwise it returns `false`.
When using the _and_ operator, one Bool be placed on the right side of the `&&` and another one on the left side.

```crystal
true && true
# => true

true && false
# => false

false && false
# => false
```

### Or(`||`)

The [_or_ operator][or] in crystal is represented by `||` and returns `true` if **at least one** of values given is `true` if both of the values are `false` then it returns `false`.
When using the _or_ operator one bool should be placed on the right side of the `||` and another one on the left side.

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

The _not_ operator in crystal is represented by `!` and returns `true` if the given Bool is `false` and return `false` if `true` is given.
When using the _not_ operator one Bool should be placed after the operator (`!`).

```crystal
!true
# => false

!false
# => true
```

## Using parentheses(`()`)

When working with booleans you can use parentheses to decided which Bools to evaluate first.
The result can differ depending on how the parentheses are used.

In crystal, what is in parentheses is evaluated first.
After parentheses has been evaluated so are booleans evaluated from left to right.
In the example below the _and_ operation be evaluated first, which will evaluate to: `false && false || true`.
Then the second _and_ operation will be evaluated, which makes it look like: `false || true`, which in turn results in `true`.
In the second example, it will first evaluate what is in the parenthesis. After this evaluation, the expression look like: `true && false && true`.
In a situation where there is only one _and_ operation, all Bools have to be `true` to make the result be `true`.
If one of the arguments to _and_ is `false` the result will also be `false`.

```crystal
true && false && false || true
# => true

true && false && (false || true)
# => false
```

Since what is in parentheses is evaluated first, in the following example, the _not_ operator will apply to the expression inside parentheses.

```crystal
!true && false
# => false

!(true && false)
# => true
```

```exercism/caution
You should only use parentheses when they affect the result, otherwise should they be omitted.
```

[bools]: https://crystal-lang.org/reference/1.7/syntax_and_semantics/literals/bool.html
[and]: https://crystal-lang.org/reference/1.7/syntax_and_semantics/and.html
[or]: https://crystal-lang.org/reference/1.7/syntax_and_semantics/or.html

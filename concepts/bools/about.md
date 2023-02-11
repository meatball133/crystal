# Bools

Crystal has a type know as `Bool`, it is used to represent the values `true` and `false`.
With the bool classes does also logical operators(`!`, `||`, `&&`), which can be used to combine bools and change thier values.

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

Crystal has 3 logical operators which is used to combine bools and change thier values.

### And(`&&`)

The "and" operator in crystal is represented by `&&` and returns `true` if both values given is `true` otherwise it returns `false`.
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

The "or" operator in crystal is represented by `||` and returns `true` if atleast one of values given is `true` if both of the values are `false` then it returns `false`.
When using the or operator so should one bool be placed one the right side of the `&&` and one on the left side.

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

The "not" operator in crystal is represented by `!` and returns `true` if the given bool is `false` and return `false` if `true` is given.
When using the not operator so should the bool be placed after the operator (`!`).

```crystal
!true
# => false

!false
# => true
```

## Using brackets(`()`)

When working with booleans you can use brackets to decided which bools to evalutate first.
Dependent on how the brackets are used so can the result end up to be different.

In the first example below is first the and operation evaluated, since `true` and `false` is both not `true` will that return `false`

```crystal
true && false || true
# => false

true && (false || true)
# => true
```



```crystal
>>>!true && false
false

>>>!(true && false)
true
```


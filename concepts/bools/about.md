# Bools

Crystal has a type known as [`Bool`][bools].
It represents the values `true` and `false`.

## Logical operators

Crystal has three logical operators (`!`, `||`, `&&`), which combine Bools and make expressions that produce different values.

### And(`&&`)

The [_and_ operator][and] in Crystal is represented by `&&` and returns `true` if both values are `true`; otherwise, it returns `false`.
When using the _and_ operator, one Bool is placed on the right side of the `&&` and another on the left side.

```crystal
true && true
# => true

true && false
# => false
```

### Or(`||`)

The [_or_ operator][or] in Crystal is represented by `||` and returns `true` if **at least one** of the values given is `true`. 
If both of the values are `false`, then it returns `false`.
When using the _or_ operator, one Bool should be placed on the right side of the `||` and another on the left.

```crystal
true || true
# => true

true || false
# => true

false || false
# => false
```

### Not(`!`)

The _not_ operator in Crystal is represented by `!` and returns `true` if the given Bool is `false` and returns `false` if `true` is provided.
When using the _not_ operator, one Bool should be placed after the operator (`!`).

```crystal
!true
# => false

!false
# => true
```

## Using parentheses(`()`)

When working with booleans, you can use parentheses to decide which Bools to evaluate first.
The result can differ depending on how the parentheses are used.
In Crystal, what is in parentheses is evaluated first.

```crystal
true && false && false || true
# => true

true && false && (false || true)
# => false
```

Since what is in parentheses is evaluated first, the _not_ operator will apply to the expression inside parentheses in the following example.

```crystal
!true && false
# => false

!(true && false)
# => true
```

~~~~exercism/note
You should only use parentheses when they affect the result; otherwise, they should be omitted.
~~~~

## Truthy and falsey

In Crystal, the "falsey" values are: `false`, `nil` and null pointers; **everything else** is "truthy".
These values can be used with the logical operators mentioned above.

```crystal

true && nil
# => false

false && 4
# => false

true || nil
# => true
```

## Method naming conventions with booleans

In Crystal, it is common to name a method that returns a truthy or falsey value with a question mark (`?`).
In most cases, this method will return a Bool value, but it doesn't have to.
This means that the method can be used in places where a truthy or falsy value is expected, for instance, as a condition for an `if` statement:

```crystal
def exchange(value)
    if value.nil?
        value = 5
    end
    value
end

exchange(10)
# => 10

exchange(nil)
# => 5
```

Methods with a question mark at the end of their name that don't return a Bool value, often return `nil` instead. `nil` is _similar to `None` or `null` from other languages_.

[bools]: https://crystal-lang.org/reference/latest/syntax_and_semantics/literals/bool.html
[and]: https://crystal-lang.org/reference/latest/syntax_and_semantics/and.html
[or]: https://crystal-lang.org/reference/latest/syntax_and_semantics/or.html
[truthy_and_falsey_values]: https://crystal-lang.org/reference/latest/syntax_and_semantics/truthy_and_falsey_values.html

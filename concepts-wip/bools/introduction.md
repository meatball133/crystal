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

[bools]: https://crystal-lang.org/reference/1.7/syntax_and_semantics/literals/bool.html

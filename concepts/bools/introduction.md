# Bools

Crystal has a type know as `Bool`, it is used to represent the values `true` and `false`.
With the bool class can you use logical operators(`!`, `||`, `&&`) be used, which can be used to combine bools and change their values.

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

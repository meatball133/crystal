# Numbers

Crystal has a type `Number` which is the base type for all numeric types.
Inside of the Number type there are two main types: `Int` and `Float`.
Int is short for integer and represents whole numbers.
Int can be both negative and positive, and doesnt have a decimal point.

```crystal
1.class
# => Int32

-1.class
# => Int32
```

Float represents numbers with a decimal point, floats can be both negative and positive.

```crystal
10.5.class
# => Float64

1.0.class
# => Float64
```

On numbers you can use the basic arithmetic operators: `+`, `-`, `*`, `/`, and `%`.

## Converting between Int and Float

You can convert between Int and Float using the `to_i` and `to_f` methods.
When converting from Float to Int the number is rounded down.

```crystal
1.to_f
# => 1.0

1.0.to_i
# => 1

1.9.to_i
# => 1
```

## Arithmetic operators

You can use the basic arithmetic operators on Int and Float.
The operators are `+`, `-`, `*`, `/`, and `%`.
You can mix and match Int and Float when using these operators.

### Addition & Subtraction

Addition and subtraction are used to add or subtract numbers.
The `+` operator is used for addition and the `-` operator is used for subtraction.
When having an operation with a float and an int the result will be a float.
The result will be an int if both numbers are ints.

```crystal
1 + 1
# => 2

1.0 + 1
# => 2.0

4.5 - 1.2
# => 3.3
```

### Multiplication & Division

Multiplication is used to multiply numbers.
The `*` operator is used for multiplication.
When having an operation with a float and an int the result will be a float.

```crystal
2 * 2
# => 4

2.0 * 2
# => 4.0
```

Division is used to divide numbers.
The `/` operator is used for division.
The result will always be a float.

```crystal
4 / 2
# => 2.0

4.0 / 2
# => 2.0
```

````exercism/caution
In some programming languages when dividing by zero the result will be an error.

In Crystal when dividing by zero the result will be `Infinity` or `-Infinity`.
Only exception is when dividing zero by zero, which will result in `NaN` (Not a Number).

```crystal
1 / 0
# => Infinity

-1 / 0
# => -Infinity

0 / 0
# => NaN
```
````

## Integer division

Integer division is used to divide numbers and get the whole part of the result.
Which will always be an integer, by rounding down the result.

```crystal
4 // 2
# => 2

4.0 // 2
# => 2

4.5 // 2
# => 2
```

### Modulus

Modulus is used to get the remainder of a division.
The `%` operator is used for modulus.

```crystal
5 % 2
# => 1

5.0 % 2
# => 1.0

5 % 3
# => 2
```

Another way to think about modulus:

```crystal
whole_part = (5/3).to_i
# => 1

decimal_part = 5/3 - whole_part
# => 0.6666666666666666

remainder = decimal_part * 3
# => 2.0
```

## Rounding

You can round a float to a certain number of decimal places using the `round` method.
The `round` method takes an optional argument which is the number of decimal places to round to.
The default number of decimal places is 0.

```crystal
1.0.round
# => 1

1.5.round
# => 2

1.5.round(1)
# => 1.5

1.234.round(2)
# => 1.23
```

### Rounding up and down

You can also round up or down using the `ceil` and `floor` methods.
The `ceil` method rounds up and the `floor` method rounds down.

```crystal
1.0.ceil
# => 1

1.2.ceil
# => 2

1.0.floor
# => 1

1.7.floor
# => 1
```

## Priority and parentheses

Crystal allows parentheses(`()`) which can be used to group expressions.
This is useful when you want to change the order of operations.

```crystal
2 + 3 * 4
# => 14

(2 + 3) * 4
# => 20
```

When using multiple arithmetic operators the order of operations is the same as in mathematics, also known as PEMDAS.
Which follows tha order of parentheses(`()`), exponents(`**`), multiplication(`*`) and division(`/`), and addition(`+`) and subtraction(`-`).

```crystal
2 + 3 - 4 * 4
# => -11

(2 + 3 - 4) * 4
# => 20
```

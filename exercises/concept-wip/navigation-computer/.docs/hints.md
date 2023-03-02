# Hints

## General

- Declaring a numeral with a specific type is done by appending the type to the numeral, e.g. `42u8` for an unsigned 8-bit integer.
- Converting between different types is done by calling the `to_<type>` method on the numeral, e.g. `42u8.to_u16` for an unsigned 16-bit integer.

## 1. Navigation constants

- Declaring a constant is done by writing capital letters and underscores, e.g. `NAVIGATION_CONST`.
- The constant should be declared inside the `navigation` class.
- The constant needs to be declared outside of any method.

## 2. Correct area analysis

- You need to convert the input to an unsigned integer.

## 3. Calculate the velocity

- To get velocity you need to divide the distance by the time.
- The result of an numeric operation will be of the highest precision type, so you need to convert the result to the correct type.

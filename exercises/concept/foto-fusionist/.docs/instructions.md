# Instructions

Your friend has gotten tired of paying for photo editing software and decided to write their own.
Your friend decided to call the new software for Foto Fusionist.

Foto Fusionist is a photo editing software that can do a lot of things, but you have only implemented a few of them so far.
However, your friend is very happy with the progress and has asked you to implement a few more features.

## 1. Convert binary representation to integer

For the first feature, your friend wants to be able to convert a binary representation of a number to an integer.
This is done because the software will be able to read the binary representation of a color channel and convert it to an integer.

Implement the method `FotoFusionist.binary_to_int` that takes an argument `binary` of type `String`.
The method should return the integer representation of the binary number.

```crystal
FotoFusionist.binary_to_int("10011")
# => 19
```

## 2. Get least significant bit from integer

The second feature your friend wants is to be able to get the [least significant bit][least-significant-bit] from an integer.
The least significant bit is the bit that is the furthest to the right.
It is called the least significant bit because it has the least value.

The least significant bit is needed to evaluate if an image can be optimized by reducing the number of bits used to represent the color channel.

Implement the method `FotoFusionist.least_significant_bit` that takes an argument `number` of type `Int32`.
The method should return the least significant bit of the number.

```crystal
FotoFusionist.least_significant_bit(0b10011)
# => 1

FotoFusionist.least_significant_bit(0b10010)
# => 0
```

## 3. Get hex value from color channel

The third feature your friend wants is to be able to get the hex value from a color channel.
The hex value is needed to be able to convert the color channel to a hex representation and the given hex representation needs to be made up of two digits.

Implement the method `FotoFusionist.hex_value` that takes an argument `number` of type `Int32`.
The method should return the hex value of the number as a `String`.

```crystal
FotoFusionist.hex_value(19)
# => "13"
```

## 4. Get hex value from RGB

The fourth feature your friend wants is to be able to get the hex value from a RGB color.
This is needed so a user can get a single string representation of a color.
An RGB color is a color that is represented by three color channels: red, green, and blue.
Each color channel is represented by a number between 0 and 255.

The hex value of a RGB color is a string representation of the color in hexadecimal with the red color channel first, then the green color channel, and lastly the blue color channel.

Implement the method `FotoFusionist.hex_value_from_rgb` that takes three arguments: `red`, `green`, and `blue` of type `Int32`.
The method should return the hex value of the RGB color as a `String`.

```crystal
FotoFusionist.hex_value_from_rgb(255, 0, 0)
# => "ff0000"
```

[least-significant-bit]: https://en.wikipedia.org/wiki/Least_significant_bit

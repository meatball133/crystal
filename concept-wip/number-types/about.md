# Number types

Crystal has a number of different number types.
There are different number types for different purposes.
For example some types are smaller and faster, but have a smaller range of possible values than other types.
And then there are some that are bigger and slower, but have a bigger range of possible values.

In crystal there are signed and unsigned integer types.
The signed integer types can be positive or negative.
The unsigned integer types can only be positive.

## Signed integers types

| Type     | Size (bits) | Range                                                                                                       |
| -------- | ----------- | ----------------------------------------------------------------------------------------------------------- |
| `Int8`   | 8           | -128 to 127                                                                                                 |
| `Int16`  | 16          | -32_768 to 32_767                                                                                           |
| `Int32`  | 32          | -2_147_483_648 to 2_147_483_647                                                                             |
| `Int64`  | 64          | -9_223_372_036_854_775_808 to 9_223_372_036_854_775_807                                                     |
| `Int128` | 128         | -170_141_183_460_469_231_731_687_303_715_884_105_728 to 170_141_183_460_469_231_731_687_303_715_884_105_727 |

The smaller types uses less memory and are faster than the bigger types but have a smaller range of possible values.
The bigger types uses more memory and are slower than the smaller types but have a bigger range of possible values.

There are situation where you know that values will be within a certain range, then you can use a smaller type to save memory and improve performance.

The default integer type is `Int32`.
To declare an integer with a specific type you can use the type name as a suffix.

```crystal
a = 1_i8.class
# => Int8

b = 2_i16.class
# => Int16

c = 3_i32.class
# => Int32

d = 3
# => Int32

d = 4_i64.class
# => Int64

e = 5_i128.class
# => Int128
```

## Unsigned integers types

| Type      | Size (bits) | Range                                                    |
| --------- | ----------- | -------------------------------------------------------- |
| `UInt8`   | 8           | 0 to 255                                                 |
| `UInt16`  | 16          | 0 to 65_535                                              |
| `UInt32`  | 32          | 0 to 4_294_967_295                                       |
| `UInt64`  | 64          | 0 to 18_446_744_073_709_551_615                          |
| `UInt128` | 128         | 0 to 340_282_366_920_938_463_463_374_607_431_768_211_455 |

The unsigned integer types can only be positive.
Otherwise are the unsigned integer types the same as the signed integer types.

The default unsigned integer type is `UInt32`.

```crystal
a = 1_u8.class
# => UInt8

b = 2_u16.class
# => UInt16

c = 3_u32.class
# => UInt32

d = 4_u64.class
# => UInt64

e = 5_u128.class
# => UInt128
```

```exercism/advanced
Under the hood what makes unsigned integers different from signed integers, is that for signed integers is the first bit used to store the sign.
The sign is either positive or negative.
For unsigned integers the first bit is used to store the value.
So for a signed 32 bit integer is the max value 2^31 - 1.
For an unsigned 32 bit integer is the max value 2^32 - 1.
```

## Floating point types

| Type      | Size (bits) | Range                |
| --------- | ----------- | -------------------- |
| `Float32` | 32          | 1.2E-38 to 3.4E+38   |
| `Float64` | 64          | 2.3E-308 to 1.7E+308 |

# 

## 1. Navigation constants

The navigation computer needs to know the distance between some objects in space to do the right calculations, the distance is measured in km.
Km stands for kilometer, which is a unit of length, there kilo means 1000 and meter is a unit of length.
The distance should be from earth.
The distance that needs to be stored are neptune, mars and the atmosphere.

Define the following constants:

  - `NEPTUNE_DISTANCE` with the value `4 400 000 000` which should be stored as a `int64`
  - `MARS_DISTANCE` with the value `227_940_000` which should be stored as a `int32`
  - `ATMOSPHERE_DISTANCE` with the value `10_000` which should be stored as a `int16`

## 2. Correct area analysis

The navigation computer needs to know the area of some objects in space to do the right calculations.
An area can **NOT** be negative.
The engineers had the plan that the program would generate an owerflow error when the area is negative.
But the engineers forgot to change the signed integer to an unsigned integer.

Thereby the engineers would like a program that converts the signed integer to an unsigned integer.

Implement the `correct_area_analysis` method that takes a `measurement` as an argument and returns the area as an unsigned integer.

```crystal
measurement = 52554
measurement.class
# => Int32

correct_area_analysis(measurement).class
# => UInt32
```

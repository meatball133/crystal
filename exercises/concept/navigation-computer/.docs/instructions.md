# Instructions

The ESA (Exercism Space Agency) is at full speed in planning a new mission to [Phobos][phobos], a moon of Mars.
The mission's goal is to land a probe on the surface of Phobos and to send back data about the surface.
ESA has requested your help to build the navigation computer for the probe.
The navigation computer has limited memory so we need to keep the memory usage as low as possible.
Thereby we need to use the right data types.

## 1. Navigation constants

The navigation computer needs to know the distance between some objects in space to do the right calculations, the distance is measured in km.

Define the following constants:

- `NEPTUNE_DISTANCE` with the value `4_400_000_000` which should be stored as a `Int64`
- `MARS_DISTANCE` with the value `227_940_000` which should be stored as a `Int32`
- `ATMOSPHERE_DISTANCE` with the value `10_000` which should be stored as a `Int16`

## 2. Correct area analysis

The navigation computer needs to know the area of some objects in space to do the right calculations.
An area can **NOT** be negative.
The engineers had the plan that the program would generate an overflow error when the area is negative.
But the engineers forgot to change the signed integer to an unsigned integer.

Thereby the engineers would like a program that converts the signed integer to an unsigned integer.

Implement the `Navigation#correct_area_analysis` method that takes a `measurement` as an argument and returns the area as an unsigned integer with 32 bits.

```crystal
measurement = 52554
measurement.class
# => Int32

Navigation.new.correct_area_analysis(measurement)
# => 52554

Navigation.new.correct_area_analysis(measurement).class
# => UInt32
```

## 3. Calculate the velocity

The navigation computer needs to know the velocity of the probe.
The velocity is measured in m/s.

To get the velocity we need to know the distance and the time it took to travel that distance.
Then take the distance and divide it by the time.

The velocity doesn't have to be super accurate and will never be a big number, therefore we can use a `Float32`.

Implement the `Navigation#calculate_velocity` method that takes `distance` and `time` as arguments and returns the velocity as a `Float` with 32 bits.

```crystal
distance = 52554
time = 2.5

Navigation.new.calculate_velocity(distance, time)
# => 21021.6

Navigation.new.calculate_velocity(distance, time).class
# => Float32
```

[phobos]: https://en.wikipedia.org/wiki/Phobos_(moon)

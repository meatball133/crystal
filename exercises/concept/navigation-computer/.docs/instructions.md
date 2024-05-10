# Instructions

The ESA (Exercism Space Agency) is at full speed in planning a new mission to [Phobos][phobos], a moon of Mars.
The mission's goal is to land a probe on Phobos's surface and send back data about the surface.
ESA has requested your help in building the navigation computer for the probe.
The navigation computer has limited memory, so we need to keep the memory usage as low as possible.
Therefore, we need to use the suitable data types.

## 1. Navigation constants

The navigation computer needs to know the distance between some objects in space to do the correct calculations, the distance is measured in km.

Define the following constants:

- `NEPTUNE_DISTANCE` with the value `4_400_000_000` which should be stored as a `Int64`
- `MARS_DISTANCE` with the value `227_940_000` which should be stored as a `Int32`
- `ATMOSPHERE_DISTANCE` with the value `10_000` which should be stored as a `Int16`

## 2. Correct area analysis

The navigation computer needs to know the area of some objects in space to do the correct calculations.
An area can **NOT** be negative.
The engineers planned the program to generate an overflow error when the area was negative.
However, the engineers forgot to change the signed integer to an unsigned integer.

Therefore, engineers would like a program that converts a signed integer to an unsigned integer.

Implement the `Navigation#correct_area_analysis` method that takes a `measurement` as an argument and returns the area as an unsigned integer with 32 bits.

~~~~exercism/note
The given area will always fit as an unsigned integer with 32 bits.
~~~~

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

To calculate velocity, we need to know the distance traveled and the time it took to travel that distance.
Then, take the distance and divide it by the time.

The velocity can be something other than accurate and will never be a considerable number.
Therefore, we can use a `Float32`.

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

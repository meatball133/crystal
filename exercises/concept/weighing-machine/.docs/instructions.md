# Instructions

In this exercise you'll be modelling a weighing machine with Kilograms as a Unit.

## 1. Allow the weighing machine to have a precision

To cater to different demands, we allow each weighing machine to be customized with a precision (the number of digits after the decimal separator).

Implement the `WeighingMachine#precision` getter method to return the precision of the weighing machine.

```crystal
precision = 3
vm = WeighingMachine.new(precision)
vm.precision
# => 3
```

## 2. Allow the machine to be switch between metric and imperial units

Implement the `WeighingMachine#metric=` property to allow the unit to be set, it should accept a boolean value.

```crystal
precision = 3
wm = WeighingMachine.new(3)
wm.metric = false
```

## 3. Allow the weight to be set on the weighing machine

Implement the `WeighingMachine#weight` property to allow the weight to be get _and_ set:

```crystal
precision = 3
wm = WeighingMachine.new(3)
wm.weight = 60.5
wm.weight
# => 60.5
```

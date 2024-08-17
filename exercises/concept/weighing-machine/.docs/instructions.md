# Instructions

In this exercise you'll be modeling a weighing machine.

## 1. Create an initial state for the weighing machine

When initialized, the weighing machine should refer to its factory settings which is different for where the machine is sold.
Thereby the machine should be able to be initialized with a precision and if it is metric or imperial.

Implement the `WeighingMachine#initialize` method which takes two arguments, `precision` which is an `Int32` and `metric` which is a `Bool`.
The `metric` argument when `true` means that the machine should use the metric system, otherwise it should use the imperial system.
The initialize method set should also set the instance variable `@weight` to `0.0`.

```crystal
precision = 3
metric = true
vm = WeighingMachine.new(precision, metric)
```

## 2. Allow the weighing machine to have a precision

To cater to different demands, we allow each weighing machine to be customized with a precision (the number of digits after the decimal separator).

Implement the `WeighingMachine#precision` getter method to return the precision of the weighing machine.

```crystal
precision = 3
metric = true
vm = WeighingMachine.new(precision, metric)
vm.precision
# => 3
```

## 3. Allow the weight to be set on the weighing machine

Implement the `WeighingMachine#weight` property to allow the weight to be get _and_ set:

```crystal
precision = 3
metric = true
wm = WeighingMachine.new(precision, metric)
wm.weight = 60.5
wm.weight
# => 60.5

wm.weigh
# => 60.5
```

## 4. Allow the machine to be switch between metric and imperial units

Implement the `WeighingMachine#metric=` property to allow the unit to be set.
It should accept a boolean value.

```crystal
precision = 3
metric = true
wm = WeighingMachine.new(precision, metric)
vm.weight = 60.5
wm.metric = false

vm.weigh
# => 133.377
```

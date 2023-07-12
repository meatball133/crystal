# Hints

## General

- Don't worry about which running state the machine is in, e.g the machine wont be running when you plug it in.

## 1. Debug light

- You need to define a class with the name `JuiceMaker`.
- You need to define a [class method][class-methods] that returns `true`.

## 2. Initialize the machine

- Create a [constructor][new-initialize] for the class `JuiceMaker`.
- Create an [instance variable][instance-variable] `@running` that is set to `false`.
- Create an [instance variable][instance-variable] `@amount_of_juice_in_cup` that is set to the amount of the argument passed to the constructor.

## 3. Turn on the machine

- Define an instance method called `turn_on`.
- Set the [instance variable][instance-variable] `@running` to `true`.

## 4. Status of the machine

- Define an instance method called `status`.
- Return the [instance variable][instance-variable] `@running`.

## 5. Add juice

- Define an instance method called `add_juice`, that takes an integer as an argument.
- Set the [instance variable][instance-variable] `@amount_of_juice_in_cup` to the sum of the current value of `@amount_of_juice_in_cup` and the argument passed to the method.

## 6. Turn off the machine

- Define an instance method called `turn_off`, that takes an integer as an argument.
- Set the [instance variable][instance-variable] `@running` to `false`.
- Set the [instance variable][instance-variable] `@amount_of_juice_in_cup` to the current value of `@amount_of_juice_in_cup` minus the argument passed to the method times 5.

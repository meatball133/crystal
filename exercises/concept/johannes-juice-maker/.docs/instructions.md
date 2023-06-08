# Instructions

Your friend Johannes loves doing DIY (do it yourself) hardware.
They just built a juice-maker, Johannes is very excited about it.
Johannes's goal is to be able to make fresh juice every morning.

Johannes Juice maker has a lot of fancy features.
Like a built-in measurement system, which can tell you how much juice is in the cup.
It also has a timer, which can tell you how long the machine has been running.

Johannes isn't the best at programming, but they want to make a program to control the machine.
They have thereby asked you to help them.

## 1. Debug light

The machine has a debug light, it is a simple mechanic, if the machine has power the debug light is on.
The program will only run if the debug light is on.

This method should be a class method of a class called `JuiceMaker`.

Define the class method `JuiceMaker.debug_light_on?` that returns `true`.

```crystal
JuiceMaker.debug_light_on?
#=> true
```

## 2. Initialize the machine

When the machine is powered on it should create an instance of a class called `JuiceMaker`.
The machine is supposed to have an initialized state.
The initialized state should hold the following information:

1. If the machine is running or not. This should always be `false` when the machine is turned on.
2. The amount of juice in the cup, this will be a sensor that will measure the amount of juice in the cup.

Define the initialized state, which takes the amount of juice in the cup as a parameter, and construct the initialized state.
The initialized state should host an instance variable `@running` that is set to `false`, and an instance variable `@amount_of_juice_in_cup` that is based on an argument given when the class is initialized.

```crystal
JuiceMaker.new(5)
#=> #<JuiceMaker:0x10f0b8 @running=false, @amount_of_juice_in_cup=5>
```

## 3. Turn on the machine

The machine can be turned on and off.
You need to define a method to turn on the machine.
When the machine is turned on, the running state should be set to `true`.

Define the method `JuiceMaker#turn_on` that turns the machine on.

```crystal
juice_maker = JuiceMaker.new(5)
juice_maker.turn_on

juice_maker
#=> #<JuiceMaker:0x10f0b8 @running=true, @amount_of_juice_in_cup=5>
```

## 4. Status of the machine

The machine needs to be able to tell you the status of the machine.
It should return `true` if the machine is running, and `false` if the machine is not running.

Define the method `JuiceMaker#running?` that returns the status of the machine.

```crystal
juice_maker = JuiceMaker.new(5)
juice_maker.turn_on

juice_maker.running?
#=> true
```

## 5. Add juice

The machine can add juice to the cup.
The machine can tell how much juice is added to the cup.
The machine needs help to know how much juice is in the cup after the juice is added.

Define the method `JuiceMaker#add_fluid` that takes the amount of juice added as a parameter, and updates the amount of juice in the cup.

```crystal
juice_maker = JuiceMaker.new(5)
juice_maker.add_juice(5)

juice_maker
#=> #<JuiceMaker:0x10f0b8 @running=false, @amount_of_juice_in_cup=10>
```

## 6. Turn off the machine

The machine can be turned on and off.
You need to define a method to turn off the machine
This method will only be called when the machine is running.
When the machine is turned off, the running state should be set to `false`.
The machine also needs help to know how much juice is in the cup after the machine is turned off.
The machine uses 5 units of juice per minute.

Define the method `JuiceMaker#turn_off` that takes the number of minutes the machine has been running as a parameter and returns the amount of juice in the cup after the machine has been turned off.

```crystal
juice_maker = JuiceMaker.new(5)

juice_maker.turn_on
juice_maker
#=> <JuiceMaker:0x10f0b8 @running=true, @amount_of_juice_in_cup=5>

juice_maker.turn_off(1)
#=> #<JuiceMaker:0x10f0b8 @running=false, @amount_of_juice_in_cup=0>
```

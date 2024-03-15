# Instructions

In this exercise, you'll write code to help you cook a brilliant lasagna from your favorite cookbook.

You have four tasks, all related to the time spent cooking the lasagna.

## 1. Define the expected oven time in minutes

Define the `EXPECTED_MINUTES_IN_OVEN` constant in the `Lasagna` class, that stores how many minutes the lasagna should be in the oven.
According to the cooking book, the expected oven time in minutes is 40:

```Crystal
Lasagna::EXPECTED_MINUTES_IN_OVEN
# => 40
```

## 2. Calculate the remaining oven time in minutes

Define the `Lasagna#remaining_minutes_in_oven` method that takes the actual minutes the lasagna has been in the oven as a parameter and returns how many minutes the lasagna still has to remain in the oven, based on the expected oven time in minutes from the previous task.

```Crystal
Lasagna.new.remaining_minutes_in_oven(30)
# => 10
```

## 3. Calculate the preparation time in minutes

Define the `Lasagna#preparation_time_in_minutes` method, which takes the number of layers you added to the lasagna as a parameter and returns the number of minutes you spent preparing it, assuming each layer takes 2 minutes to prepare.

```Crystal
Lasagna.new.preparation_time_in_minutes(2)
# => 4
```

## 4. Calculate the total working time in minutes

Define the `Lasagna#total_time_in_minutes` method that takes two named parameters: the `number_of_layers` parameter is the number of layers you added to the lasagna, and the `actual_minutes_in_oven` parameter is the number of minutes the lasagna has been in the oven.
The method should return the total number of minutes you've worked on cooking the lasagna, which is the sum of the preparation time in minutes and the time the lasagna has spent in the oven at the moment.

```Crystal
number_of_layers = 3
actual_minutes_in_oven = 20
Lasagna.new.total_time_in_minutes(number_of_layers, actual_minutes_in_oven)
# => 26
```

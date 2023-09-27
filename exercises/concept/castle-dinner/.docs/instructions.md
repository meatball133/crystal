# Instructions

Your majesty is hosting a dinner party in the [Kalmar Unions][kalmar_union] capital Copenhagen.
It is the biggest party of the year and all the nobles are invited.
But rumors are spreading across the country that there is a plot to poison your majesty.

Her majesty has asked you, the royal poison finder, to find out if any of the food or drinks are poisoned.
Your majesty is planning to serve only **Mushroom pasties** as food, but for drinks, there are a variety of drinks.

## 1. Check if the food is correct

There is a high chance that the food is poisoned if it is not the food that her majesty ordered.
If the food is not the food that her majesty ordered, then it should be tossed out.

Implement the `check_food?` method, which takes the argument `food` which holds the name of the food as a `String`.
The method should return the food if the food is `"Mushroom pasties"`, otherwise it should return `nil`.

```crystal
CastleDinner.check_food?("Mushroom pasties")
# => "Mushroom pasties"

CastleDinner.check_food?("Bread")
# => nil
```

## 2. Check if the drink is poisoned

There is a possibility that the drink is poisoned, but it is a bit more difficult to tell if the drink is poisoned.
The drink is poisoned if it does **not** include the letter `i` in the name, the casing doesn't matter.
The drink should be tossed out if it is poisoned.

Implement the `check_drink?` method, which takes the argument `drink` which holds the drink's name as a `String`.
The method should return the drink if it is not poisoned, otherwise it should return `nil`.

```crystal
CastleDinner.check_drink?("Apple juice")
# => "Apple juice"

CastleDinner.check_drink?("Tea")
# => nil
```

## 3. Replace the drink

Your majesty wouldn't want to make their guests worried about poison in their food.
Thereby if the drink is poisoned, it should be replaced with a new drink, specifically **Apple juice**.

Implement the `replace_drink` method, which takes the argument `drink` which holds the name of the drink as a `String`.
The method should return the drink if it is not poisoned, otherwise it should return `"Apple juice"`.

```crystal
CastleDinner.replace_drink("Orange juice")
# => "Orange juice"

CastleDinner.replace_drink("Tea")
# => "Apple juice"
```

[kalmar_union]: https://en.wikipedia.org/wiki/Kalmar_Union

# Instructions

You are in process of developing the new highly appreciated game **Crystal Hunter**.
In the game you are a character which moves around and collects crystals, when the player has picked up all crystals they win.
Although if the player come in contact with a bandit so will the player lose all crystals and lose.
There is an expectation to this rule and that is when the player has an active power up, which will make the player invisible for the bandits.

Your goal is to write some rules that will be used in the game.

## 1. Define if character gets bonus points

In the game will the character get bonus points if they touch a bandit while having a power up.

Define the `bonus_points?` method that takes two arguments (_if the character has an active power up_ and _if the character is touching a bandit_) and returns a boolean value if the Character will get bonus points. The method should return true only if the character has a power up active and is touching a bandit.

```Crystal
bonus_points?(false, true)
# => false
```

## 2. Define if character scores

In the game will the character gets points when taking up a crystal or picking up a power up.

Define the `score?` method that takes two arguments (_if the character is touching a power up_ and _if the character is touching a crystal_) and returns a boolean value if the character scored. The method should return true if the character is touching a power up or a crystal.

```crystal
Rules.score?(true, true)
# => true
```

## 3. Define if character loses

Define the `lose?` method that takes two arguments (_if the character has a power up active_ and _if the character is touching a bandit_) and returns a boolean value if the character loses. The method should return true the character is touching a bandit and does not have a power up active.

```crystal
Rules.lose?(false, true)
# => true
```

## 4. Define if character wins

Define the `win?` method that takes three arguments (_if the character has eaten all of the crystals_, _if the character has a power up active_, and _if the character is touching a bandit_) and returns a boolean value if the character wins. The method should return true if the character has gathered all crystals and has not lost based on the arguments defined in part 3.

```crystal
win?(false, true, false)
# => false
```

# Instructions

Once there was an eccentric programmer living in a strange house with barred windows.
One day he accepted a job from an online job board to build a party robot. The
robot is supposed to greet people and help them to their seats. The first edition
was very technical and showed the programmer's lack of human interaction. Some of
which also made it into the next edition.

## 1. Welcome a new guest to the party

Implement the `welcome` method to return a welcome message using the given name:

```crystal
PartyRobot.welcome("Christiane")
# => Welcome to my party, Christiane!
```

## 2. Welcome a new guest to the party whose birthday is today

Implement the `happy_birthday` method to return a birthday message using the given name and age of the person.
Unfortunately the programmer is a bit of a show-off, so the robot has to demonstrate its knowledge of every guest's birthday.

```crystal
PartyRobot.happy_birthday("Frank", 58)
# => Happy birthday Frank! You are now 58 years old!
```

## 3. Give directions

Implement the `assign_table` function to give directions.
It should accept 5 parameters.

- The name of the new guest to greet (`String`)
- The table number (`Int`)
- The name of the seatmate (`String`)
- The direction where to find the table (`String`)
- The distance to the table (`Float64`)

The exact result format can be seen in the example below.

The seatmate's should be shorted to the first and last letter of the name.
Frank becomes Fk, Christian becomes Cn, and so on.

The robot provides the table number.
The robot also mentions the distance of the table.
Fortunately only with a precision that's limited to 1 digit.

```crystal
PartyRobot.assign_table("Christiane", "on the left", 27, 23.7834298, "Frank")
# =>
# Welcome to my party, Christiane!
# You have been assigned to table 027. Your table is on the left, exactly 23.8 meters from here.
# You will be sitting next to Fk.
```

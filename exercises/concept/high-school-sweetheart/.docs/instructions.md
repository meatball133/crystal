# Instructions

In this exercise, you are going to help high school sweethearts profess their love on social media by generating an ASCII heart with their initial:

```
❤ J.  +  M. ❤
```

## 1. Clean up the name

Implement the `HighSchoolSweetheart.clean_up_name` method.
It should take a name and remove all `-` characters from it and replace them with a space.
It should also remove any whitespace from the beginning and end of the name.

```crystal
HighSchoolSweetheart.clean_up_name("Jane-Ann")
# => "Jane Ann"
```

## 2. Get the name's first letter

Implement the `HighSchoolSweetheart.first_letter` method.
It should take a name and return its first letter.
Make sure to reuse `HighSchoolSweetheart.clean_up_name` that you defined in the previous step.

```crystal
HighSchoolSweetheart.first_letter("Jane")
# => "J"
```

## 3. Format the first letter as an initial

Implement the `HighSchoolSweetheart.initial` method.
It should take a name and return its first letter, uppercase, followed by a dot.
Make sure to reuse `HighSchoolSweetheart.first_letter` that you defined in the previous step.

```crystal
HighSchoolSweetheart.initial("Robert")
# => "R."
```

## 4. Put the initials inside of the heart

Implement the `HighSchoolSweetheart.pair` method.
It should take two names and return the initials with emoji hearts around.
Make sure to reuse `HighSchoolSweetheart.initial` that you defined in the previous step.

```crystal
HighSchoolSweetheart.pair("Blake Miller", "Riley Lewis")
# => "❤ B.  +  R. ❤"
```

# Strings

Crystal has a type know as `String` which is used to represent text.
In Crystal is a String a sequence of unicode characters.
Strings are immutable, meaning they cannot be changed once created.
Which means that every time you do a modification on a string a new string is created, thereby the original string is not modified.

To define a string you can use double quotes `"`.

```crystal
"Hello World"
```

## Concatenation

To concatenate two strings you can use the `+` operator.
The `+` operator will return a new string that is the combination of the two strings given.

```crystal
"Hello" + " " + "World"
# => "Hello World"
```
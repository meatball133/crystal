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
hello = "Hello"
hello + " World"
# => "Hello World"
```

When wanting to concat a string with a non-string type so can you use the method `to_s` to convert the type to a string.

```crystal
"Hello " + 1.to_s
# => "Hello 1"
```

## Interpolation

Interpolation is a convenient way to combine strings and embed expressions in strings.
To interpolate a string you can use the `#` character followed curly braces `{}` with the expression inside the braces.

```crystal
name = "World"
"Hello #{name}!"
# => "Hello World!"
```

Crystal will automatically convert the result of the expression to a string.

```crystal
"Hello #{1 + 1}!"
# => "Hello 2!"
```

## Escaping

Some characters can't be written in a string directly, instead you have to use an escape sequence.
For example if you want to use double quotes in a string, then you have to escape the double quotes.
To write an escape sequence you can use the `\` character followed by the character you want to escape.

These are the special characters in Crystal:

| Value    | Description                   |
| -------- | ----------------------------- |
| `\a`     | Alert                         |
| `\b`     | Backspace                     |
| `\e`     | Escape                        |
| `\f`     | Form feed                     |
| `\n`     | Line feed or newline          |
| `\r`     | Carriage return               |
| `\t`     | Horizontal tab                |
| `\v`     | Vertical tab                  |
| `\\`     | Backslash                     |
| `\'`     | Single quote                  |
| `\"`     | Double quote                  |
| `\377`   | Octal ASCII character         |
| `\xFF`   | Hexadecimal ASCII character   |
| `\uFFFF` | Hexadecimal unicode character |

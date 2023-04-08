# Debug

When a test fails, a message is displayed describing what went wrong and for which input. You can also use the fact that console output will be shown too. You can write to the console output using:

```crystal
puts "Debug message"
```

or

```crystal
p "Debug message"
```

`puts` will convert the value to a string and print it to the console output.
`p` will print the value to the console output without converting it to a string.

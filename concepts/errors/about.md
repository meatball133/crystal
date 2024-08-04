# Exception

In the ideal world, everything works perfectly.
But in the real world, things can go wrong and it matters how we handle these situations to ensure that our software is robust and reliable.
Exceptions is a crucial concept in programming that allows us to handle errors and unexpected situations gracefully.

Raising error if not handle halts the program, and throws an error message.
This is a good practice as it helps in debugging and understanding the problem.

In most cases you don't want your program to crash when an error occurs, instead you want to handle the error and continue running the program.

## Raising an exception

In Crystal, exceptions are raised using the `raise` keyword and can either be given a `String` or an `Exception` object.
If unhandled, the program will halt and print the error message.

```crystal
raise "This is an error"
```

There are several built-in exceptions in Crystal, like `ArgumentError`, `IndexError`, `KeyError`, `IOError`, `SystemCallError`, `TypeError`, `ZeroDivisionError` and many more, these require you to pass a message to the exception.

```crystal
raise ArgumentError.new("This is an argument error")
```

## Handle exceptions

We wouldn't that our program crashes when an exception is raised.

Thereby when we know that a piece of code is risky, we can wrap it in a `begin` block and rescue the exception with a `rescue` block.
The `begin` block marks the beginning of the code that might raise an exception and the `rescue` block is where the exception is handled.

```crystal
begin
  raise "This is an error"
rescue
  puts "An error occurred!"
end
```

The `rescue` block can also be specified with a variable to get the exception object.

```crystal
begin
  raise "This is an error"
rescue ex
  puts "An error occurred: #{ex.message}"
end
```

The `rescue` block can also be specified with a specific exception type to only catch that exception.

```crystal
begin
  raise ArgumentError.new("This is an argument error")
rescue ArgumentError
  puts "An argument error occurred!"
end

# or

begin
  raise ArgumentError.new("This is an argument error")
rescue ex : ArgumentError
  puts "An argument error occurred: #{ex.message}"
end
```

multiple rescue

else

ensure


## Method convention

If you have checked certain methods have two versions, one which have `!` and other which doesn't.
This can mean two different things.
One is that the method mutates the object and the other is that the method can raise an exception.

But there is also another convention around ending a method with `?` which was mentioned in the previous concept.
Some methods raises an exception by default but also have a version ending with `?` which returns `nil` instead of raising an exception.

This can be ideal in some situiations where you want to handle the exception yourself.
This can have preformance benefits since it donesnt have to create a stack trace.

## Custom exceptions

You can also create your own exceptions by inheriting from the [`Exception`][exception] class.
There you can optionally override the `initialize` method to set the message of the exception.

```crystal
class MyException < Exception
  def initialize
    "This is my exception"
  end
end

raise MyException.new
```

[expection-handeling]: https://crystal-lang.org/reference/syntax_and_semantics/exception_handling.html
[exception]: https://crystal-lang.org/api/Exception.html

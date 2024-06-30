# Exception

In the ideal world, everything works perfectly.
But in the real world, things can go wrong and it matters how we handle these situations to ensure that our software is robust and reliable.
Exceptions is a crucial concept in programming that allows us to handle errors and unexpected situations gracefully.

Raising error if not handle halts the program, and throws an error message.
This is a good practice as it helps in debugging and understanding the problem.

In most cases you don't want your program to crash when an error occurs, instead you want to handle the error and continue running the program.

In Crystal, exceptions are raised using the `raise` keyword and can either be given a `String` or an `Exception` object.

```crystal
raise "This is an error"
```

## Raising an exception

## Handle exceptions



## Method convention

If you have checked certain methods have two versions, one which have `!` and other which doesn't.
This can mean two different things.
One is that the method mutates the object and the other is that the method can raise an exception.

But there is also another convention around ending a method with `?` which was mentioned in the previous concept.
Some methods raises an exception by default but also have a version ending with `?` which returns `nil` instead of raising an exception.

This can be ideal in some situiations where you want to handle the exception yourself.
This can have preformance benefits since it donesnt have to create a stack trace.

## Custom exceptions

You can also create your own exceptions by inheriting from the `Exception` class.
There you can optionally override the `initialize` method to set the message of the exception.

```crystal
class MyException < Exception
  def initialize
    "This is my exception"
  end
end

raise MyException.new
```

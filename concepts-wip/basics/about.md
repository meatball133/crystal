# Basics

Crystal is a compiled, object-oriented programming language.
These are some of the language's goals:

- Ruby-inspired syntax.

- Statically type-checked but without having to specify the type of variables or method arguments.

- Be able to call C code by writing bindings to it in Crystal.

- Have compile-time evaluation and generation of code, to avoid boilerplate code.

- Compile to efficient native code.

In 2011 did the work on crystal start with the goal of creating a language with the elegance and productivity of Ruby, but with the performance and type safety of a compiled language.
Originally, the language compiler was written in Ruby, but in 2013, the compiler was rewritten in Crystal itself.
The language was developed and designed by Ary Borenszweig, Juan Wajnerman, Brian Cardif.

## Getting Started

Crystal is a compiled language, thereby will every variable or method argument be assigned a type in compile time.
The compiler is capable of inferring the type of a variable or method argument.
Although some cases it is necessary to specify the type.
The cases that requires a type to be set will be explained in later concepts.

### Variables

To declare a [variable][variables], you must use the `=` assignment operator.
In crystal should variables be written in [snake_case][snake-case].

A variable can be declared and then redefine later.

```crystal
number = 1
p number # => 1

number = 2
p number # => 2
```

### Constants

[Constants][constants] are declared using the same `=` assignment operator, but uses all uppercase letters or also known as SCREAMING_SNAKE_CASE.
The difference between constants and variables is that constants can't be redefined.

```crystal
NUMBER = 1
p NUMBER # => 1
```

Assigning a value to a constant that is already defined will result in a compile-time error.

```crystal
NUMBER = 1

NUMBER = 2
```

```console
In test.cr:3:1

 3 | NUMBER = 2
     ^
Error: already initialized constant NUMBER
```

### Types

Crystal has a [type inference system][type], so you don't have to specify the type of a variable or method argument.
The compiler will try to "guess" or infer the type of the variable or method argument.
To see the type of a variable or method argument, you can use the `class` method.
In this case the type of the variable `number` is `Int32`, Int is short for integer.

```crystal
number = 1
p number.class # => Int32
```

Using a method that doesn't exist on the type of the variable or method argument will result in a compile-time error.

```crystal
number = 1
number + "1"
```

```console
In test.cr:2:7

 2 | number + "1"
           ^
Error: no overload matches 'Int32#+' with type String
```

### Methods

[Methods][methods] are a way to group together a set of instructions that can be reused.
In crystal are methods often defined in a class, module or struct.
But methods can also be defined outside of a class, module or struct.
Methods are declared using the `def` keyword, followed by the name of the method.
In crystal should methods be written in snake_case.
When a method doesnt have any arguments, you can omit the parentheses.
To declare the end of a method, you must use the `end` keyword.

```crystal
def hello
  puts "Hello World!"
end
```

### Arguments

Methods can have [arguments][arguments].
Arguments are data that is passed to a method.
To be able to give a method arguments, you must specify the name of the argument.
In crystal should arguments be written in snake_case.
A method can have multiple arguments, but the arguments must be separated by a comma.

```crystal
def hello(name)
  puts "Hello #{name}!"
end
```

In crystal it is possible to give a method argument a [default value][default_arguments].
When a method argument has a default value, it is not required to pass that argument when calling the method.

```crystal
def hello(name = "World")
  "Hello #{name}!"
end
```

Methods can also have multiple arguments.
In this case, the arguments must be separated by a comma.

```crystal
def hello(name, language)
  puts "Hello #{name}! You are learning #{language}."
end
```

### Calling Methods

When calling a method that belongs to a class, module or struct, you must use the dot operator(`.`).
Like following: `<ClassName>.<method_name>`.
When the method doesnt belong to a class, module or struct, then you can simple call it by writing its name.

To call a method that has arguments, you simply write those arguments after the method call
When a method has arguments you may use brackets where the assignment of arguments, like following: `<method_name>(<argument_1>, <argument_2>)`.
Although when not giving any arguments so should brackets be omitted.

```crystal
def hello(name = "World")
  "Hello #{name}!"
end

hello
# => Hello World!

hello("Crystal")
# => Hello Crystal!
```

When calling a method with multiple arguments, so should arguments separated by a comma.
The arguments must be given in the same order as the method arguments.

```crystal
def hello_language(name, language)
  puts "Hello #{name}! You are learning #{language}."
end

hello_language("Crystal", "Programming Language")
# => Hello Crystal! You are learning Programming Language.
```

Calling a method with the wrong number of arguments will result in a compile-time error.

```crystal
hello_language("Crystal")
```

```console
In test.cr:1:1

 1 | hello_language("Crystal")
     ^----
Error: wrong number of arguments for 'hello_language' (given 1, expected 2)
```

To be able to call a method that is located in a class or module outside of that class, so must you use `self` before the method name.
What `self` does is that it refers to the class or module that the code is placed within.
In the example below the self refers to the `Hello` class.
Meaning that instead of writing `self.hello` so would it be possible to write it as: `Hello.hello`.
But for the sake of readability, it is recommended to use `self`.

To call you do it with the following notation `<class_name>.<method_name>(<argument>)`, in this case that would be `Hello.hello(<argument>)`.

```crystal
class Hello
  def self.hello(name)
    "Hello #{name}!"
  end
end

Hello.hello("Crystal")
# => Hello Crystal!
```

### Return

In crystal so will a method return the last line of code.
This means that generally it is recommended to not use the [`return`][return] keyword.
But there are cases where you must use the `return` keyword.
Like when you want to return early from a method.

```crystal
def hello
  return "Hello World!"
  # This line will never be executed
  "Hello Crystal!"
end

hello
# => Hello World!
```

When not giving `return` a value then it will return nil.

```crystal
def hello
  return
end

hello
# => nil
```

### Comments

In crystal so are [comments][comments] written with the `#` character, followed by a space and then the comment.
Comments are used to document code.
Comments are not executed by the compiler.

```crystal
# This is a comment
```

[arguments]: https://crystal-lang.org/reference/1.7/tutorials/basics/60_methods.html#arguments
[assignement]: https://crystal-lang.org/reference/1.7/syntax_and_semantics/assignment.html#assignment
[comments]: https://crystal-lang.org/reference/1.7/syntax_and_semantics/comments.html
[constants]: https://crystal-lang.org/reference/1.7/syntax_and_semantics/constants.html
[default_arguments]: https://crystal-lang.org/reference/1.7/tutorials/basics/60_methods.html#default-arguments
[methods]: https://crystal-lang.org/reference/1.7/tutorials/basics/60_methods.html#methods
[return]: https://crystal-lang.org/reference/1.7/tutorials/basics/60_methods.html#returning-a-value
[snake-case]: https://en.wikipedia.org/wiki/Snake_case
[type]: https://crystal-lang.org/reference/1.7/tutorials/basics/20_variables.html#type
[variables]: https://crystal-lang.org/reference/1.7/tutorials/basics/20_variables.html

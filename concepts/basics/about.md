# Basics

Crystal is a compiled, object-oriented programming language.
These are some of the language's goals:

- Ruby-inspired syntax.

- Statically type-checked but without having to specify the type of variables or method arguments.

- Be able to call C code by writing bindings to it in Crystal.

- Have compile-time evaluation and generation of code, to avoid boilerplate code.

- Compile to efficient native code.

The work on Crystal started in 2011 with the goal of creating a language with the elegance and productivity of Ruby but with the performance and type safety of a compiled language.
The language compiler was initially written in Ruby, but it was rewritten in Crystal in 2013.
Ary Borenszweig, Juan Wajnerman, and Brian Cardiff developed and designed the language.

## Getting Started

### Variables

To declare a [variable][variables], use the `=` assignment operator.
In Crystal, variables should use [snake_case][snake-case] format.

```crystal
number = 1
puts number # => 1

number = 2
puts number # => 2
```

### Constants

[Constants][constants] are declared using the same `=` assignment operator but use all uppercase letters known as SCREAMING_SNAKE_CASE.

```crystal
NUMBER = 1
puts NUMBER # => 1
```

Assigning a value to an already defined constant will result in a compile-time error.

```crystal
NUMBER = 1

NUMBER = 2
# Error: already initialized constant NUMBER
```

### Types

Crystal is a compiled language, meaing every variable or method argument is assigned a type at compile time.
The compiler is capable of inferring the type of a variable or method argument.
However, in some cases, it is necessary to specify the type.
The cases that require a type to be set will be explained in later concepts.

### Methods

[Methods][methods] are a way to group a set of instructions that can be reused.
In Crystal, methods are often defined in a class, module, or struct.
However, methods can also be defined outside of a class, module, or structure.
Methods are declared using the `def` keyword, followed by the method's name.
In Crystal, methods should be written in snake_case.
You can omit the parentheses when a method doesn't have any arguments.
To declare the end of a method, you must use the `end` keyword.

```crystal
def hello
  puts "Hello World!"
end
```

Using a method that doesn't exist for the type of variable or method argument will result in a compile-time error.

```crystal
number = 1
number + "1"
# Error: no overload matches 'Int32#+' with type String
```

### Arguments

Methods can have [arguments][arguments].
Arguments are data that is passed to a method.
To be able to give a method arguments, you must specify the name of the argument.
In Crystal, arguments should be written in snake_case.
A method can have multiple arguments, but a comma must separate the arguments.

```crystal
def hello(name)
  puts "Hello #{name}!"
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

When calling a method that belongs to a class, module, or struct, you must use the dot operator(`.`).
The format should be: `<ClassName>.<method_name>`.
When a method doesn't belong to a class, module, or struct, you can simply call it by writing its name.
Methods always implicitly return the value of the last expression.

When a method has arguments, you may use parentheses when specifying the arguments in the method call and definition, like the following: `<method_name>(<argument_1>, <argument_2>, ...)`.
When a method has no arguments, parentheses should be omitted.

```crystal
def hello(name)
  "Hello #{name}!"
end

hello("Crystal")
# => Hello Crystal!
```

When calling a method with multiple arguments, a comma should separate the arguments.
The arguments must be given in the same order as the method arguments.

```crystal
def hello_language(name, language)
  "Hello #{name}! You are learning #{language}."
end

hello_language("World", "Crystal")
# => Hello World! You are learning Crystal.
```

Calling a method with the wrong number of arguments will result in a compile-time error.

```crystal
hello_language("Crystal")
# wrong number of arguments for 'hello_language' (given 1, expected 2)
```

### Addition & Subtraction & Multiplication

In Crystal, you can use the `+` operator to add two numbers together.
You can also use the `-` operator to subtract two numbers.
And you can use the `*` operator to multiply two numbers.

```crystal
1 + 1
# => 2

2 - 1
# => 1

2 * 2
# => 4
```

### Comments

In Crystal, [comments][comments] are written with the `#` character, followed by a space and then the comment.
Comments are used to document code.
The compiler does not execute comments.

```crystal
# This is a comment
```

[arguments]: https://crystal-lang.org/reference/latest/tutorials/basics/60_methods.html#arguments
[assignement]: https://crystal-lang.org/reference/latest/syntax_and_semantics/assignment.html#assignment
[comments]: https://crystal-lang.org/reference/latest/syntax_and_semantics/comments.html
[constants]: https://crystal-lang.org/reference/latest/syntax_and_semantics/constants.html
[default_arguments]: https://crystal-lang.org/reference/latest/tutorials/basics/60_methods.html#default-arguments
[methods]: https://crystal-lang.org/reference/latest/tutorials/basics/60_methods.html#methods
[return]: https://crystal-lang.org/reference/latest/tutorials/basics/60_methods.html#returning-a-value
[snake-case]: https://en.wikipedia.org/wiki/Snake_case
[type]: https://crystal-lang.org/reference/latest/tutorials/basics/20_variables.html#type
[variables]: https://crystal-lang.org/reference/latest/tutorials/basics/20_variables.html

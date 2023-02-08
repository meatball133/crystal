# Basics

Crystal is a compiled, object-oriented programming language. These are some of the language's goals:

- Ruby-inspired syntax.

- Statically type-checked but without having to specify the type of variables or method arguments.

- Be able to call C code by writing bindings to it in Crystal.

- Have compile-time evaluation and generation of code, to avoid boilerplate code.

- Compile to efficient native code.

In 2011 did the work on crystal start with the goal of creating a language with the elegance and productivity of Ruby, but with the performance and type safety of a compiled language.
Originally, the language compiler was written in Ruby, but in 2013, the compiler was rewritten in Crystal itself.
The language was developed and designed by Ary Borenszweig, Juan Wajnerman, Brian Cardif.

## Getting Started

Since Crystal is a compiled language, so will every variable or method argument be assigned a type in compile time.
The compiler is capable of inferring the type of a variable or method argument.
Although some cases it is necessary to specify.
That will be explained in later concepts.

### Variables

To declare a variable, you must use the `=` assignment operator.
In crystal should variables be written in snake_case.

A variable can be declared and then redefine later.

```crystal
number = 1
p number # => 1

number = 2
p number # => 2
```

### Constants

Constants are declared using the same `=` assignment operator, but uses all uppercase letters or also known as SCREAMING_SNAKE_CASE.
The difference between constants and variables is that constants can't be redefined.

```crystal
A = 1
p A # => 1
```

Assigning a value to a constant that is already defined will result in a compile-time error.

```crystal
A = 1

A = 2
```

```console
In test.cr:3:1

 3 | A = 2
     ^
Error: already initialized constant A
```

### Types

Crystal has a type inference system, so you don't have to specify the type of a variable or method argument.
The compiler will try to guess the type of the variable or method argument.
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

Methods are a way to group together a set of instructions that can be reused.
In crystal so are these methods often defined in a class, module or struct.
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

Methods can have arguments.
Arguments are data that is passed to a method.
To give a method arguments, you must specify the name of the argument.
In crystal should arguments be written in snake_case.
A function can have multiple arguments, but the arguments must be separated by a comma.

```crystal
def hello(name)
  puts "Hello #{name}!"
end
```

In crystal it is possible to give a method argument a default value.
When a method argument has a default value, it is not required to pass an argument to the method.

```crystal
def hello(name = "World")
  "Hello #{name}!"
end
```

### Calling Methods

To call a method, you must use the dot operator(`.`).
The dot operator is used to call methods on a variable or method argument.

```crystal
hello
# => Hello World!

hello("Crystal")
# => Hello Crystal!
```

Calling a method with the wrong number of arguments will result in a compile-time error.

```crystal
hello("Crystal", "Programming Language")
```

```console
In test.cr:1:1

 1 | hello("Crystal", "Programming Language")
     ^----
Error: wrong number of arguments for 'hello' (given 2, expected 1)
```

To be able to call a method within a class or module, you most use self before the method name.
What self does is that it refers to the class or module itself.
In the example below the self refers to the Hello class.
Meaning that it could also be written as `Hello.hello`.
But for the sake of readability, it is recommended to use self.

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
This means that generally it is recommended to not use the `return` keyword.
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

When not giving a method a return value, it will return nil.

```crystal
def hello
  return
end

hello
# => nil
```

### Comments

In crystal so are comments written with the `#` character, followed by a space and then the comment.
Comments are used to document code.
Comments are not executed by the compiler.

```crystal
# This is a comment
```

# classes

Classes are a centric concept in object-oriented programming.
Classes are templates to create objects, providing initial values for state, like variables and implementations of behavior, like methods.
When creating an object from a class, the object is called an instance of the class, the instance holds all the instance variables.

## Class definition

A class is defined using the `class` keyword, followed by the name of the class written in `UpperCamelCase`.

```crystal
class Person
end
```

## Creating an instance

To create an instance of a class, you call the class name with the `new` method.

```crystal
class Person
end

Person.new
```

When creating an instance, there is a special method called `initialize` that is a constructor, it is called when an instance is created.
The contructor allows you to set the initial state of the instance.

```crystal
class Person
  def initialize
    puts "Hello"
  end
end

Person.new
# => Hello
```

The `initialize` method can take arguments, which are passed when creating an instance.

```crystal
class Person
  def initialize(name)
    puts "Hello #{name}"
  end
end

Person.new("John Doe")
# => Hello John Doe
```

````exercism/note
The `initialize` method cant return a value, instead when calling new the instance is returned.

```crystal
class Person
  def initialize(name)
    "Hello #{name}"
  end
end

Person.new("John Doe")
# => #<Person:0x7f5dc33dcea0>
````

## Instance variables

Instance variables are variables that are available in all methods of the instance.
They need to be initialized in the `initialize` method.
They are defined using the `@` prefix.

```crystal
class Person
  def initialize
    @name = "John Doe"
  end

    def name
        @name
    end
end

person = Person.new
person.name
# => "John Doe"
```

### Instance variables with intlization

Instance variables can be initialized with a value passed to the `initialize` method.
Although since crystal can't infer the type of the instance variable in an intlization of a variables, so does it needs to be specified.
To specify the type of the variable you can use the `:` symbol, followed by the type.
For example if I want to create an instance variable called `number` that is an `Int32`, I can do the following: `@number : Int32`.
Or if I want to create an instance variable called `raining` that is a `Bool`, I can do the following: `@raining : Bool`.

There are a few ways to impliment this, either by in the `initialize` method declaring the argument with the type, when you don't have to use `@` before the argument name, like following example:

```crystal
class Person
  def initialize(number : Int32)
    @number = number
  end

  def number
    @number
  end
end

person = Person.new(1)
person.number
# => 1
```

Another way is to declaring the instance variable type in the class definition, when you have to do: `@<variable> : <Type>`, like following example:

```crystal
class Person

  @raining : Bool

  def initialize(raining)
    @raining = raining
  end

  def raining
    @raining
  end
end

person = Person.new(true)
person.raining
# => true
```

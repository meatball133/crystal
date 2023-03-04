# classes

Classes are a centric concept in object-oriented programming.
Classes are blueprints to create objects, providing initial values for state, like variables and implementations of behavior, like methods.
When creating an object from a class, the object is called an instance of the class, the instance holds all the instance variables.

This goes in line with that everything in Crystal is an object, and that every object has a type, and it can respond to some methods.

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

person = Person.new
```

In the example above so is the variable `person` an instance of the class `Person`.

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
They can be initialized in the `initialize` method.
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

It is possible to create instance variables without declaring them in the `initialize` method.

```crystal
class Person
  @age = 0
end
```

### Instance variables with intlization

Instance variables can be initialized with a value passed to the `initialize` method.
Although since crystal can't infer the type of the instance variable in an intlization of a variables, so does it needs to be specified.
To specify the type of the variable you can use the `:` symbol, followed by the type.
For example if you want to create an instance variable called `number` that is an `Int32`, you can do the following: `@number : Int32`.
Or if you want to create an instance variable called `raining` that is a `Bool`, you can do the following: `@raining : Bool`.

There are a few ways to impliment this, either by in the `initialize` method declaring the argument with the type, and then assigning the instance variable to the argument, like following example:

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
person_2 = Person.new(5)

person.number
# => 1

person_2.number
# => 5
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

### Shorthand for intlize instance variables

There is a shorthand for intlizing instance variables, which is to in the argument of the `initialize` method, declare the instance variable with the type, like following example: `@<variable> : <Type>`.

```crystal
class Person
  def initialize(@name : String)
  end
end
```

## Modify instance variables

Instance variables can be modified by methods.
These methods can be called on the instance of the class.
When a method modify an instance variable, the change is only available in the instance of the class, meaning that the change will be there when calling the method again.

```crystal
class Person
  def initialize(number)
    @number = number
  end

  def decrease(amount)
    @number -= amount
  end

  def number
    @number
  end
end

person = Person.new(10)
person.number
# => 10

person.decrease(5)
person.number
# => 5

person.decrease(5)
person.decrease(5)
person.number
# => -5
```

# classes

Classes are a centric concept in object-oriented programming.
Classes are blueprints to create objects, providing initial values for state, like variables and implementations of behavior, like methods.
When creating an object from a class, the object is called an instance of the class, the instance holds all the instance variables.

This goes in line with that everything in Crystal is an object, and that every object has a type, and it can respond to some methods.

## Class definition

A class is defined using the `class` keyword, followed by the name of the class written in `UpperCamelCase`.

```crystal
class Account
end
```

## Creating an instance

To create an instance of a class, you call the class name with the `new` method.

```crystal
class Account
end

account = Account.new
```

In the example above so is the variable `account` an instance of the class `Account`.

When creating an instance, there is a special method called `initialize` that is a constructor, it is called when an instance is created.
The constructor allows you to set the initial state of the instance.

```crystal
class Account
  def initialize
    puts 5
  end
end

Account.new
# => 5
```

The `initialize` method can take arguments, which are passed when creating an instance.

```crystal
class Account
  def initialize(number)
    p 5 + number
  end
end

Account.new(4)
# => 9
```

````exercism/note
The `initialize` method cant return a value, instead when calling new the instance is returned.

```crystal
class Account
  def initialize(number)
    5 + number
  end
end

Account.new(4)
# => #<Account:0x7f5dc33dcea0>
````

## Instance variables

Instance variables are variables that are available in all methods of the instance.
They can be initialized in the `initialize` method.
They are defined using the `@` prefix.

```crystal
class Account
  def initialize
    @balance = 100
  end

  def balance
    @balance
  end
end

account = Account.new
account.balance
# => 100
```

It is possible to create instance variables without declaring them in the `initialize` method.

```crystal
class Account
  @age = 0
end
```

### Instance variables with initialization

Instance variables can be initialized with a argument passed to the `initialize` method.
Although since crystal can't infer the type of an argument under initialization, so does it needs to be specified.
To specify the type of the variable you can use the `:` symbol, followed by the type.
For example if you want to create an instance variable called `balance` that is an `Int32`, you can do the following: `@balance : Int32`.
Or if you want to create an instance variable called `raining` that is a `Bool`, you can do the following: `@raining : Bool`.

There are a few ways to implement this, either by in the `initialize` method declaring the argument with the type, and then assigning the instance variable to the argument, like following example:

```crystal
class Account
  def initialize(balance : Int32)
    @balance = balance
  end

  def balance
    @balance
  end
end

account = Account.new(1)
account_2 = Account.new(5)

account.number
# => 1

account_2.number
# => 5
```

Another way is to declaring the instance variable type in the class definition, when you have to do: `@<variable> : <Type>`, like following example:

```crystal
class Weather

  @raining : Bool

  def initialize(raining)
    @raining = raining
  end

  def raining
    @raining
  end
end

weather = Weather.new(true)
weather.raining
# => true
```

### Shorthand for initialize instance variables

There is a shorthand for initializing instance variables, which is to in the argument of the `initialize` method, declare the instance variable with the type, like following example: `@<variable> : <Type>`.
This combines the assignment of the instance variable to the argument, and the declaration of the instance variable type.

```crystal
class Account
  def initialize(@balance : String)
  end
end
```

## Modify instance variables

Instance variables can be modified by methods.
These methods can be called on the instance of the class.
When a method modify an instance variable, the change is only available in the instance of the class, meaning that the change will be there when calling the method again.

```crystal
class Account
  def initialize(balance)
    @balance = balance
  end

  def withdraw(amount)
    @balance -= amount
  end

  def balance
    @balance
  end
end

account = Account.new(10)
account.balance
# => 10

account.withdraw(5)
account.balance
# => 5

account.withdraw(5)
account.withdraw(5)
account.balance
# => -5
```

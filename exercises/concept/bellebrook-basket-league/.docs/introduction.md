# Modules

[Modules][modules] in Crystal serve two purposes:

The first purpose is to create a [namespace][namespace] to avoid name collisions.
However, it also groups code, making it easier to understand what the code is for.

The second purpose is to define [mixins][mixin] to share code to types.

Modules are similar to classes, but the main difference is that they cannot be instantiated and, thus, don't have instance variables.

To declare a module, you use the `module` keyword followed by the module's name.

```crystal
module Foo
end
```

## Namespace

A namespace is a way to group code. 
This avoids name clashes and makes it easier to understand what the code is for.
When wanting to access a constant or a class that has been placed inside a namespace, you use the `::` operator.

```crystal
module Foo
  class Bar
  end
end

Foo::Bar.new
```

## Use it as a mixin

This can be useful when, for example, multiple classes need the same "base" functionality or when code needs to be shared between unrelated classes.
Or when wanting to share code between classes that are not related.

There are two different ways to use a module as a mixin: the first is to use the `include` keyword, and the second is to use the `extend` keyword.

Both methods will make constants available to the type that includes or extends the module.

### Include

Include will make all methods in the module available as instance methods on the type that includes the module.
The `include` keyword should be at the top of the type, followed by the module's name.

```crystal
module Foo
  def foo
    "foo"
  end
end

class Bar
  include Foo
end

Bar.new.foo # => "foo"
```

### Extend

Extend works similarly to include, but instead of making the methods available as instance methods, it makes them available as class methods.
The `extend` keyword should be written at the top of the type, followed by the module's name.

```crystal
module Foo
  def foo
    "foo"
  end
end

class Bar
  extend Foo
end

Bar.foo # => "foo"
```

## Extend self

A typical pattern in Crystal uses the [`extend self`][extend self] pattern in a module.
This will make all methods in the module available as class methods on the module itself.
This means you don't have to assign each method to the module using the `def self.method_name` syntax.


```crystal
module Foo
  extend self

  def foo
    "foo"
  end
end

Foo.foo # => "foo"
```

[mixin]: https://en.wikipedia.org/wiki/Mixin
[modules]: https://crystal-lang.org/reference/syntax_and_semantics/modules.html
[extend self]: https://crystal-lang.org/reference/syntax_and_semantics/modules.html#extend-self
[namespace]: https://en.wikipedia.org/wiki/Namespace

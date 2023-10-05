# Array

Array is a mutable data structure that stores a collection of elements of a specific type.
An array is an integer-indexed collection.
Arrays being mutable means that if an method is called on an array which modifies the array, the array will be modified.
Meaning it doesnt have to be reassigned to the variable.

To create an array, use the array literal denotion syntax (`[]`) and within it, specify the elements of the array separated by a comma.

```crystal
[1, 2, 3] # => [1, 2, 3]
```

Crystal will infer the type of the array from the elements.

```crystal
[1, 2, 3].class # => Array(Int32)
```

## Multi type Arrays

Even if mentioned earlier about arrays being a collection of elements of a specific type, so you can you create an array with multiple types through the use of union types.
This makes so that the array can contain elements of any of the types specified in the union type.
Crystal will infer the type of the array from the elements.

```crystal
[1, "2", 3.0] # => [1, "2", 3.0]

[1, "2", 3.0].class # => Array(Int32 | Float64 | String)
```

## Add an element to an array

To add an element to an array, use the `<<` (append) operator.

```crystal
[1, 2, 3] << 4 # => [1, 2, 3, 4]
```

It is important that the type of the element you want to add is the same as the type of the array, if it is not an error will be raised.

```crystal
numbers : Array(Int32 | Float64) = [1, 2, 3]
numbers << 4.0
numbers # => [1, 2, 3, 4.0]
numbers << "5" # => Error: no overload matches 'Array(Int32 | Float64)#<<' with type String
```

## Size of an Array

As with `String` so can you get the size of an array by using the `size` method.

```crystal
[1, 2, 3].size # => 3
```

## Empty Arrays

When creating an empty array, so can the compiler not infer which type the array is built of.
Therefore, you need to specify the type of the array.
This can be done by either specifying the type of the array or by using the `of` keyword.
Or by using the array initializer syntax, which is: `Array(T).new`.

```crystal
[] of (Int32 | Float64 | String)    # => []
Array(Int32 | Float64 | String).new # => []
```

## Accessing Elements

As with `String` so can you access elements in an array by using the `[]` (index) operator and giving it the index of the element you want to access.

```crystal
[1, 2, 3][0] # => 1
```

It is also possible to access elements by using a range.

```crystal
[1, 2, 3][0..1] # => [1, 2]
```

## Create an array from a range

To create an array from a range, use the `to_a` method.
This can be useful when you want to create an array of numbers.

```crystal
(1..3).to_a # => [1, 2, 3]
```

## Create an array from a string

To create an array from a string, use the `split` method.
This lets you split a string into an array of strings by using a delimiter.

```crystal
"1,2,3".split(",") # => ["1", "2", "3"]
```

There is also possible to get an array of characters from a string by using the `chars` method.

```crystal
"123".chars # => ['1', '2', '3']
```

To convert an array of `Char` or `String` to a `String` you can use the `join` method which takes a delimiter as an argument.

```crystal
['1', '2', '3'].join(".") # => "1.2.3"
```

## Deleting element from an array

When wanting to delete an element from the end of an array, you can use `pop` method which takes an optional argument specifying how many elements to remove from the end of the array.
The method returns the element that was removed.

```crystal
numbers = [1, 2, 3]
[1, 2, 3].pop # => 3
numbers       # => [1, 2]
```

When wanting to delete an element of a specific index from an array, you can use the `delete_at` method which takes the index of the element to remove as an argument.

```crystal
numbers = [1, 2, 3]
[1, 2, 3].delete_at(1) # => 2
numbers                # => [1, 3]
```

When wanting to delete an element from an array, you can use the `delete` method which takes the element to remove as an argument.

## modifiying values in an array

When wanting to modify an element of a specific index from an array, you can use the `[]=` (index assign) operator which takes the index of the element to modify and the new value as arguments.

```crystal
numbers = [1, 2, 3]
numbers[1] = 4
numbers # => [1, 4, 3]
```

## Array pointer

~~~~exercism/advanced
Arrays being mutable gives some properties that are not available for immutable data types/structures.
One of these properties is that arrays are passed by reference.
This means that when passing an array to a method, the method will be able to modify the array.
This has the benefit of not having to create a new array which gives better performance.
For example when working with `String` every time you modify a string a new string is created which can be expensive.

But this comes can come with some behavior which is good to be aware of.

```crystal
numbers = [1, 2, 3]
other_numbers = numbers
other_numbers << 4
other_numbers # => [1, 2, 3, 4]
numbers       # => [1, 2, 3, 4]
```

As you can see even though we only modified `other_numbers` so was `numbers` also modified.
This is because `other_numbers` and `numbers` are pointing to the same array.
To avoid this behavior you can use the `dup` method which creates a copy of the array.

```crystal
numbers = [1, 2, 3]
other_numbers = numbers.dup
other_numbers << 4
other_numbers # => [1, 2, 3, 4]
numbers       # => [1, 2, 3]
```
~~~~

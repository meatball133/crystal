# Array

[Array][array] is a mutable data structure that stores a collection of elements of a specific type.
An array is an [indexable][indexable] data structure.
Arrays being mutable means that if a method is called on an array that modifies the array, the array will be modified.
Meaning it doesn't have to be reassigned to the variable.

To create an array, use the array literal denotation syntax (`[]`) and within it, specify the elements of the array separated by a comma.

```crystal
[1, 2, 3] # => [1, 2, 3]
```

Crystal will infer the type of the array from the elements.

```crystal
[1, 2, 3].class # => Array(Int32)
```

## Multi type Arrays

Even if mentioned earlier about arrays being a collection of elements of a specific type, you can create an array with multiple types through the use of [union types][union-types].
This makes so that the array can contain elements of any of the types specified in the union type.
Crystal will infer the type of the array from the elements.

```crystal
[1, "2", 3.0] # => [1, "2", 3.0]

[1, "2", 3.0].class # => Array(Int32 | Float64 | String)
```

## Add an element to an array

To add an element to an array, use the [`<<` (append) operator][append].

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

As with `String`, can you get the size of an array by using the [`size`][size] method.

```crystal
[1, 2, 3].size # => 3
```

## Empty Arrays

When creating an empty array, the compiler cannot infer the type of the array.
Therefore, you need to specify the type of the array.
This can be done by specifying the type of the array, by using the `of` keyword, or by using the array initializer syntax, which is: `Array(T).new`.

```crystal
[] of (Int32 | Float64 | String)    # => []
Array(Int32 | Float64 | String).new # => []
```

## Accessing Elements

As with `String`, you can access elements in an array by using the [`[]` (index) operator][index] and giving it the index of the element you want to access.

```crystal
[1, 2, 3][0] # => 1
```

It is also possible to access elements by using a range.

```crystal
[1, 2, 3][0..1] # => [1, 2]
```

## Create an array from a range

To create an array from a range, use the [`to_a` method][to_a].
This can be useful when you want to create an array of numbers.

```crystal
(1..3).to_a # => [1, 2, 3]
```

## Create an array from a string

To create an array from a string, use the [`split`][split] method.
This lets you split a string into an array of strings by using a delimiter.

```crystal
"1,2,3".split(",") # => ["1", "2", "3"]
```

It is also possible to get an array of characters from a string by using the [`chars`][chars] method.

```crystal
"123".chars # => ['1', '2', '3']
```

To convert an array of `Char` or `String` to a `String` you can use the [`join`][join] method which takes a delimiter as an argument.

```crystal
['1', '2', '3'].join(".") # => "1.2.3"
```

## Deleting element from an array

When you want to delete an element from the end of an array, you can use [`pop`][pop] method which takes an optional argument specifying how many elements to remove from the end of the array.
The method returns the element that was removed.

```crystal
numbers = [1, 2, 3]
[1, 2, 3].pop # => 3
numbers       # => [1, 2]
```

When you want to delete an element of a specific index from an array, you can use the [`delete_at`][delete_at] method which takes the index of the element to remove as an argument.

```crystal
numbers = [1, 2, 3]
[1, 2, 3].delete_at(1) # => 2
numbers                # => [1, 3]
```

## Modifying values in an array

When you want to modify an element of a specific index from an array, you can use the [`[]=` (index assign) operator][index-assign] which takes the index of the element to modify and the new value as arguments.

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

But this can come with some behavior which is good to be aware of.

```crystal
numbers = [1, 2, 3]
other_numbers = numbers
other_numbers << 4
other_numbers # => [1, 2, 3, 4]
numbers       # => [1, 2, 3, 4]
```

As you can see even though we only modified `other_numbers`, `numbers` was also modified.
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

[array]: https://crystal-lang.org/reference/syntax_and_semantics/literals/array.html
[pop]: https://crystal-lang.org/api/Array.html#pop%3AT-instance-method
[index]: https://crystal-lang.org/api/Indexable.html#%5B%5D%28index%3AInt%29-instance-method
[split]: https://crystal-lang.org/api/String.html#split%28separator%3AString%2Climit%3Dnil%2C%2A%2Cremove_empty%3Dfalse%29%3AArray%28String%29-instance-method
[indexable]: https://crystal-lang.org/api/Indexable.html
[union-types]: https://crystal-lang.org/reference/syntax_and_semantics/union_types.html
[append]: https://crystal-lang.org/api/Array.html#%3C%3C%28value%3AT%29%3Aself-instance-method
[size]: https://crystal-lang.org/api/Array.html#size%3AInt32-instance-method
[to_a]: https://crystal-lang.org/api/Enumerable.html#to_a-instance-method
[chars]: https://crystal-lang.org/api/String.html#chars%3AArray%28Char%29-instance-method
[join]: https://crystal-lang.org/api/Indexable.html#join%28separator%3AString%7CChar%7CNumber%3D%22%22%29%3AString-instance-method
[index-assign]: https://crystal-lang.org/api/Indexable/Mutable.html#%5B%5D%3D%28index%3AInt%2Cvalue%3AT%29%3AT-instance-method
[delete_at]: https://crystal-lang.org/api/Array.html#delete_at%28index%3AInt%29%3AT-instance-method

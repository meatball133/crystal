# Array

Array is a data structure that stores a collection of elements of a specific type.
An array is an integer-indexed collection.

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
Crystal will infer the type of the array from the elements.

```crystal
[1, "2", 3.0] # => [1, "2", 3.0]

[1, "2", 3.0].class # => Array(Int32 | Float64 | String)
```

## Empty Arrays
# Iteration

In programming, [iteration][iteration] refers to the process of repeating a block of code multiple times.
This can be done by using concepts such as while loops and until loops.
It can also be done by using recursion, which is a function that calls itself.

However, most often you want to iterate over a collection of items, such as an `Array`, `Range` or `String`.
Both the `Array` and `Range` classes in Ruby include the [`Enumerable`][enumerable] module, which provides a number of methods for iterating over the elements.
Meanwhile, the `String` class has its own set of methods for iterating over the characters.

Crystal also doesnt have any any for statement like other languages.
Instead it has several methods that can be used to iterate.

## Iterating

The most common way to iterate over a collection is to use the [`each`][each] method, which yields each element in the collection to a block.
This can be done easily with a `Range`.
Say you would want to loop between 1 and 5, you can use the `each` method to iterate over the range.

```crystal
(1..3).each do |n|
  puts n
end

# Output:
# 1
# 2
# 3
```

Even simplier if you just want to iterate n numbers of times you can use the [`times`][times] method.

```crystal
3.times do |n|
  puts n
end

# Output:
# 0
# 1
# 2
```

## Iterating over a `String`

A `String` is a sequence of characters, and doesnt belong to the `Enumerable` module, which means it has its own set of methods for iterating over the characters.
The most common way to iterate over a `String` is to use the [`each_char`][each_char] method, which yields each character in the `String` to a block.
Note that the `each_char` method feeds a `Char` object and not a `String` object.

```crystal
str = "hello"
str.each_char do |char|
  puts char
end

# Output:
# h
# e
# l
# l
# o
```

Another way of iterating over a `String` is to use the [`each_line`][each_line] method, this method is mostly used when reading a file line by line.

```crystal
str = "hello\nworld"
str.each_line do |line|
  puts line
end

# Output:
# hello
# world
```

## Iterating over an object that includes the `Enumerable` module

The [`Enumerable`][enumerable] module provides a number of methods for iterating over the elements of a collection.
Collections that include the `Enumerable` module are `Array`, `Range`, `Hash`, `Set`, and others, the later ones will be covered in later concepts.

The most common way to iterate over an `Array` is to use the [`each`][each] method, which yields each element in the `Array` to a block.

```crystal
arr = [1, 2, 3]
arr.each do |element|
  puts element
end

# Output:
# 1
# 2
# 3
```

### Map

The [`map`][map] method is another way to iterate over an `Array`, it returns a new `Array` containing the results of applying the block to each element.
It is similar to the `each` method, but it returns a new `Array` with the transformed elements.
Transformation is very useful when you want to apply a function to each element of the collection, which is a common operation.

```crystal
arr = [1, 2, 3]
new_arr = arr.map do |element|
  element * 2
end

new_arr
# => [2, 4, 6]
```

### With Index

Sometimes you need to know the index of the element you are iterating over, you can use the [`each_with_index`][each_with_index] or [`map_with_index`][map_with_index] method for that.
It yields each element and its index to a block, the method also accepts an optional argument to specify the starting index.

```crystal
arr = [1, 2, 3]
arr.each_with_index(4) do |element, index|
  puts "Element: #{element}, Index: #{index}"
end

# Output:
# Element: 1, Index: 4
# Element: 2, Index: 5
# Element: 3, Index: 6
```

Note that the [`each_char_with_index`][each_char_with_index] method is also available for `String` objects.

### `present?`, `empty?`, `any?`, `all?`, `none?`, `one?`

The `Enumerable` module provides a number of methods to check the state of a collection.
This can be useful when you want to know if a collection is empty, or if it contains any elements that meet a certain condition.
While the [`present?`][present?] and [`empty?`][empty?] methods are specific to check if a collection is empty or not.
The [`any?`][any?], [`all?`][all?], [`none?`][none?], and [`one?`][one?] methods accept a block and return a boolean value based on the block's return value.
These methods listed return a boolean value.

| Method | Description | Example |
| ------ | ----------- | ------- |
| `present?` | Returns `true` if the collection is not empty | `[1, 2, 3].present?` |
| `empty?` | Returns `true` if the collection is empty | `[].empty?` |
| `any?` | Returns `true` if the block ever returns at least one value other than `false` or `nil` | `[1, 2, 3].any? { |n| n > 2 }` |
| `all?` | Returns `true` if the block always returns a value other than `false` or `nil` | `[1, 2, 3].all? { |n| n > 0 }` |
| `none?` | Returns `true` if the block never returns a value other than `false` or `nil` | `[1, 2, 3].none? { |n| n > 3 }` |
| `one?` | Returns `true` if the block returns a value other than `false` or `nil` exactly once | `[1, 2, 3].one? { |n| n > 2 }` |

```crystal
arr = [1, 2, 3]
arr.present? # => true
```

~~~~exercism/note
`Enumerable#present?` was implimented in Crystal 1.11, if using earlier versions of Crystal that method won't exist
If you are using the online enviroment you dont have to worry about this.

The key take out of this method is that it is the opposite of `empty?`, but it differs from `any?` because any will not return `true` if the collection includes `nil` or `false`.
~~~~

### count

The [`count`][count] method returns the number of elements in the collection that meet the condition specified in the block.
Alternatively, the method can be called with an argument to count the number of elements that are equal to the argument.

```crystal
arr = [1, 2, 3]
arr.count { |n| n > 1 }
# => 2
# 
arr.count(2)
# => 1
```

### find

The [`find`][find] method returns the first element in the collection that meets the condition specified in the block.

```crystal
arr = [1, 2, 3]
arr.find { |n| n > 1 }
# => 2
```

### sum

The [`sum`][sum] method returns the sum of all elements in the collection, it also accepts an optional block to transform the elements before summing them.
It also accepts an optional argument to specify the initial value of the sum.

```crystal
arr = [1, 2, 3]
arr.sum
# => 6

arr.sum(2) { |n| n * 2 }
# => 14
```

### reduce

[`reduce`][reduce] or fold as it is known in other languages, is a method that with a combine method and an initial value, it will combine all the elements in the collection.
The `reduce` method has an accumulator that is passed to the block, the accumulator is the result of the previous iteration.
This becomes a recursive process that will combine all the elements in the collection.

```crystal
arr = [1, 2, 3]
arr.reduce(0) do |acc, n|
  acc + n
end
# => 6
```

`reduce` might seem similar to `sum`, but `reduce` is more flexible because it allows you to specify the initial value of the accumulator and the combine method.
`reduce` can be used to implement `sum`, `count`, and other methods.

### sort

The `sort` method returns a new `Array` containing the elements of the collection sorted in ascending order.
The method also accepts an optional block to specify the sorting order.

```crystal
arr = [3, 1, 2]
arr.sort
# => [1, 2, 3]
```

The `sort_by` method is similar to the `sort` method, but it allows you to specify a block to transform the elements before sorting them.

```crystal
arr = [3, 1, 2]
arr.sort_by { |n| -n }
# => [3, 2, 1]
```

[times]: https://crystal-lang.org/api/Int.html#times%28%26block%3Aself-%3E%29%3ANil-instance-method
[enumerable]: https://crystal-lang.org/api/Enumerable.html
[each_char]: https://crystal-lang.org/api/String.html#each_char%28%26%29%3ANil-instance-method
[each_char_with_index]: https://crystal-lang.org/api/String.html#each_char_with_index%28offset%3D0%2C%26%29-instance-method
[each_line]: https://crystal-lang.org/api/String.html#each_line%28chomp%3Dtrue%2C%26block%3AString-%3E%29%3ANil-instance-method
[each]: https://crystal-lang.org/api/Enumerable.html#each%28%26%3AT-%3E%29-instance-method
[map]: https://crystal-lang.org/api/Enumerable.html#map%28%26%3AT-%3EU%29%3AArray%28U%29forallU-instance-method
[each_with_index]: https://crystal-lang.org/api/Enumerable.html#each_with_index%28offset%3D0%2C%26%29-instance-method
[map_with_index]: https://crystal-lang.org/api/Enumerable.html#map_with_index%28offset%3D0%2C%26%3AT%2CInt32-%3EU%29%3AArray%28U%29forallU-instance-method
[present?]: https://crystal-lang.org/api/Enumerable.html#present%3F%3ABool-instance-method
[empty?]: https://crystal-lang.org/api/Enumerable.html#empty%3F%3ABool-instance-method
[any?]: https://crystal-lang.org/api/Enumerable.html#any%3F%28%26%3AT-%3E%29%3ABool-instance-method
[all?]: https://crystal-lang.org/api/Enumerable.html#all%3F%28%26%3AT-%3E%29%3ABool-instance-method
[none?]: https://crystal-lang.org/api/Enumerable.html#none%3F%28%26%3AT-%3E%29%3ABool-instance-method
[one?]: https://crystal-lang.org/api/Enumerable.html#one%3F%28%26%3AT-%3E%29%3ABool-instance-method
[count]: https://crystal-lang.org/api/Enumerable.html#count%28%26%3AT-%3E%29%3AInt32-instance-method
[find]: https://crystal-lang.org/api/Enumerable.html#find%28if_none%3Dnil%2C%26%3AT-%3E%29-instance-method
[sum]: https://crystal-lang.org/api/Enumerable.html#sum%28initial%2C%26%3AT-%3E%29-instance-method
[reduce]: https://crystal-lang.org/api/Enumerable.html#reduce%28memo%2C%26%29-instance-method
[sort]: https://crystal-lang.org/api/Enumerable.html#sort%28%26%3AT%2CInt32-%3EU%29%3AArray%28U%29forallU-instance-method
[sort_by]: https://crystal-lang.org/api/Enumerable.html#sort_by%28%26%3AT%2CInt32-%3EU%29%3AArray%28U%29forallU-instance-method
[iteration]: https://en.wikipedia.org/wiki/Iteration
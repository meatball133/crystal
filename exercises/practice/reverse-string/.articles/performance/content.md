# Performance

In this article, we'll examine the performance difference between approaches for `reverse-string` in Crystal.

The [approaches page][approaches] lists three approaches to this exercise:

1. Using the built-in `reverse` method
2. [Using an array][approach-array]
3. [Using String::Builder][approach-string-builder]

## Benchmarks

To benchmark the approaches, we wrote a [small benchmark application][benchmark-application] using the built-in [`Benchmark` module][benchmark-module].
These tests were run in WSL2, using Crystal 1.10.1.
Your system results may vary.

```
ReverseString, short string
  0.000001   0.000000   0.000001 (  0.000000)
ReverseStringArray, short string
  0.000003   0.000000   0.000003 (  0.000003)
ReverseStringStringBuild, short string
  0.000001   0.000000   0.000001 (  0.000001)
ReverseString, long string
  0.000013   0.000000   0.000013 (  0.000013)
ReverseStringArray, long string
  0.000103   0.000000   0.000103 (  0.000104)
ReverseStringStringBuild, long string
  0.000057   0.000000   0.000057 (  0.000057)
```

## Conclusion

As we can see, the built-in `reverse` method is the fastest approach for both short and long strings.
The `String::Builder` approach is the second fastest, and the array approach is the slowest.
This is likely due to the fact that the array approach requires converting the string to an array, and then converting the array back to a string.

[approaches]: https://exercism.org/tracks/crystal/exercises/reverse-string/approaches
[approach-array]: https://exercism.org/tracks/crystal/exercises/reverse-string/approaches/array
[approach-string-builder]: https://exercism.org/tracks/crystal/exercises/reverse-string/approaches/string-builder
[benchmark-application]: https://github.com/exercism/crystal/blob/main/exercises/practice/reverse-string/.articles/performance/code/benchmark.cr
[benchmark-module]: https://crystal-lang.org/api/Benchmark.html
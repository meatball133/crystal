# Performance

In this article, we'll examine the performance difference between approaches for `leap` in Crystal.

The [approaches page][approaches] lists three approaches to this exercise:

1. [Using `divisible_by?`][approach-divisible_by]
2. [Using modulus][approach-modulus]
3. [Using `Proc`s][approach-proc]

## Benchmarks

To benchmark the approaches, we wrote a [small benchmark application][benchmark-application] using the built-in [`Benchmark` module][benchmark-module].
These tests were run in WSL2, using Crystal 1.10.1.
Your system results may vary.

```
YearModulus
  0.000004   0.000000   0.000004 (  0.000003)
YearDivisibleBy
  0.000002   0.000000   0.000002 (  0.000001)
YearProc
  0.000002   0.000000   0.000002 (  0.000002)
```

## Conclusion

It is hard to make a conclusion from these results, as the difference is so small.
According to one of the [Crystal developers][crystal-developer], should `divisible_by?` be a tiny bit faster then the modulus approach.
Although as the difference is so small, and doesn't matter unless you want to do a ton of operations.

[approaches]: https://exercism.org/tracks/crystal/exercises/leap/approaches
[approach-divisible_by]: https://exercism.org/tracks/crystal/exercises/leap/approaches/divisible-by
[approach-modulus]: https://exercism.org/tracks/crystal/exercises/leap/approaches/modulus
[approach-proc]: https://exercism.org/tracks/crystal/exercises/leap/approaches/proc
[benchmark-application]: https://github.com/exercism/crystal/blob/main/exercises/practice/leap/.articles/performance/code/benchmark.cr
[benchmark-module]: https://crystal-lang.org/api/Benchmark.html
[crystal-developer]: https://forum.crystal-lang.org/t/should-divisible-by-be-preferd-over-x-y-0/6161/3

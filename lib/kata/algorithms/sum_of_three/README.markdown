SUM of 3
========

Problem
-------
Finding a 3 Integer Subset in Ruby.
Write a function (with tests) that takes an unsorted integer array, and returns a three element subset whose sum is zero.

Example result:

[3, -2, 1, -1, 0, -2]  => [1, -1, 0] or [3, -2, -1]

Solution
--------

Two implementations are provided.

1. Uses a hash to store the positions of the integers
2. Sorts the input array first

Details and documentation can be found inside the corresponding ruby files that have the implementations

Test
----

```
bundle exec rspec
```

You can also edit the file `spec/example_data/examples.json` to set expectations

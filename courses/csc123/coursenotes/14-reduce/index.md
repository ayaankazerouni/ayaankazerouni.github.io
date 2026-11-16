---
layout: coursenotes
title: "Reduce"
---

**The `reduce` operation _reduces_ an array down to a single value by repeatedly applying a function to pairs of values from left to right.**

Given an array of some type `T`, `reduce` will give back a *single value* of type `T`.
So if you reduce a number array (`number[]`), you'll always get a `number` in a return.
If you reduce a string array (`string[]`), you'll always get a `string` in return.

* s
{:toc}

## We'll start with an example

Consider the relatively simple problem of finding the sum of a list of numbers.

What's the sum of the following numbers? Don't use a calculator! Let's first try to understand what _our own_ process is to solve this problem.

```ts
2, 3, 10, 5
```

Chances are, you started from the left and moved right-ward one number at a time, keeping track of a running result as you went.

The table below illustrates this process, with the running total being kept track of as <span class='hlt'>highlighted text</span>.

| Step number | Task description                                    | Running total               |     |     |      |      |
| ----------- | --------------------------------------------------- | --------------------------- | --- | --- | ---- | ---- |
| 0.          | Start with the original list                        | <span class='hlt'>0</span>  | 2   | 3   | 10   | 5    |
| 1.          | The first number is `2`, add it to our total        | <span class='hlt'>2</span>  | `2` | 3   | 10   | 5    |
| 2.          | Add the next number to our running total (`2 + 3`)  | <span class='hlt'>5</span>  |     | `5` | 10   | 5    |
| 3.          | Add the next number to the running total (`5 + 10`) | <span class='hlt'>15</span> |     |     | `15` | 5    |
| 4.          | Add the next number to the running total (`15 + 5`) | <span class='hlt'>20</span> |     |     |      | `20` |

One way of looking at this process is that we "folded" the list of numbers into a single value, by consuming each item and combining it with the _result up to that point_.

Here's that definition of `reduce` operation again:

{:.callout}
The `reduce` operation _reduces_ an array down to a single value by repeatedly applying a function to items from left to right.

In this example the _function_ that we repeatedly applied was a function that finds the sum of two given numbers.

Here's what that function might look like:

```ts
const sum = (acc: number, curr: number): number => {
  return acc + curr;
}
```

{:.callout .note}
It is common convention to name the two parameters in a reducer `acc` (short for "accumulator") and `curr` (short for "current value"). The `acc` parameter is the running result up to that point (i.e., it has _accumulated_ results so far), and the `curr` parameter is the current item being processed.

For the list `2, 3, 10, 5`, our usage of `sum` would progress as follows.
We start with the initial list, and a starting total of `0` (since no numbers have been added yet).

```ts
const initial: number[] = [2, 3, 10, 5];
let runningTotal: number = 0; // Notice the use of "let"!

runningTotal = sum(runningTotal, initial[0]); // 0 + 2 = 2
runningTotal = sum(runningTotal, initial[1]); // 2 + 3 = 5
runningTotal = sum(runningTotal, initial[2]); // 5 + 10 = 15
runningTotal = sum(runningTotal, initial[3]); // 15 + 5 = 20
```

The code above follows our strategy of moving from left to right, keeping track of a running result and using the `sum` function to sum it with each subsequent item.
After it finishes, `runningTotal` will have the value `20`.

This would be really tedious to do manually, especially for large lists!
That is where the `reduce` array operation comes in.
The `reduce` function's job is to take our `sum` function and push it through the list from left to right, just like we did "manually" in the example above.

## Structure of the `reduce` function

It can be used as follows:

```ts
const value: T = array.reduce(reducer, initialValue);
```

Where:

- `array` is the array you want to reduce. It is an array of type `T[]`. (`T` might be any type, like `string` or `number`, etc.)
- `reducer` is the function that will be applied to each item in the array. It has the following type:

```ts
// Takes two values of some type T and returns a single value of the same type.
(acc: T, curr: T): T
```

- `initialValue` is the initial value to use for the running result. This is optional in TypeScript, but it's a good idea to always provide this.

The `reduce` function returns a single value that's of the same type as the items in the array: this is the result from the final application of `reduce`.

So solving the sum problem again, this time using `reduce`, our complete code would look like this:

```ts
// The initial array of values.
const initial: number[] = [2, 3, 10, 5];

// The sum function, i.e., the reducer.
const sum = (acc: number, curr: number): number => {
  return acc + curr;
}

// Call reduce.
const total: number = initial.reduce(sum, 0);
``` 

Isn't that way nicer?

In fact, the code can be reduced (hah) even further.
Just like with `filter` and `map`, we can declare our reducer as a lambda.

Here's what that would look like:

```ts
const initial: number[] = [2, 3, 10, 5];
const total: number = initial.reduce((acc, curr) => acc + curr, 0);
``` 

Also notice that I did not specify parameter types or a return type for the reducer function.
Since the initial list was a list of numbers (i.e., `number[]`), TypeScript *expects* that the reducer takes in two `number`s and gives back a `number`, and it will appropriately give me errors and warnings if I break that expectation.
So there's no need to specify that explicitly.

## Why do we recommend providing an initial value?

TypeScript allows a `reduce` call to look like this:

```ts
array.reduce(reducer)
```

That is, without an initial value.
If no initial value is provided, `reduce` will use the first item in the array as the initial `acc` value, and begin processing with the next item.

**However, this does not account for the possibility that `array` is empty.**

Consider the same `sum` example as above, this time with an empty list.

```ts
const emptyList: number[] = [];
const total: number = emptyList.reduce((acc, curr) => acc + curr);
```

Since there _is_ no first value or second value in the list, the code above will cause an error when run.
However, if you provide an initial value, like this:

```ts
const total: number = emptyList.reduce((acc, curr) => acc + curr, 0);
```

Then the code will run without error, and `total` will be `0`, which is the expected sum of an empty number array.

Your choice of initial value should of course make sense for the problem you're solving.
For finding a sum of an array of numbers, an initial value of `0` makes sense.
But it is not necessarily the right choice in _all_ cases.

## Additional examples and exercises

**1. Find the product of an array of numbers.**

Using the same initial array of values (`[2, 3, 10, 5]`), how would you find the product of all the numbers? What would the reducer function look like, and what should the initial value be?

**2. Find the longest word in an array of strings.**

For example, given the list `["apple", "apricot", "cherry", "date"]`, how would you use `reduce` to find the longest word?

<details markdown=1>
<summary>Some hints</summary>
- The "accumulated" result as you move through the array would be the longest word encountered so far.
- The reducer should compare each current value to the accumulated result, and return the larger of the two.
  - What expression do you know of that can check a condition and return one of two values?
- What should the initial value be?
</details>

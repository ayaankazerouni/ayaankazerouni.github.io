---
layout: coursenotes
title: "Mapping functions over arrays"
---

We've learned about functions as computations that can be applied to inputs to produce certain outputs.
In addition to applying functions to individual values, commonly in data-centric computing one needs to process collections of data.
I.e., we need some way to apply a function each item in a collection of items (i.e., an array).

The `map` function in TypeScript is designed for this purpose.

- s
{:toc}

## Let's look at an example

Suppose you have a list of words, and you would like to find the lengths of all the words.
That is, given the following array of words...

```ts
["hello", "world", "this", "is", "typescript"]
```

...we want to end up with the array 

```ts
[5, 5, 4, 2, 10]
```

{:.callout .todo}
Just like before, let's first think about how we would accomplish this manually.

My plan is pretty simple: work through the list of words left-to-right, finding the length of each one, and "saving" the result.
My steps look something like this:

Keep track of a running array of result numbers. To start with, it is empty: `[]`

```
"hello".length gives 5; add it to the result [5]
"world".length gives 5; add it to the result [5, 5]
"this".length gives 4; add it to the result [5, 5, 4]
"is".length gives 2; add it to the result [5, 5, 4, 2]
"typescript".length gives 10; add it to the result [5, 5, 4, 2, 10]
```

When we no longer have numbers in the input list, we're done.

So we are applying the *same operation* (`item.length`) to each individual item in the original list.

We _could_ do this manually:

```ts
// Set up the initial list.
const initialList: string[] = ["hello", "world", "this", "is", "typescript"];

// Find the length of each item in the initial list.
const first: number = initialList[0].length;
const second: number = initialList[1].length;
const third: number = initialList[2].length;
const fourth: number = initialList[3].length;
const fifth: number = initialList[4].length;

// Prepare the result list.
const result: number[] = [first, second, third, fourth, fifth];
```

But this is pretty tedious. And doing it this way is not possible if we don't know beforehand the number of items we're going to need to process.

That's where the `map` operation comes in.

## Structure of the `map` function

**The `map` operation applies a function to each item in an array, and collects the results in an output array.**

It can be used as follows:

```ts
const result: R[] = array.map(mapper);
```

Where:

- `array` is some array containing elements of type `T` (`T` is a placeholder type; it could be any type)
- `mapper` is a function that takes an element of type `T` and returns a value of type `R` (also a placeholder). The `mapper` function has the following type:

```ts
// Takes in one item of some type T and returns a value of some type R.
// It is possible for T and R to be the same type.
(item: T): R
```

`T` and `R` are placeholders I am using in this explanation to represent the input and output types of the mapper. They could be any types (even the same type as each other).

- The results from applying `mapper` to each item in `array` are collected in the `results` array

In other words, we could write a simple function that takes in a string and returns its length:

```ts
const mapper = (item: string): number => {
  return item.length
}
```

We will refer to this as our _mapper_, since its job is to map each value (a string) to a new value (the string's length).

Just like in the `filter` examples from before, the mapper can be written as an anonymous function—a "lambda"—and we can omit the curly braces and the `return` keyword since it is only a single expression:

```ts
(item) => item.length
```

We are now ready to give our mapper to the `map` function, which will apply it to each item in the array:

```ts
const initialList: string[] = ["hello", "world", "this", "is", "typescript"];
const result: number[] = initialList.map((item) => item.length);
```

When the code above runs, the `map` function applies the mapper to each item in the array.
One-by-one, each word in the `initialList` is passed to the mapper function.
That is, `item` is first `"hello"`, then `"world"`, etc.
After each application of the mapper, the result is collected into the `result` array.

Because the mapper is giving back a single `number` for each item, the `result` will be a number array (`number[]`), since it collects up all the results.

You will notice that we did not specify types for the mapper function in the code above.
TypeScript can infer the types based on context.

- It knows that the input type to the mapper _must_ be `string`, since the type of `initialList` is `string[]`.
- It knows that the output type must be `number`, since we are mapping each string to its length (a number).
- It is satisfied that the declared type of `result` is `number[]`, which matches the output type of the mapper.

## Some exercises

**1. What would be the value of the following expression?**

```ts
["why", "are", "you", "shouting"].map((item) => item.toUpperCase())
```

**2. Combining `map` and `filter`.**

Because `map` and `filter` return arrays, the result of one map or filter operation can be used as the starting point for another.
That is, we can compose "pipelines" of data steps operations by chaining together map and filter operations.

What would be the value of the following expression?

```ts
[1, 2, 3, 4, 5, 6]
  .filter((item) => item % 2 === 0)
  .map((item) => item * item)
```

**3. Finally, here's a slightly more challenging example.** What would be the value of the expression at the end of this code snippet?

```ts
const words: string[][] = [
  ["cat", "dog", "elephant"],
  ["sun", "moon", "star"],
  ["red", "green", "blue"]
];

// What would be the value of the following expression?
words
  .map((group) => group.filter(w => w.length > 3))
  .map((group) => group.length)
```

---

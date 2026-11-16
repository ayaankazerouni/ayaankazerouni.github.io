---
layout: coursenotes
title: "Higher-order Array Functions and Filter"
---

Last week, we learned about **functions:** computations that we can apply to provided data and produce new data in return.
Functions are fundamental to computing, given our view of computing as the *processing of data to create other data.*

Additionally, we’ve spent a bit of time talking about arrays and array operations.
Arrays are ordered collections of data, typically of the same data type.
We can write functions that work with bigger amounts of data, allowing us to do things like

- Find the length of the array (using `array.length`)
- Add items to the array (using the spread operator or `array.push(item)`)
- Check if an array includes a given item (using `array.includes(item)`)
- Access items from a given position in an array (using `array.at(position)`, where position is a number)

These are all well and good, but as you have no doubt noticed, we have quickly reached the limits of what we can accomplish with arrays using only the functions above.
Realistic data analyses will often require functions that can do more.

In this module we will explore the more powerful array operations available in TypeScript.
After the lessons in this module, some examples of operations we’ll be able to perform are:

- Transform all items in an array in some way (for example, make all strings in an array upper-case, or square all numbers in an array),
- Filter the items in the array based on some condition (for example, remove all negative numbers from an array, or remove all strings from an array whose length is below a given threshold)
- Compute a value based on the array's contents (for example, find the sum of all numbers in the array, or check if all items in an array match a given condition)

The examples above can be accomplished using existing higher-order array functions like `map`, `filter`, and `reduce`.
As we will see, we can assemble (or compose) sequences of these operations to perform complex analyses and solve large data-centric problems.
Effective problem-solving with these operations will involve _recognising_ when a problem calls for `filter`, `map`, or `reduce` steps, or combinations of those steps.

We will practice using all of these tools together while solving programming problems.

- s
{:toc}

## Are functions data?

This lesson talks a bit more about Functions, but perhaps in a way that we have not considered before.

In the functions we've used or created so far, they often take in one or more pieces of _input data_ and give back some _output data_. So for example in the following function:

```tsx
const square = (x: number): number => {
  return x * x;
}
```

...the input data is the number `x`, and the output data is result of squaring `x`.

The inputs have variously been `number`s, `string`s, `boolean`s, or lists of values of those types.

But now, consider the question: can a _function itself_ be used as a value?

For example, consider the `square` function above.
You may see it used in this way:

```tsx
const result: number = square(3);
```

When the code above runs, the variable `result` will have the value `9`. We know this because we've _called_ the `square` function by writing `(3)` (the number 3 in parentheses) after the name of the function.

Now consider the following variable assignment statement:

```tsx
const f = square; // let's not worry about declaring a type for now
```


{:.callout .todo}
**Consider the following questions:**
<br>
Is it valid to write `square` without parentheses and parameters?
<br>
On the right-hand-side of the assignment statement, is `square` a _statement_ or an _expression_?
<br>
What is the value of `f` now?

## Functions are values

In TypeScript, functions are values, just like numbers, strings, and booleans.
We've already hinted at this in the way we declare functions, i.e., by declaring a variable and assigning it the function in the same way we would for any other value.

```ts
const square = (x: number): number => {
  return x * x;
}
```

This means that, in addition to _calling them_, we can also do to functions things we might do to other values, like:

- Refer to them by name (e.g., by just saying `square` without parentheses),
- Store them in variables,
- And crucially, **pass them as parameters to other functions**.

We will learn about functions that take other functions as parameters—referred to as _higher-order functions_—in the context of processing data stored in arrays.

## The `filter` function — an example

Suppose you are a healthcare professional working with patient data, and you have a list of numbers representing patient ages.
Mistakes were made during collection of this data, and some values are negative numbers.

```ts
const ages: number[] = [27, -5, 15, 30, -12, 0];
```

You need to clean the data to exclude the negative ages. That is, you would like to obtain the list

```ts
[27, 15, 30, 0]
```

Let's start by thinking about how we would do this "manually".
The process that comes to my mind is to look at each number in the array and decide whether or not to keep it.
That is, for each number we ask "is this non-negative?".

{:.callout}
To use the `filter` operation, we need to express that question we're asking ("is this non-negative?") as a function.

That function might look something like this:

```ts
const isNonNegative = (item: number): boolean => {
  return item >= 0;
}
```

Now that we have that function, we need to apply it to each individual item in our array of numbers.
We will keep the items for which the result is `true`.

The table below illustrates the steps taken to arrive at our result.
For the table below, the array we're working with is our list of ages `[27, -5, 15, 30, -12, 0]`.

| Step number | Task description                      | Result for current item |
| ----------- | ------------------------------------- | ----------------------- |
| 1.          | `isNonNegative(27)` is `true`.   | &#10004;                 |
| 2.          | `isNonNegative(-5)` is `false`.  | &#10008;                 |
| 3.          | `isNonNegative(15)` is `true`.   | &#10004;                 |
| 4.          | `isNonNegative(30)` is `true`.   | &#10004;                 |
| 5.          | `isNonNegative(-12)` is `false`. | &#10008;                 |
| 6.          | `isNonNegative(0)` is `true`.    | &#10004;                 |


That's what `filter` does for us.

After we finish checking all the items in our array, we keep all the ones for which `isNonNegative` returned `true`.
So, we end up with `27, 15, 30, 0` as the filtered result list.

This is a common task in many programming problems, and the `filter` function in TypeScript allows us to express this kind of filtering operation succinctly.

## Structure of the `filter` function

`filter` is a higher-order function on arrays.
It is used to, well, _filter_ an array of data based on some criterion.

It can be used as follows:

```ts
const filteredArray: T[] = array.filter(predicate);
```

Where:

- `array` is some array containing elements of type `T`
  - We're using `T` as a placeholder in this example: it could be an array of any type, like `number`, `string`, etc.
- `predicate` is a function with the following type:

```ts
// Takes in one item of some type T and returns a boolean.
(item: T): boolean
```

That is, `predicate` takes one parameter that's of the same type as the array contents, and returns a `boolean`.

The `filter` function applies the `predicate` to each item in `array`, and returns a new array containing only the items for which the `predicate` returned `true`. All items that did not satisfy the predicate (i.e., for which `predicate` returned `false`) are excluded from the new array.

**Returning to our example with patient ages**

Here's what this looks like using the `filter` operation.

```ts
// The original list of ages.
const ages: number[] = [27, -5, 15, 30, -12, 0];

// Our predicate.
const isNonNegative = (item: number): boolean => {
  return item >= 0;
}

// Call filter on the ages array.
const validAges: number[] = ages.filter(isNonNegative);
```

After the code above finishes running, the value of `validAges` will be `[27, 15, 30, 0]`.

## Expressing our predicate as a lambda

Since we're only using our `isNonNegative` function one time, and it's rather short, we don't need to go through the steps of giving it a name and all that.
We can define our predicate directly inside the filter, and not bother giving it a name.

These "anonymous" functions are known as _lambdas_.

```ts
const ages: number[] = [27, -5, 15, 30, -12, 0];

// Define the predicate directly as a parameter to the filter function.
const validAges: number[] = ages.filter((item) => { return item >= 0 });
```

**Notice that we have not specified parameter types or a return type for our predicate.**
Since the initial list is a list of numbers, TypeScript knows that the predicate _must_ take a number as a parameter.
And since we are filtering the list, TypeScript knows that the predicate _must_ return a boolean value.

Finally, this can be shortened still further.
Note that our predicate's only job is to compute and return the single expression `item >= 0`.
In functions that consist of a single expression, we can omit the curly braces that surround the body of the function as well as the `return` keyword.

So our predicate can be written simply as:

```ts
(item) => item >= 0
```

Here's all of it put together in the filter:

```ts
const ages: number[] = [27, -5, 15, 30, -12, 0];

// Define the predicate directly as a parameter to the filter function.
const validAges: number[] = ages.filter((item) => item >= 0);
```

## Some exercises

What would be the values of the following expressions?

```ts
[2, 7, 4, 9, 1].filter(n => n > 5)

["hi", "cat", "hello", "a"].filter(w => w.includes("a"))

[-3, -1, 0, 2, 5].filter(n => n < 0 && n % 2 !== 0)

[true, false, true, false].filter(b => b)

[12, 0, 5, -3].filter(n => false)
```


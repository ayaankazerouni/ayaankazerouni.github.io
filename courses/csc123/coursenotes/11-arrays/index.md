---
layout: coursenotes
title: Arrays
mermaid: true
---

In addition to the three primitive data types we've discussed so far (`number`, `string`, and `boolean`), TypeScript also lets us work with _collections_ of values, called _arrays_.

This module is kind of long, and contains several code examples.
As always, you're encouraged to open the [TypeScript Playground](https://www.typescriptlang.org/play){:target="_blank"} and follow along.

* s
{:toc}

## Declaring and initializing arrays

An array can hold several values of the same type.
We use square brackets (`[...]`) to denote that a value is an array in TypeScript.
That is, depending on the task we're trying to perform, we can shift our view to think of arrays as _collections of values_, or to think of the array itself as a single value.

For example, the following is an array of numbers describing the tons of CO2 emissions from the USA the years 1900 to 2020 (in twenty-year increments):[^data]

[^data]: Data from _[Our World in Data](https://ourworldindata.org/co2-emissions)_.

(The numbers use scientific notations to denote millions and billions.)

```ts
const tonsOfCO2: number[] = [662.74e6, 1.74e9, 1.87e9, 2.9e9, 4.81e9, 6.01e9, 4.71e9];
```

Notice that the data type of the value is denoted as `number[]`, i.e., the data type of its contents followed by `[]`.

If we tried to include a non-`number` value in the array, TypeScript would get mad at us.

```ts
//                            👇🏽 not a number!
const tonsOfCO2: number[] = ["662.74e6", 1.74e9, 1.87e9, 2.9e9, 4.81e9, 6.01e9, 4.71e9];
```
[See the error that would occur in the TypeScript Playground](https://www.typescriptlang.org/play/?#code/PTAE4yunF4NxxHcDwbhf-dAOwPYBdQEN0CuAtgEYCmATgIQBQAxhmgM45aNMDyAZgMIcBMALkKlKAbQC6oALygxAIgBsi-gDoA7ABYyi+QBpQARg3aAnAeMAOdWXOg1p2wc2rLhp6EWqADO7sv1PwkAbiA).

We can also have arrays of strings (`string[]`) or arrays of booleans (`boolean[]`).

```ts
const words: string[] = ["hello", "world", "TypeScript"];
const bools: boolean[] = [true, false, true];
```

{:.callout}
Values of any data type can be stored together in an array.

Since arrays themselves are considered values, you can also have an array of arrays, or a "2-dimensional array".

For example, suppose you wanted to represent a tic-tac-toe board.

```ts
const board: string[][] = [["X", "O", "X"], ["O", "X", "O"], ["", "X", ""]]
```

The statement above declares the variable `board` and sets its data type to be `string[][]`.
Let's evaluate `string[][]` left-to-right:

* `string`: This indicates that we're dealing with strings.
* `[]`: This indicates that the data type is an array of _whatever comes before_ in the type annotation. So `string[]` is an array of strings.
* `[]`: Similarly, this indicates that the data type is an array of _whatever comes before_ in the type annotation. This leaves us with `string[][]`, or an array of arrays of strings.

The structure of the tic-tac-toe grid is perhaps more visible if we format it like this:

```ts
const board: string[][] =
  [
    ["X", "O", "X"],
    ["O", "X", "O"],
    ["",  "X", "" ]
  ]
```

The two versions above are equal (in the `===` sense), but sensible use of whitespace (spaces, newlines) can code easier to read.
This is important [developers tend to spend far more time reading code than writing it](https://www.inf.usi.ch/faculty/lanza/Downloads/Mine2015b.pdf).

## Basic array operations

We will spend _**a lot**_ of time with arrays this quarter.
Here are some basic operations you can perform on arrays — we will learn a lot more as we go!

### Get the length of an array

Just like with strings, the `length` property gives the number of items in an array.

```ts
const numberOfItems: number = [1, 3, 9, 12].length; // 4 items
```

### Getting individual items from an array

You can obtain values from the array based on _index_ or position.

For example, to get the first item in the array:

```ts
const tonsOfCO2: number[] = [662.74e6, 1.74e9, 1.87e9, 2.9e9, 4.81e9, 6.01e9, 4.71e9];

const firstItem = tonsOfCO2.at(0);
```

{:.callout .ponder}
Notice that I haven't specified a type for `firstItem`. This is because the `at` operation can give back a `number` OR `undefined`. We'll talk about this more below, but when do you think `at` might need to give back `undefined`?

Just like with strings, you can use the `at` operation to get an item at a particular index (or position) within the array.
Just like with strings, the index is zero-based, meaning the first item is at index `0`.

To get the second item:

```ts
const secondItem = tonsOfCO2.at(1);
```

**What if you request a negative index?** If you give the `at` operation a negative index, it will count backward. So the expression

```ts
const lastItem = tonsOfCO2.at(-1);
```

...will give you the last item in the array.

**What if you request an index that is out of bounds?** If you give the `at` operation an index that is either negative beyond the start of the array, or positive beyond the end of the array, you will get back the value `undefined`.

In our `tonsOfCO2` array, the last element is at index 6 (i.e., there are 7 items in the array)

```ts
const outOfBounds = tonsOfCO2.at(7); // undefined
```

{:.callout .todo}
Paste the code above into the [TypeScript Playground](https://www.typescriptlang.org/play){:target="_blank"}, and then hover your mouse over the `at` operation to see its signature.
You should see it has a return type of `number | undefined` (to be read as "number or undefined").
This is precisely to account for the possibility that you requested an invalid index.

### Indexing into an array using `[]` notation

You can also use the `[]` notation can be used to access individual items in an array.

"Indexing" into an array means accessing specific positions in the array, either to read what's in the array at that location, or to change the value at that location.

For example, suppose you have a simple array of words.

```ts
const beatles: string[] = ["John", "Paul", "George", "Pete"];
```

You can access locations within the array with the following syntax:

```
array[index]
```

Where `array` is any expression that evaluates to an array, and `index` is a `number` representing the position you want to access.

So, for example, to read the first and second item in the `beatles` array, you would write:

```ts
const firstBeatle: string = beatles[0]; // "John"
const secondBeatle: string = beatles[1]; // "Paul"
```

If you have an array of arrays, like the following:

```ts
const arrOfArrays: number[][] = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
];
```

You can get specific items by _chaining_ multiple uses of the `[]` notation.
For example, if we wanted the element `8`, we would say:

```ts
arrOfArrays[2][1]
```

### Check if an array contains an item

Just like with `string`s, you can check if an item is contained within an array.

```ts
[1, 3, 9, 12].includes(3) // true
[1, 3, 9, 12].includes(5) // false
```

Additionally, because TypeScript is performing static type checks, it won't let you search for an item of the wrong type.

The expression below will cause a type error.

```ts
[1, 3, 9, 12].includes("this is not a number")
```

TypeScript sees that the array is a number array (`number[]`).
So the string `"this is not a number"` can _never_ be included in it.

[See the code and the associated error in the TypeScript Playground.](https://www.typescriptlang.org/play/?#code/NoJgNABAzJAskFYC6A6AlgOwMYBsCuAJgKYDOAFAEQkAuATpgOYUCUQA){:target="_blank"}

### Find the index of an item

You can use the `indexOf` operation to find the position of a given item in an array.
It is sort of the inverse of `at`.

* `at` is used when you know the position and you want the item at that position.
* `indexOf` is used when you know the item and you want to find its position.

```ts
[1, 3, 9, 12].indexOf(9) // 2
```

**What happens if the item is not in the array?** In this case, TypeScript will give you the value `-1`.

This allows you to do things like this:

```ts
[1, 3, 9, 12].indexOf(5) !== -1 ?
  "5 is in the array" :
  "5 is not in the array"
```

Which is equivalent to

```ts
[1, 3, 9, 12].includes(5) ?
  "5 is in the array" :
  "5 is not in the array"
```

### Changing an item in the middle of the array

You can use the `with` operation to change an item in the middle of the array.
The `with` operation _does not update the existing array_; it gives back a new array with the change made.

The `with` operation takes two parameters (in this order):

- `index`: The index at which to make the change.
- `value`: The new value to insert at the specified index.

```ts
const tonsOfCO2: number[] = [662.74e6, 1.74e9, 1.87e9, 2.9e9, 4.81e9, 6.01e9, 4.71e9];
const updatedTonsOfCO2: number[] = tonsOfCO2.with(3, 3.0e9);
```

In the code above, the value `3.0e9` will be inserted at index `3` in the new array, in place of what was previously at that index.

Just like `at`, you can use negative numbers to count backward. However, an invalid index will cause a runtime error, and stop your program from running further. I.e., your program will crash.

### Obtain a slice of the list

You can use the `slice` operation to obtain a sub-array from an existing array.

The `slice` operation takes two inputs (or "parameters"):

* `start`: The index at which to start slicing,
* `end`: The index _before_ which to stop slicing.

And gives you back a new array containing elements from the original array at `start` to `end - 1`.

```ts
[1, 1, 3, 5, 8, 13, 21].slice(2, 5)
```

The expression above will evaluate to the array `[3, 5, 8]`.

### The spread operator

TypeScript includes a useful operator called the spread operator (`...`).
Its job is to "expand" an array into its individual elements.
This is useful when we use operations that expect individual elements as inputs instead of a single array.

For example: `Math.max` and `Math.min` can be used to find the maximum and minimum in an array of numbers.

```ts
const tonsOfCO2: number[] = [662.74e6, 1.74e9, 1.87e9, 2.9e9, 4.81e9, 6.01e9, 4.71e9];
const maxCO2: number = Math.max(...tonsOfCO2); // 6.01e9
const minCO2: number = Math.min(...tonsOfCO2); // 662.74e6
```

The `Math.max` and `Math.min` functions don't operate on arrays of items.
Instead, they expect (possibly many) individual items as parameters.
If we have an array of items, we can use the spread operator to expand it into individual elements that can then be passed to `Math.max` and `Math.min`.

### Adding a new item to the beginning or end of an array

We can take advantage of the spread syntax to create new arrays with the contents of an existing array.
For example, if we wanted to add new items to an array without modifying our original array.

The code below creates a new array, containing two new values (one at the start, and one at the end):

- CO2 emissions for 1880 (198.68e6 metric tons), and
- A rather wishful guess (from me) about CO2 emissions in 2040 (4.2e9 metric tons).

```ts
const tonsOfCO2: number[] = [662.74e6, 1.74e9, 1.87e9, 2.9e9, 4.81e9, 6.01e9, 4.71e9];
const withNewData: number[] = [198.68e6, ...tonsOfCO2, 4.2e9];
```

The code above would give us back a _new_ array (`withNewData`), and the original array (`tonsOfCO2`) remains unchanged.

{:.callout .todo}
Using `slice` and the spread operator, how would you create a new array with new elements inserted _in the middle_?

## Destructive array operations

{:.callout}
<b class='emph'>Danger zone!</b> The following operations are destructive, i.e., they _mutate the array_ instead of giving back a fresh copy.

These are often convenient and memory-efficient, since you don't end up creating copies of your data.
However, they can lead to hard-to-track-down errors in your program. (A motivating example using these destructive operations follows after this section.)

We will generally avoid using these mutating operations this quarter where possible.
However, they are "idiomatic" in the sense that many examples you see online will use them.
So I want you to know what they mean.

### push

The `push` operation can be used to append items to an array.

```ts
const tonsOfCO2: number[] = [662.74e6, 1.74e9, 1.87e9, 2.9e9, 4.81e9, 6.01e9, 4.71e9];

tonsOfCO2.push(4.2e9); // 2040 🤞🏽
```

After the code above executes, the `tonsOfCO2` array will have an additional item at the end (`4.2e9`). Its `length` will have increased to `8`.

The `push` operation is _both a statement and an expression_.
It has a "side-effect" (the array's contents are changed), and it returns the new length of the array. (In this example, we are not using that returned value.)

### unshift

The `unshift` operation can be used to add items to the beginning of an array.

```ts
const tonsOfCO2: number[] = [662.74e6, 1.74e9, 1.87e9, 2.9e9, 4.81e9, 6.01e9, 4.71e9];

tonsOfCO2.unshift(198.68e6); // 1880
```

It mutates the original array by adding a new item at the beginning (`198.68e6`) and returns the new length of the array.

### pop

The `pop` operation can be used to remove and obtain the last item from the array.

```ts
const tonsOfCO2: number[] = [662.74e6, 1.74e9, 1.87e9, 2.9e9, 4.81e9, 6.01e9, 4.71e9];
const lastItem = tonsOfCO2.pop(); // 4.71e9

// tonsOfCO2 is now [662.74e6, 1.74e9, 1.87e9, 2.9e9, 4.81e9, 6.01e9]
```

Once again, the `pop` operation is _both a statement and an expression_.
It has a "side-effect" (the array's contents are changed), and it returns the item that was removed from the array.

Again, paste the code above into the TypeScript Playground and hover over the `pop` operation.
See that its signature is `number | undefined`.

### shift

The `shift` operation can be used to remove and obtain the first item from the array.

```ts
const tonsOfCO2: number[] = [662.74e6, 1.74e9, 1.87e9, 2.9e9, 4.81e9, 6.01e9, 4.71e9];
const firstItem = tonsOfCO2.shift(); // 662.74e6

// tonsOfCO2 is now [1.74e9, 1.87e9, 2.9e9, 4.81e9, 6.01e9, 4.71e9]
```

Yet again, the `shift` operation is _both a statement and an expression_.
It mutates the array and returns the item that was removed.

Again, paste the code above into the TypeScript Playground and hover over the `shift` operation.
See that its signature is `number | undefined`.

{:.callout .ponder}
When do you suppose `pop` and `shift` might return `undefined`?

### Indexing into an array using `[]` notation

Finally, the `[]` notation can also be used to _mutate_ individual items in an array.

Consider the Beatles array again:

```ts
const beatles: string[] = ["John", "Paul", "George", "Pete"];
```

The `[]` notation behaves a bit like variable names (at least, like variables declared using `let`).
You can use it to read a value, and you can also use it to _change_ a value.

```ts
beatles[3] = "Ringo"; // replace "Pete" with "Ringo"
```

After the line above, the `beatles` array is mutated and is now `["John", "Paul", "George", "Ringo"]`.

As always, TypeScript will perform type enforcements: in this example, when you read a value, you can't treat it as anything but a string, and when you write a value, you can only provide a string. Because the `beatles` array was declared as a `string[]`.

## Arrays are mutable

It bears repeating.

In the `beatles` example, notice that even though `beatles` was declared using `const`, we were still able to change its contents.
This is because `const` only prevents reassignment of the variable itself.
If the variable happens to be _mutable_, it doesn't stop us from mutating it.

So far, arrays are the only mutable data type we've come across. We will see more later this quarter.

**What are some implications of this?**

Suppose you have a function that modifies an element in an array (rather simplistic for now):

```ts
const updateScores = (input: number[]): void => {
  input.pop();
}
```

And another bit of code that finds the minimum score in the `scores` array.

After the following code runs, what do you think the minimum score will be?

```ts
1.| const scores: number[] = [83, 42, 77, 92, 81, 34];
2.| updateScores(scores);
3.| const minimumScore: number = Math.min(...scores);
```

**After Line 1**

In the code above, when line 1 runs, we have declared and initialized a variable called `scores` that _points to_ the array.

<pre class='mermaid'>
flowchart TD
  s["scores"]
  a["[83, 42, 77, 92, 81, 34]"]

  s --> a
</pre>

**After Line 2 (inside `updateScores`)**

When line 2 runs, execution of this sequence pauses so that the `updateScores` function can do its work.
Here's where it gets tricky.

When you pass a value (such as an array) to a function, _the input in the function is pointing to the same value as the argument that was given to it_.

<pre class='mermaid'>
flowchart TD
  s["scores"]
  i["input"]
  a["[83, 42, 77, 92, 81, 34]"]

  s --> a
  i --> a
</pre>

**After the call to `input.pop()`**

Then, because `input` (inside the `updateScores` function) is pointing to the same array as `scores` is (outside the `updateScores` function), any changes made to `input` will also affect `scores`.

<pre class='mermaid'>
flowchart TD
  s["scores"]
  i["input"]
  a["[83, 42, 77, 92, 81]
(Array is mutated:
34 is removed)"]

  s --> a
  i --> a
</pre>

That means any changes that occur inside the function will also affect the array outside the function, and therefore be visible to any portions of your code that use the array.

Consequently, Line 3 (finding the minimum value in the array) will give you different answers depending on whether it comes before or after the call to `updateScores`.

It's important to be aware of whether a function mutates its inputs, and if you're the one writing the function, be **extremely clear** about how you treat your inputs.

1. The best thing is to not mutate your inputs.
2. If you must use destructive operations, make a copy of the array (using the spread operator: `[...array]`) and then work with that instead.
3. If your function's explicit goal is to mutate the array, make that clear in documentation as well as in the way you name the function. For example, TypeScript has two functions for reversing an array: `reverse()` (which mutates the array and reverses it "in place"), and `toReversed()` (which returns a new array that is the reversed version of the original).

---

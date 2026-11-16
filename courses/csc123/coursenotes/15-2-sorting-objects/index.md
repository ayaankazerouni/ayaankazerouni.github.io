---
layout: coursenotes
title: Sorting arrays of objects
---

In the last module, we talked about compound data, i.e, _objects_ in TypeScript.

For example, suppose we have defined a `DollarAmount` type:

```tsx
interface DollarAmount {
  dollars: number,
  cents: number
};
```

Now, suppose we have an array of `DollarAmount` objects.

**First, consider what the _type_ of this array would be.** Our `DollarAmount` is now a _type_ that we can use for values and variables. So we can use the same box-bracket syntax `[]` that we're used to to say that something is an array of `DollarAmount`s.

So let's create an example array:

```tsx
const dollarAmounts: DollarAmount[] = [
  { dollars: 1, cents: 50 },
  { dollars: 2, cents: 75 },
  { dollars: 1, cents: 99 },
  { dollars: 249, cents: 99 }, // Apple AirPods, amirite?
  { dollars: 0, cents: 99 },
  { dollars: 2, cents: 95 } // Tall black coffee at Starbucks
];
```

Suppose I want to figure out the **top 3** `DollarAmount`s in this array. Now, we could manually compute these top 3 using a `for` loop and the reducer pattern that we've studied.
But that would be a fairly complex algorithm to solve this problem. 

Instead, there's a much simpler one:

* Step 1: Sort the array
* Step 2: Use `slice` to grab the last three items in the sorted array.

### Comparing objects

But hold on! To be able to sort an array of `DollarAmount`s, we first need to know how to compare two `DollarAmount`s.
Now you and I can see that it's fairly obvious how to compare two `DollarAmount`s—$1.99 is _clearly_ less than _$2.75_, and it's _clearly_ more than $1.50.

But we need to tell TypeScript this.

We can do this by writing a `compare` function that compares two `DollarAmount`s.

Follow the Design Recipe: What should the inputs and output of this function be?

**Inputs**

Our inputs should be two `DollarAmount` values, since that's what we're comparing.

**Output**

This is a little more tricky. What should the output type of the `compare` function be?

We want our function to compare the first item to the second item.
At first, you might think the output should be a `boolean`, so we can say that the output is `true` if the first amount is greater than the second amount, or `false` otherwise.

But there's a third possible outcome we need to account for: the case where the two dollar amounts are _equal_.

So instead, we'll return a `number`. We'll have the following "contract" for our `compare` method:

* If the first `DollarAmount` is greater than the second `DollarAmount`, we will return a number that's greater than 0 (`> 0`).
* If the first `DollarAmount` is less than the second `DollarAmount`, we will return a number that's less than 0 (`< 0`).
* If the two `DollarAmount`s are equal, return 0
 
Note that we don't actually care _what_ the returned numbers are: we just care that they're appropriately positive, negative, or 0.

So we're ready to write our function.

Comparing `DollarAmount`s is straightforward: first compare their `dollars` values, and if those are equal, then compare their `cents` values.

Since our goal is to return a positive number, a negative number, or 0, we can use subtraction to get the numbers we're looking for.

```tsx
const compare = (d1: DollarAmount, d2: DollarAmount): number => {
  const dollarDifference: number = d1['dollars'] - d2['dollars'];

  if (dollarDifference == 0) {
    // their dollars are the same, so compare cents
    return d1['cents'] - d2['cents'];
  } else {
    return dollarDifference;
  }
}
```

The function above returns a positive number if `d1` is "greater than" `d2`, a negative number if `d1` is "less than" `d2`, and 0 if `d1` is equal to `d2`.

Let's consider some example calls to our `compare` to see what the output should be.

Let's say that we have two dollar amounts:
* `compare({ dollars: 1, cents: 99 }, { dollars: 2, cents: 75 })` should give us `-1`. (The first amount is less than the second amount.)
* `compare({ dollars: 1, cents: 99 }, { dollars: 1, cents: 50})` should give us `49`. (The first amount is greater than the second amount.)
* `compare({ dollars: 2, cents: 50 }, { dollars: 2, cents: 50 })` should give us `0`. (The first amount is equal to the second amount.)

### Back to sorting

Now that we know how to compare two `DollarAmount`s, we can turn back to our original problem.

Suppose we have the following list of `DollarAmount`s, and we want to sort it:

```tsx
const dollarAmounts: DollarAmount[] = [
  { dollars: 1, cents: 50 },
  { dollars: 2, cents: 75 },
  { dollars: 1, cents: 99 },
  { dollars: 249, cents: 99 }, // Apple AirPods, amirite?
  { dollars: 0, cents: 99 },
  { dollars: 2, cents: 95 } // Tall black coffee at Starbucks
];
```

We can use the `sort` function to sort this array.

The `sort` function, like `splice`, modifies the underlying array and sorts its values.

We can call it on the array, just like `splice` or `slice` or the other array functions we've talked about.


`dollarAmounts.sort(_____)`


But what do we put in the blank above? Like I said before, to "sort" a list of things, the main problem we need to solve is—how to compare any two items in the list? This is where the `compare` function that we wrote comes in.

We can sort the above array by doing the following:

```tsx
dollarAmounts.sort(compare);
```

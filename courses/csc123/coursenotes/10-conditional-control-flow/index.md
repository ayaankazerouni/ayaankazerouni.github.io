---
layout: coursenotes
title: Conditional control flow
mermaid: true
---

- s
{:toc}

## Control flow

**Control flow** is the order in which expressions and statements will execute in your program. And you’ve already seen it in action!

For example, consider the following functions. ``areaFromRadius`` computes the area of a circle given its radius. ``areaOfAnnulus`` computes the area of an annulus (a ring shape made up of two concentric circles), given the radii of the two circles.

```ts
/**
* Compute the area of a circle, given its radius.
*/
const areaFromRadius = (r: number): number => {
  return Math.PI * r * r;
}

/**
* Compute the area of an annulus, given the radii of the inner circle
* and outer circle.
*/
const areaOfAnnulus = (innerRadius: number, outerRadius: number): number => {
  const innerArea: number = areaFromRadius(innerRadius);
  const outerArea: number = areaFromRadius(outerRadius);
	
  return outerArea - innerArea;
}
```

With the two function definitions in hand, let's think about evaluating the following expression:

```ts
areaOfAnnulus(3, 5);
```

When we encounter the expression `areaOfAnnulus(3, 5)`, we know that we need to execute the body of the `areaOfAnnulus` function.
That is, we _give control to the `areaOfAnnulus` function_, along with the values `3` and `5` for the two parameters.

Next, consider the code for the `areaOfAnnulus` function.
We know that when we hit the first line, execution in `areaOfAnnulus` will “pause” while the call to `areaFromRadius` is resolved.
This can be referred to as _control being transferred_ to `areaFromRadius`.

When the call `areaFromRadius(innerRadius)` returns, control is returned to the `areaOfAnnulus` function.
The same thing will happen for the next line, which computes the area of the outer circle.

The rules by which control is transferred from one statement/expression to another are referred to as **control flow**.
Typically, control flows from one statement to the next in the order in which they appear.
But, as we see in the example above, control can also be transferred between functions.

In this lesson we'll learn about another type of control flow: **conditional statements**.

## `if` statements

Conditional statements allow us to check `boolean` conditions and execute different blocks of code depending on whether those conditions are `true` or `false`.
The construct you will use most often for this task is the `if` statement.

`if` statements have the following structure:

```
if (booleanExpression) {
  BLOCK A
}

BLOCK D 
```

The `if` statement will always involve a `boolean` expression, i.e., any expression that evaluates to `true` or `false`.

Next, we have a block of code (`BLOCK A` in the example above) to be executed only if that expression evaluates to `true`.
This is referred to as **the "then" block**.
(So that we can read it as "if the condition is true, THEN do this").

If the boolean expression evaluates to `false`, the then block (`BLOCK A` above) is simply skipped, and execution moves on to the code after the if statement (`BLOCK D` in the example above).

Note that `BLOCK D` in the example above is always executed. That is, these are the possible paths through the example above:

<pre class='mermaid'>
graph TD;
    bool[booleanExpression] --is true--> A[BLOCK A];
    A --is done--> D;
    bool --is false--> D[BLOCK D];
</pre>

Only one path in the diagram above can be taken in a single execution of the program.

## `if-else`

Often, in addition to the then block, you want to specify a block of code to run if the condition is false.
Sort of like an “otherwise” clause to your conditional check.

```
if (booleanExpression) {
  BLOCK A
} else {
  BLOCK B
}

BLOCK D
```

If the `booleanExpression` evaluates to `true`, then `BLOCK A` is executed, as we saw above.
If it evaluates to `false`, then `BLOCK B` is executed.
In either case, execution moves on to `BLOCK D` once the entire if-else statement has concluded.

The example above also has two possible execution paths:

<pre class='mermaid'>
graph TD;
    bool[booleanExpression] --is true--> A[BLOCK A];
    A --is done--> D[BLOCK D];
    bool --is false--> B[BLOCK B];
    B --is done--> D[BLOCK D];
</pre>

Note that execution will _always_ go through at least `BLOCK A` or `BLOCK B`—a condition is either `true` or `false`, so one of the blocks must execute.

Again, only a single path from `booleanExpression` to `BLOCK D` can be taken in a single execution of the program.
That is, the then block OR the else block is guaranteed to execute. But never both.

As an example, consider the following function, which checks if a given number is odd or even.

```ts
/**
* Return "EVEN" if the number is odd, "ODD" otherwise.
*/
const oddOrEven = (num: number): string => {
  if (num % 2 === 0) {
    return "EVEN";
  } else {
    return "ODD";
  }
}

oddOrEven(10) // "EVEN"
oddOrEven(17) // "ODD"
```

When we call `oddOrEven(10)`, the boolean expression `num % 2 === 0` evaluates to `true`, because `10 % 2` does in fact equal `0`. Therefore, control goes to the line `return "EVEN"`, and the function returns `"EVEN"`.

When we call `oddOrEven(17)`, the boolean expression `num % 2 === 0` evaluates to `false`, because `17 % 2` does NOT equal `0`. Therefore, control goes to the line return `"ODD"`, and the function returns `"ODD"`.

{:.callout .note}
The `oddOrEven` example above is a long-winded way of saying: `num % 2 === 0 ? "EVEN" : "ODD"`. You don't always need to reach for `if` statements. The [ternary operator](../05-data-types#the-ternary-operator) is a useful shorthand for such cases.

## if-else-if

Finally, sometimes you want to support more than two possible outcomes for some condition.
Here is where “if-else-if ladders” are useful.
They have the following structure:

```
if (booleanExpression) {
  BLOCK A
} else if (anotherBooleanExpression) {
  BLOCK B
} else {
  BLOCK C
}

BLOCK D
```

Code that looks like the above have the following possible execution paths:

<pre class='mermaid'>
graph TD;
    bool[booleanExpression]
    bool2[anotherBooleanExpression]
    a[BLOCK A]
    b[BLOCK B]
    c[BLOCK C]
    d[BLOCK D]

    bool--is true-->a
    bool--is false-->bool2
    bool2--is true-->b
    bool2--is false-->c
    a--is done-->d
    b--is done-->d
    c--is done-->d
</pre>

* Path 1: `booleanExpression` is `true`, so `BLOCK A` executes, and then the program continues with `BLOCK D`. It doesn’t matter whether `anotherBooleanExpression` is `true` or `false`: it will not be checked.
* Path 2: `booleanExpression` is `false`, so `anotherBooleanExpression` is checked. It is found to be `true`, so `BLOCK B` executes, and then the program continues with `BLOCK D`.
* Path 3: `booleanExpression` is `false` and `anotherBooleanExpression` is also `false`. So the `else` clause is invoked, i.e., `BLOCK C` is executed, after which the program continues with `BLOCK D`.

As usual, only one of the possible paths above can be taken in a single execution of the program.
That is, even if _both_ `booleanExpression` and `anotherBooleanExpression` are `true`, only the then block for `booleanExpression` will be executed.

You can have any number of `else if` clauses.
They will be checked in the order in which they appear: if any one is found to be `true`, the following ones are not checked.
If none of the conditions are `true`, then the else clause is executed. Same as before, only one clause will be executed.

## An example

Consider the following.
In California, a would-be driver is eligible for a learner’s permit at the age of 16, and a full license at the age of 17.
Let’s write a function to check what type of license an individual can get, if any, based on their age.

```tsx
const typeOfLicense = (age: number): string => {
  if (age < 16) {
    return "NO LICENSE";
  } else if (age >= 16) {
    return "LEARNER PERMIT";
  } else {
    return "FULL LICENSE";
  }
}
```

{:.callout .todo}
There is a mistake in the function above. Can you spot it? Take a second and think about it.
Trace the function with some example inputs like `typeOfLicense(12)` and `typeOfLicense(18)`.
What is the output you expect? Does the actual output match that output?

- We want the call `typeOfLicense(12)` to return the value `"NO LICENSE"`. The check `age < 16` will be satisfied and our function will correctly do what we expect. It will return `"NO LICENSE"`.
- We want the call `typeOfLicense(16)` to return the value `"LEARNER PERMIT"`. We *won't* satisfy the `age < 16` check, and we'll pass the `age >= 16` check. Our function will successfully return `"LEARNER PERMIT"`.
- Finally, consider the call `typeOfLicense(17)`. We **_want_** it to return the value `"FULL LICENSE"`. During execution, we will fail the check `age < 16` as expected, but we will *pass* the check `age >= 16`! And then, because only one clause can be executed, `"LEARNER PERMIT"` will be returned and the function will finish.

**So what went wrong?** The issue is that there are age values that would pass multiple conditional checks in our code. Control goes through our conditional statements in the order in which they’re specified. The second it finds a condition that evaluates to true, control will execute that clause and skip the rest of the conditions, even if that doesn’t make sense for the problem we’re trying to solve.

In the example above, the check for `age >= 16` will incorrectly match ages that should be classified as `"FULL LICENSE"`.

**Therefore, the order of conditions is important in if-else-if ladders.**

So, a correct version of the `typeOfLicense` function is as follows.

```ts
const typeOfLicense = (age: number): string => {
  if (age >= 17) {
    return "FULL LICENSE";
  } else if (age >= 16) {
    return "LEARNER PERMIT";
  } else {
    return "NO LICENSE";
  }
}
```

Now, it wouldn't matter if an age would pass multiple checks, due to the way we've ordered our conditional checks.

Let’s consider the call `getGetLicense(21)`.

We first check `age >= 17` and this check passes, since `21` is greater than or equal to `17`. We correctly return `"FULL LICENSE"`. It doesn’t matter that the check `age >= 16` is also `true` for `21`, because we never reach that if statement—control has already moved on beyond the `if-else-if` ladder.

In practice, snippets like the one above—where a value is being computed based on some condition—can be written using [ternary expressions](../05-data-types#the-ternary-operator) like we've seen in previous modules.

Here's the same function written both ways—which do you prefer?

<div style='display: flex; flex flow: row wrap; justify-content: space-around;'>
<div markdown=1>
**If-else-if**
```ts
const typeOfLicense = (age: number): string => {
  if (age >= 17) {
    return "FULL LICENSE";
  } else if (age >= 16) {
    return "LEARNER PERMIT";
  } else {
    return "NO LICENSE";
  }
}
```
</div>
<div markdown=1>
**Ternary expressions**
```ts
const typeOfLicense = (age: number): string => {
  return age >= 17 ? "FULL LICENSE"
    : age >= 16 ? "LEARNER PERMIT"
    : "NO LICENSE";
}
```
</div>
</div>

Conventional wisdom is that if you have more than one condition to check, use `if-else-if` ladders.
They are more readable.
(However, I couldn't find any empirical evidence for this.)

You may also have written the function using compound Boolean conditions.
While technically correct, it's generally better to reduce the number of checks you perform if you can, because each conditional check is a condition you also need to test.

```tsx
const typeOfLicense = (age: number): string => {
  if (age < 16) {
    return "NO LICENSE";
  } else if (age >= 16 && age < 17) {
    return "LEARNER PERMIT";
  } else {
    return "FULL LICENSE";
  }
}
```

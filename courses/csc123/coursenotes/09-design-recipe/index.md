---
layout: coursenotes
title: The Function Design Recipe
---

<small>This page presents (a version of) the Function Design Recipe from the textbook [How to Design Programs](http://htdp.org/). Specifically it is a TypeScript re-telling of [this document](https://docs.racket-lang.org/htdf/) from the Racket website.</small>

We have so far learned about _what functions are_ and _how to read code involving functions_.
However, to build software systems, you also need to _design and implement functions_.

When faced with a programming problem prompt, it can be tempting to _just start coding_.
However, this can lead to all sorts of trouble:

- You might have misunderstood the problem.
- There might be edge cases you have not considered.
- You might end up writing code that is difficult to understand or explain (to others or even to yourself several weeks from now).

This page presents a recipe (a set of steps) to follow when designing and implementing functions.
When you're working on a problem and you get stuck, **try following this recipe before asking for help**.
Even if that doesn't get you unstuck, this recipe can help you articulate the specific step with which you need help.

<div style='border: 1px solid var(--font-color); padding: 1em; border-radius: 5px;' markdown=1>
For the remainder of this document, let's use the following programming problem prompt as a running example:

**Write a function that takes in a temperature in degrees Fahrenheit and converts it to degrees Celsius.**
</div>

**Steps in the Design Recipe**

- s
{:toc}

## 1. Function signature

The **signature** of your function is everything that describes _what_ your function does, but not _how_ it does it.
This includes:

- A purpose statement describing what the function does
- The name of the function
- The data type(s) of its parameter(s)
- The data type of its return value

For our function, the pieces would be:

- A purpose statement: "Converts a temperature in degrees Fahrenheit to degreesCelsius."
- The name of the function: `fahrenheitToCelsius`
- The data type of its parameter(s): `number`
- The data type of its return value: `number`

We can write all of this down to build up our function.

```ts
/**
 * Converts a temperature in degrees Fahrenheit to degrees Celsius.
 */
const fahrenheitToCelsius = (fahrenheit: number): number => {

};
```

The purpose statement is written as a comment above the function.
Notice that it doesn't give information about the formula for the conversion.
It only says WHAT the function does, not HOW it does it.

The name, parameter type, and return type are included in the function's declaration and type annotations.
(The benefit of explicitly including these annotations in TypeScript is that our code becomes _self-documenting_.)

## 2. Examples

We have already said what our function is expected to do.
However, to make this "what" explicit, we can include **examples.**

In the comment above the function, include a few examples showing what **the correct output** of the function is for **an example input** (or inputs, if the function has multiple parameters).
For example:

```ts
/**
 * Converts a temperature in degrees Fahrenheit to degrees Celsius.
 * fahrenheitToCelsius(86) should be 30
 */
const fahrenheitToCelsius = (fahrenheit: number): number => {

};
```

There is no specific formatting requirement for these examples.
What's important is that they are clear and precise.

Examples are effective for two reasons:

- They help others understand your code.
- They can help _you_ ensure that you've understood the problem correctly, before you invest a lot of time in implementing a solution.

## 3. Implementation template

In this step, we finally shift our focus to the body of the function.
Going from the signature and examples to a working implementation can be a big leap.
It's often useful to break down our plan for solving the problem by writing down a *template.*

For our `fahrenheitToCelsius` function, the implementation is rather small: we need to use the formula for converting a temperature from Fahrenheit to Celsius.

```ts
/**
 * Converts a temperature in degrees Fahrenheit to degrees Celsius.
 * fahrenheitToCelsius(86) should be 30
 */
const fahrenheitToCelsius = (fahrenheit: number): number => {
  // Use the formula (F - 32) * 5/9 to convert `fahrenheit` to a value in celsius
  // Return the result
};
```

Again, there is no specific formatting requirement.
I like to write steps as comments in my code—I often remove the comments when the time comes for implementation.

Templates tend to be more useful when a function is more complex, e.g., when it requires more steps, or when the input data is more complex.

## 4. Implementation

In this step, we fill out the function body.
The template from the previous step should give us our implementation plan.
If you find yourself not knowing how to implement a specific step, consider going back to the template and breaking down the step into smaller steps.

```ts
/**
 * Converts a temperature in degrees Fahrenheit to degrees Celsius.
 * fahrenheitToCelsius(86) should be 30
 */
const fahrenheitToCelsius = (fahrenheit: number): number => {
  // Use the formula (F - 32) * 5/9 to convert `fahrenheit` to a value in celsius
  // Return the result
  return (fahrenheit - 32) * 5 / 9;
};
```

## 5. Testing

We're not done yet! We still need to be sure that our function works. That means we need to _test_ it.

We can test our function manually by calling it with different inputs, **knowing what we expect the outputs to be**, and checking that our function's output matches our expectations.

We can express our tests as _expectations_ for what function should do.

The code below compares our _actual value_ (the value returned by calling the function) to our _expected value_ (the literal value we write down).

For example,

- Actual value: Whatever `fahrenheitToCelsius(86)` evaluates to
- Expected value: 30

We can compare the two using the `===` operator to check if they're equal: `fahrenheitToCelsius(86) === 30`.

Even better, we can put that comparison in a place where we'll be alerted if it evaluates to `false`, i.e., if our implementation doesn't match our expectation.

We can do this using the `console.assert` statement:

```ts
console.assert(fahrenheitToCelsius(86) === 30);
```

`console.assert` takes any boolean expression as a parameter, and if the expression is `false`, it prints an error message when we run our tests.
It won't print anything if our test passes, i.e., if the boolean expression was `true`.

Here are a couple more example tests:

```ts
console.assert(fahrenheitToCelsius(32) === 0);
console.assert(fahrenheitToCelsius(212) === 100);
```


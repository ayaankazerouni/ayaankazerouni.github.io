---
layout: coursenotes
title: Function comprehension 
---

We continue with our pattern for understanding: by considering data and allowed operations on that data.

We will focus on two aspects of functions as they relate to operations.
First, what are the operations that can be performed on functions?
Second, how do functions relate to operations?

There is a broader discussion to be had regarding the question **Are functions themselves data?** We will revisit that question later this term.

## Steps of evaluation 

Given the following function definition:

```ts
const f = (x: number): number => {
  return (x * x) + 34;
};
```

What does the following expression evaluate to?

```ts
f(2)
```

Did you determine that it evaluates to 38? If yes, good. If not, that's ok. Either way, let us explore the steps of evaluation so that we can better understand what happens when a function is called.

### Evaluating a function call 

Again, consider the following code:

```tsx
const f = (x: number): number => {
  return (x * x) + 34;
}

f(2)
```

When working with functions, we will track not only the **steps of evaluation** but also information that is **known** based on the code.

For instance, from this code we know the definition of function `f` and, it turns out, that the call `f(2)` evaluates to *something*.
We will track the **Known information** along with our steps of evaluation.

Below is a table that tracks the evaluation steps for this function call.
Step 1 starts us off.

To start with, we don't have a value for `x`. `x` gets a value only once we start evaluating the function call `f(2)` (Step 2).

At each step, the (sub-)expression or statement that's currently being evaluated is <u class='hlt'>underlined and highlighted</u>.

| Step | Under evaluation                                 | Known information                                                                                                 |
| ---- | ------------------------------------------------ | ----------------------------------------------------------------------------------------------------------------- |
| 1    | <u class='hlt'><code>f(2)</code></u>       | <code>const f = (x: number): number => {<br>&nbsp;return (x * x) + 34;<br>}<br><br>x = ?<br><br>f(2) = ?</code>         |
| 2    | <code>return (<u class='hlt'>x</u> * x) + 34</code> | <code>const f = (x: number): number => {<br>&nbsp;return (x * x) + 34;<br>}<br><br>x = 2<br><br>f(2) = ?</code>         |
| 3    | <code>return (2 * <u class='hlt'>x</u>) + 34</code> | <code>const f = (x: number): number => {<br>&nbsp;return (x * x) + 34;<br>}<br><br>x = 2<br><br>f(2) = ?</code>         |
| 4    | <code>return (<u class='hlt'>2 * 2</u>) + 34</code> | <code>const f = (x: number): number => {<br>&nbsp;return (x * x) + 34;<br>}<br><br>x = 2<br><br>f(2) = ?</code>         |
| 5    | <code>return <u class='hlt'>4 + 34</u></code>       | <code>const f = (x: number): number => {<br>&nbsp;return (x * x) + 34;<br>}<br><br>x = 2<br><br>f(2) = ?</code>         |
| 6    | <code><u class='hlt'>return 38</u></code>           | <code>const f = (x: number): number => {<br>&nbsp;return (x * x) + 34;<br>}<br><br>x = 2<br><br>f(2) = <b>38</b></code> |

The result of the function call is determined by the `return` statement. Once the value to be returned is determined, then the result of the function is known (as shown, in bold, in the last row).

## Another example

To emphasise the point, let's work through another example.

```tsx
const f = (x: number): number => {
    return g(x) + g(x + 1);
}

const g = (y: number): number => {
    return y * (y - 1);
}

f(2)
```

This call to function `f` looks very similar to the previous evaluation, and in many respects it is.
The steps of evaluation for the function call itself are the same for every function:

* Determine the values of the parameters,
* Bind those values to the corresponding parameters (i.e., substitute those values in place of the parameters), and
* Evaluate the function's body, that is, walk through the computations defined within the function.

### Evaluation of f(2)

We begin, as before, with the evaluation of the function call. The complete evaluation is lengthy, so the presentation is split into pieces, but you will soon discover another important reason for this split.

| Step | Under evaluation | Known |
| -- | -- | -- |
| 1 | <code>f(2)</code> | <code>const f = (x: number): number => {<br>&nbsp;return g(x) + g(x + 1);<br>}<br><br>const g = (y: number): number => {<br>&nbsp;return y * (y - 1);<br>}<br><br>f(2)</code> |
| 2 | <code>x = 2<br>return g(<u>x</u>) + g(x + 1)</code> | <code>const f = (x: number): number => {<br>&nbsp;return g(x) + g(x + 1);<br>}<br><br>const g = (y: number): number => {<br>&nbsp;return y * (y - 1);<br>}<br><br>f(2) = ?</code> |
| 3 | <code>x = 2<br>return g(2) + g(<u>x</u> + 1) | <code>const f = (x: number): number => {<br>&nbsp;return g(x) + g(x + 1);<br>}<br><br>const g = (y: number): number => {<br>&nbsp;return y * (y - 1);<br>}<br><br>f(2) = ?<br>g(2) = ?</code> |

In step 2, we need to deal with the line `g(x) + g(x + 1)`. Recall that when functions are "called", they can be dealt with as *expressions*. This means that the entire line `g(x) + g(x + 1)` should be evaluated as an expression. We do this by first evaluating each of its sub-expressions, starting with `g(x)`.

The variable `x` determines the value that is given to this call to function `g`. The variable itself is not passed to the function. Instead, the variable `x` is evaluated first to determine its value (as we would do if, say, we were simply evaluating the expression `x + 1`).

But what comes next?

As demonstrated when evaluating arithmetic expressions (such as `x + y`), the left operand is evaluated before the right and then the result of the arithmetic can be determined.
Similarly, Step 3 must evaluate `g(2)` as described above.

This is, of course, another function call.
This new call must be evaluated before the evaluation of `f(2)` can complete.
Note, as well, the addition of `g(2)` to the **Known information** in the table.
We know that `g(2)` evaluates to *something*—we need to work out what.

### Evaluating the nested function call

Let us temporarily suspend the evaluation of the call `f(2)` and consider the call `g(2)`.

In Step 1 below, all we know is that `g(2)` evaluates to something.
So we need to expand the function call and consider the function body. This means that the parameter now has a value. 
In Step 2, we have the additional information that `y = 2`.
The evaluation continues like we've seen before.

| Step | Under evaluation                                             | Known                                                                                                                                                                                                           |
| ---- | ------------------------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 1    | <code>g(2)</code>                                            | <code>const f = (x: number): number => {<br>&nbsp;return g(x) + g(x + 1);<br>}<br><br>const g = (y: number): number => {<br>&nbsp;return y * (y - 1);<br>}<br><br>f(2) = \<in progress\><br>g(2) = ?</code>     |
| 2    | <code>y = 2</code><br><code>return <u>y</u> * (y - 1)</code> | <code>const f = (x: number): number => {<br>&nbsp;return g(x) + g(x + 1);<br>}<br><br>const g = (y: number): number => {<br>&nbsp;return y * (y - 1);<br>}<br><br>f(2) = \<in progress\><br>g(2) = ?</code>     |
| 3    | <code>y = 2</code><br><code>return 2 * (<u>y</u> - 1)</code>  | <code>const f = (x: number): number => {<br>&nbsp;return g(x) + g(x + 1);<br>}<br><br>const g = (y: number): number => {<br>&nbsp;return y * (y - 1);<br>}<br><br>f(2) = \<in progress\><br>g(2) = ?</code>     |
| 4    | <code>y = 2</code><br><code>return 2 * (<u>2 - 1</u>)</code>  | <code>const f = (x: number): number => {<br>&nbsp;return g(x) + g(x + 1);<br>}<br><br>const g = (y: number): number => {<br>&nbsp;return y * (y - 1);<br>}<br><br>f(2) = \<in progress\><br>g(2) = ?</code>     |
| 5    | <code>y = 2</code><br><code>return <u>2 * 1</u></code>        | <code>const f = (x: number): number => {<br>&nbsp;return g(x) + g(x + 1);<br>}<br><br>const g = (y: number): number => {<br>&nbsp;return y * (y - 1);<br>}<br><br>f(2) = \<in progress\><br>g(2) = ?</code>     |
| 6    | <code>y = 2</code><br><code><u>return 2</u></code>            | <code>const f = (x: number): number => {<br>&nbsp;return g(x) + g(x + 1);<br>}<br><br>const g = (y: number): number => {<br>&nbsp;return y * (y - 1);<br>}<br><br>f(2) = \<in progress\><br><b>g(2) = 2</b></code> |

Recall that we were in the middle of evaluating `g(x) + g(x + 1)` in the function `f`. Since we called `f(2)`, we know that `x = 2` inside `f`.
We also now know that `g(2)` gives us the value `2`.

So we have `2 + g(x + 1)`. We can continue evaluating the rest of this expression, following the same steps that we have outlined.
We need to start by evaluating the sub-expression `g(x + 1)`.

Following the steps we've learned:

* First, substitute in the value 2 in place of `x`. This gives us `g(2 + 1)`, which can be reduced to `g(3)`.
* We can follow the same evaluation steps once again trace execution of the `g` function. This time, we are substituting in the value `3` for the parameter `y` in the definition of `g`.
* In the `g` function, we have `y * (y - 1)`. Substituting in the value `3`, we get `3 * (3 - 2)`, which evaluates to `6`. This value is returned back to the function `f`.
* Back in function `f`, we had `2 + g(x + 1)`. After evaluating `g(x + 1)` (with `x = 2`), we ended up with the expression `2 + 6`, which evaluates further to `8`.
* `8` is a value that cannot be evaluated any further, and so the function `f` can return this value.

Therefore, at the end of the following code:

```tsx
const f = (x: number): number => {
  return g(x) + g(x + 1);
}

const g = (y: number): number => {
  return y * (y - 1);
}

f(2)
```

We can say f(2) gives us the value 8.

## That's....a lot

The level of details in tracking these evaluation steps as just presented can be a bit daunting. This is presented not because you are expected to write such steps explicitly (certainly not frequently) but rather to emphasize the very important individual steps and considerations involved. These are summarized below.

* The arguments to a function call are evaluated before the call begins (we need to pass values).
* The values from these arguments are bound to the named parameters (by corresponding position from left-to-right).
* The evaluation of a function call is paused if the function makes another call.
* The expression within a return statement must be evaluated to determine the value to be returned (the result of the function).
* A function call is an expression that evaluates to the returned value.

---

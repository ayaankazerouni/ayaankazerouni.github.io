---
layout: coursenotes
title: Expressions and Data Types in TypeScript
mermaid: true
---

## Overview
{:.no_toc}

In the previous lessons, we've talked about data, the kinds of operations we can do with them, and some rules for evaluating expressions.
For example, we learned about expressions involving numbers, and also considered the idea that data can take many forms.
Today we will make some of those concepts more concrete by embodying them in TypeScript.

Values in TypeScript can take on different **data types**.

<div class="callout">
A <strong>data type</strong> defines two things:
<ul>
<li>the set of allowed values, and</li>
<li>the operations that can be performed on those values.</li>
</ul>
</div>

There are three _primitive_ data types in TypeScript. 
We call them "primitive" because these are the basic building blocks for more complex types we will encounter later.
We will cover them in this lesson.

## Contents
{:.no_toc}

* s
{:toc}

You can explore the example expressions in this lesson in your browser's console.
Press <kbd>Cmd/Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>I</kbd> to open your browser's Developer Tools, then navigate to the "Console" tab. (If you're using Safari, see [these instructions](https://devtoolstips.org/tips/en/enable-safari-devtools/){:target="_blank"}).

**However, note that the browser Consoles use JavaScript. So there's no type checking before you hit <kbd>Enter</kbd>!**


## `number`

The `number` type represents numeric values like `8`, `-2`, and `0.45`.
Additionally, the `number` type defines some named values:

- `Infinity` and `-Infinity`: These represent positive and negative infinity, respectively.
- `NaN`: This stands for "Not a Number". It represents an unrepresentable value, such as the result of dividing by zero.

Try out some math expressions in your Console to get a sense for evaluation rules. (Hit <kbd>Enter</kbd> after each one.)

```js
-5
2 + 8
(6 + 4) / 4
4 + 3 - 5
1 / 3

1e6 / 1000 // Scientific notation

Infinity + 10 // What do you think will happen here?
45 / Infinity
0 / 0
Math.PI
```

TypeScript allows certain operations to be performed with numbers.

First, arithmetic as we've seen above. These operate on `number`s and give `number`s in return.
The _values_ (or expressions) on which an operator operates are called _operands_.

* Addition: `2 + 8`
* Subtraction: `4 - 3`
* Multiplication: `5 * 6`
* Division: `10 / 2`
* Exponentiation: `2 ** 3` (i.e., 2<sup>3</sup>)
* Modulus: `5 % 2`  (i.e., the remainder of 5 divided by 2)

TypeScript also allows a number of operations on `number`s that *don't* return a `number`.
Chief among these are the **relational operators**.
They are used to tell us about the relationship between two values.

A **relational operator** operates on two `number`s and gives back a `boolean` value.
For example,

* `5 < 10` (is 5 **less than** 10? `true`)
* `5 > 10` (is 5 **greater than** 10? `false`)
* `7 <= 7` (is 7 **less than or equal to** 7? `true`)
* `7 >= 7` (is 7 **greater than or equal to** 7? `true`)
* `5 === 10` (is 5 **equal to** 10? `false`)
* `5 !== 10` (is 5 **not equal to** 10? `true`)

The [Math](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math){:target="_blank"} library in TypeScript also defines a number of additional operations that can be performed on numbers.
Some examples are:

* `Math.round(4.2)` This will round the number to the nearest integer.
* `Math.abs(-10)` This will return the absolute value of the number.
* `Math.sqrt(144)` This will return the square root of the number.
* ...and many more

## `string`

The `string` type is used to represent textual data like `"hello"`, `"TypeScript"`, and `'123'`.

`string`s in TypeScript are enclosed in either double quotes (`"`) or single quotes (`'`).

```js
"hello"
'TypeScript'
'CSC 123: Community Action Computing'
"false"
```

It doesn't matter whether you use double or single quotes, but you need to be consistent within a given `string`.
The use of multiple quote types is especially useful when you need to include a quote character within the string itself.

<small>[Hello, Goodbye](https://www.youtube.com/watch?v=rblYSKz_VnI){:target="_blank"}</small>
```js
"You say 'Yes'"

'I say "No"'

"You say 'why'"

'I say "I don\'t know"'
```

When things get out of hand and you've used up all your quote types, you can also "escape" the quote inside a string using the backslash character (`\`).
That way, the quote character is treated as a literal character (it is part of the `string`), and is not treated as the end of the `string`.

You can _also_ enclose `string`s in backticks (`` ` ``).
These are typically used when you want to include computed values inside a string (you will sometimes see this referred to as "interpolation" or "template literals").
For example:

```js
`The square root of 144 is ${Math.sqrt(144)}.`.
```

The expression above will give the value:

```
"The square root of 144 is 12."
```

Any valid TypeScript expression can go inside the `${...}`.
You could use the backtick syntax even without interpolation, but this is less common (and goes against code style conventions).

### String operations

`string`s in TypeScript have a `length` property that tells you how many characters there are in the `string`.

```js
"hello     ".length // Try this in the Console
```

TypeScript defines a number of other operations for `string`s.

First, the relational operators that we saw for `number`s can also be used with `string`s.
I.e., `<`, `>`, `<=`, `>=`, `===`, and `!==`.

Obviously, it is not meaningful to ask whether one `string` is "less than" or "greater than" another `string`.
So in this context, these operators refer to the alphabetic ordering between `string`s.

For example:

* `"hello" < "world"` (does "hello" **come before** "world" alphabetically? `true`)
* `"hello" > "world"` (does "hello" **come after** "world" alphabetically? `false`)
* `"hello" <= "hello"` (does "hello" **come before or is it equal to** "hello"? `true`)
* `"hello" >= "hello"` (does "hello" **come after or is it equal to** "hello"? `true`)
* `"hello" === "world"` (does "hello" **equal** "world"? `false`)
* `"hello" !== "world"` (does "hello" **not equal** "world"? `true`)

Other `string` operations operate as follows (assume that `str` here is a name given to a string value):

`str.operation()`

Some examples include:

* `str.toUpperCase()` This gives back a copy of `str` with all characters in upper case.
* `str.toLowerCase()` This gives back a copy of `str` with all characters in lower case.
* `str.trim()` This gives back a copy of `str` with whitespace removed from both ends.

Other operations might look like 

`str.operation(arg1, arg2)`, where `arg1` and `arg2` are bits of data needed for the operation to work.

Some examples include:

**`str.includes(searchString)`** — This checks if `searchString` is found within `str` and returns `true` or `false`. In this example, note that `searchString` is a _name_ given to some `string` value.

**`str.at(index)`** — This returns the character at the specified `index` or position in the string. For example, `"hello".at(1)` would return the character `"e"`. To get the first character, you would say `"hello.at(0)"`.

Many more string operations are defined in the [TypeScript standard library](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/prototype){:target="_blank"}.

One key thing to notice is that `string` operations NEVER modify the original `string`. That is, `string`s in TypeScript are **immutable**.

## `boolean`

Finally, the `boolean` type represents a logical value.
It has only two possible values: `true` and `false`.

We have already seen other operations that return `boolean` values, such as the relational operators using `string` and `number`.

There are also **logical operators** that operate on `boolean` values and return `boolean` values.

* `&&` — Logical AND. Checks if *both* sides of the expression are `true`.
* `||` — Logical OR. Checks if *either* side of the expression is `true`.
* `!` — Logical NOT. Inverts the truth value.

They operate according to the following rules.
Suppose you have two `boolean` values `A` and `B`.
For different values of `A` and `B`, here are the results of these logical operations.

| A     | B     | A && B | A \|\| B | !A    |
|-------|-------|--------|--------|-------|
| `true`  | `true`  | `true`   | `true`   | `false` |
| `true`  | `false` | `false`  | `true`   | `false` |
| `false` | `true`  | `false`  | `true`   | `true`  |
| `false` | `false` | `false`  | `false`  | `true`  |

### The ternary operator

So far, we have seen _binary_ operators for `boolean` values, i.e., operators that take two operands, and a _unary_ operator that only has one operand (e.g., `!A`).

However, there is also a _ternary_ operator that takes three operands.

The syntax for the ternary operator is as follows:

```js
boolExpr ? expr1 : expr2
```

- `boolExpr` _must_ be a `boolean` expression. It can be a literal `true` or `false`, or it can a longer expression that evaluates to `true` or `false`.
- If `boolExpr` evaluates to `true`, then the entire expression evaluates to `expr1`.
- If `boolExpr` evaluates to `false`, then the entire expression evaluates to `expr2`.
- There are no restrictions on the data types of `expr1` and `expr2`.

Because `expr1` and `expr2` are themselves expressions, they can themselves be longer ternary expressions.
For example, suppose you have a variable called `age`, that represents some person's age in years.
Based on their age, you want to determine what kind of driver's license they can receive, according to the following rules:

- If they are under 16, they receive no license
- If they are 16 or 17, they can receive a learner's permit
- If they are 18 or over, they can receive a full license

This sequence of conditions can be expressed as a single ternary expression (assuming `age` is a `number`):

```ts
age >= 18 ? "FULL LICENSE"          // If they 18 or older, full license, otherwise...
  : age >= 16 ? "LEARNER'S PERMIT"  // If they are 16 or older, learner's permit, otherwise...
  : "NO LICENSE"                    // No license
```

The entire code snippet above is a single expression that will evaluate to a `string` value.

Here's a diagram showing the possible _paths_ the expression might take during evaluation:

<pre class='mermaid'>
graph TD
  c1[age >= 18]
  c2[age >= 16]
  r1["FULL LICENSE"]
  r2["LEARNER'S PERMIT"]
  r3["NO LICENSE"]

  c1 -- true --> r1
  c1 -- false --> c2
  c2 -- false --> r3
  c2 -- true --> r2
</pre>

Using the diagram above, let's trace a couple of examples through the expression.

Suppose `age` is 23.
The evaluation would take the following steps:

1. Is `23 >= 18`? Yes; the expression evaluates to `"FULL LICENSE"` and goes no further.

Next, suppose `age` is 17.

1. Is `17 >= 18`? No; we therefore evaluate the "`expr2`", which in this case is another ternary expression.
2. Is `17 >= 16`? Yes; the expression evaluates to `"LEARNER'S PERMIT"` and goes no further.

{:.callout .note}
**Notice the formatting choices made in the expression.**<br><br>Each "otherwise" clause starts on a new line, indented slightly to the right.
The slight indentation in a line indicates that the line is a continuation of the expression from the previous line.
None of these formatting choices are _required_ by TypeScript—but it makes it easier to understand the expression.

## Compound expressions

Just like in algebra, expressions can be combined into longer expressions.
And these do not necessarily have to all involve the same data types.
But our rules of evaluation can remain the same!

* A value cannot be evaluated any further.
* **An identifier is a name that refers to a value. Evaluation of an identifier gives its value.**
* An expression can be:
  - A value, or
  - An operation acting upon a value or an expression
* We'll fully parenthesize expressions before evaluating so there is no ambiguity.
* When evaluating an expression with a binary operation, evaluate the left sub-expression before the right sub-expression.

For example, does the string "CSC 123" contain the substring CSC?

```js
"CSC 123".includes("CSC") // evaluates to true
```

The expression above is a lot like the math expression `3 + 7`, in the sense that it involves an operator and operands.
In this case, the operator is `includes` and the operands are the string `"CSC 123"` and the substring `"CSC"`.

Try another example.

What would the following evaluate to? 

```js
(3 > 2) && ("CSC 123".length < 20)
```

To evaluate the expression above, we can begin by fully parenthesizing it. This step will start to occur as second nature once you get more practice—for now let's do it to make clear all the sub-expressions that need evaluation.

```js
((3 > 2) && (("CSC 123".length) < 20))
```

In the expression above, `3`, `2`, `"CSC 123"` and `20` are all _values_ that need no further evaluation.

Now let's evaluate from left to right.

```js
(true && (("CSC 123".length) < 20)) // 3 > 2 is true

(true && (9 < 20))  // "CSC 123".length is 9

(true && true) // 9 < 20 is true

true // final result: true && true is true
```

Here's one that's a bit more challenging. What would the following expression evaluate to?

```js
`The sum of 5 and 3 is ${(5 + 3) % 2 === 0 ? "even" : "odd"}.`
```

## What happens when you use the wrong type?

At this point, you should start to wonder what happens when you use unexpected types.

For example, what do you think the following expressions will evaluate to?

```js
"hello" < 20

"CSC 123" - 123

"CSC " + 123
```

Remember that your browser Console (in which you've hopefully been following along!) is running JavaScript.
In a more just world, all of these would give you an error of some kind.
Unfortunately, JavaScript includes a number of design decisions that lead to confusing or hard-to-remember behaviour in cases such as these.

There is no better demonstration for why we're using TypeScript than these expressions.

Consider these expressions:

```js
"hello" < 20
"hello" > 20
```

In JavaScript, both the expressions above give you the result `false`.
Seeing that `"hello"` is not a number, JavaScript tries to coerces it into a number when making the comparison.
In this case, it coerces `"hello"` into `NaN` (Not-a-Number), which is not greater than or less than any value, including 20.

(So what do you think `"20" > 5` would give us?)

Similarly, in `"CSC 123" - 123`, JavaScript tries to coerce `"CSC 123"` into a number, resulting in `NaN`, and then performs the subtraction. The final result is `NaN`.

On the other hand, `"CSC " + 123` actually gives us a usable value! JavaScript coerces the number `123` into the string `"123"` and _concatenates_ the two strings (i.e., jams them together to form one bigger string).

There is always _some_ explanation for why you get the result you get in unreasonable cases like these.
JavaScript is a language designed by humans, and those humans made decisions about what would be a reasonable response to an unreasonable expression like `"hello" < 20`.

However, the exact behaviour in many of these cases are not easy to remember, and [some find them downright unintuitive](https://www.destroyallsoftware.com/talks/wat){:target="_blank"}. 

{:.callout}
**That's why we're using TypeScript.**
Open the [TypeScript Playground](https://www.typescriptlang.org/play){:target="_blank"} and type in `"hello" < 20`. You will immediately see a red squiggly line under the expression, indicating that there is a type error: `string`s and `number`s cannot be compared.
TypeScript will simply not allow you to run that code.

Don't get me wrong, TypeScript does a bunch of weird stuff as well, that we will no doubt discover this term.
But there is less weird stuff than JavaScript.

---

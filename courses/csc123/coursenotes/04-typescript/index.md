---
layout: coursenotes
title: "What's TypeScript?" 
mermaid: true
---

This lesson gives a brief primer about what [TypeScript](https://www.typescriptlang.org/) is and why we're using it in this course.

To tell you about TypeScript, I first need to tell you about JavaScript.

## What's JavaScript?

JavaScript is a programming language.

JavaScript has an interesting origin story.
It started as a "[weird little scripting language developed in ten days](https://deno.com/blog/history-of-javascript)",[^brief] created to add little bells and whistles to webpages.
You know, things like validating that you've written an email address where an email address was asked for.
Since then, it has evolved into the *de facto* default programming language for the Web—every mainstream web browser has the ability to run JavaScript code by default.
This is what allows websites that you visit to be interactive and dynamic, allows features like location tracking, audio and video recording and playback, advanced graphics facilities, and more.

[^brief]: [_A Brief History of JavaScript_](https://deno.com/blog/history-of-javascript). Author unknown (to me), from the [Deno](https://deno.com/) team.

## JavaScript is dynamically typed

Let’s unpack that, one word at a time.

* "typed": This has nothing to do with “typing” on your keyboard. Instead, this has to do with the different types of data types that your programs can deal with, like numbers or strings.
* "dynamically": This means that JavaScript figures out the **types** of values and variables “on the fly”, i.e., as a program runs.

For example, consider the following JavaScript program:

```js
let course = "CSC 123";
course = 123;
```

On the first line, we are creating an identifier (or a "variable") called `course`, and using it to name the value `"CSC 123"`.[^1]
**What type of data is this?**

[^1]: See [the previous lesson](../coursenotes/02-expressions-and-evaluation/) for more about identifiers and values.

On the second line, we changing the value to which `course` points to the value `123`. **What type of data is this?**

This is completely okay with JavaScript, because it figures out variable types at run time (i.e., while the program is running).
In this case, the type of `course` is initially text, or a `string` in JavaScript parlance.
Then it changes to a `number`.
JavaScript allows this flexibility, but it can lead to unexpected errors if you're not careful.

For example, suppose after the code above, you inspect the value of the following expression:

```js
course.length
```

`length` is a property that gives us the number of characters in `string`.
However, after the second line executes (`course = 123;`), `course` is no longer a `string`.
It is a `number`.

It is meaningless to ask for the "length" of a number.
As a result, this line will give us back a special value in JavaScript that indicates the _absence_ of a value: `undefined`.

<details class='callout todo' markdown=1>
<summary>Try this example in your browser's console. Expand and follow these steps.</summary>

1. Press <kbd>Cmd/Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>I</kbd> to open your browser's Developer Tools, then navigate to the "Console" tab. (If you're using Safari, see [these instructions](https://devtoolstips.org/tips/en/enable-safari-devtools/)).
2. Type in `let course = "CSC 123";` and hit <kbd>Enter</kbd>.
3. Type in `course = 123;` and hit <kbd>Enter</kbd>.
4. Type in `course.length;` and hit <kbd>Enter</kbd>.

What value do you see?
</details>

It turns out that these kinds of mistakes (or "bugs") are really easy to make and difficult to track down in large programs!
And by definition, they will only become apparent while the program is running, and then only if you trigger the particular conditions needed to reveal the error.
This can make programming a rather time-consuming cyclical process.

Imagine a super-simplified software development process that goes like this.

<pre class='mermaid'>
flowchart LR
  w["Write code"]
  r["Run/test code"]
  t["Notice a
type-related error"]
  p["Publish changes"]

  w --> r --> p
  r --> t -- "Fix" --> w
</pre>

In general, you want to move any bug-fixing activities “to the left” on the timeline above. It’s better to find a bug before running your code, and definitely before publishing it.

To help with this, Microsoft introduced a "dialect" of JavaScript that helps us detect type-related mistakes in our programs *before* we run the program.
This dialect is rather cleverly named **TypeScript**.

## TypeScript is statically typed

TypeScript does a series of checks on your program before you ever run it.
We refer to this as *static typing*. "Static" as in "fixed", or "stationary" as opposed to "dynamic", which means "continuously changing or in motion".

For example, when you create a variable, TypeScript figures out its type and checks that you only ever used its value in ways that are compatible with that type.

That is, it moves the "type-related error" step to left in our imaginary simplified programming process.

<pre class='mermaid'>
flowchart LR
  w["Write code"]
  r["Run/test code"]
  t["Notice a
type-related error"]
  p["Publish changes"]

  w --"Type checks satisfied"--> r --> p
  w --> t -- "Fix" --> w
</pre>

In most code editors, these type checks happen _as you type_, resulting in a code-writing process in which we massage out type-related errors as they appear. Much faster feedback loop!

Of course, developers (and their silicon assistants) will still introduce other types of errors. Type checking does not eliminate all bugs.

Here's how we would re-write the code above using TypeScript instead of JavaScript.

```ts
let course: string = "CSC 123";
course = 123; // Type error!
```

We don't even get to line 3, where we inspected `course.length`. TypeScript is already unhappy!

{:.callout .todo}
See the example in the [TypeScript playground.](https://www.typescriptlang.org/play/?#code/DYUwLgBAxg9grgJwM4gFwSWBBLAdgcwgF4IAiAYQGVyIBGAJgGZSBuAKFkRWLqZaA). What do you see, without ever running the program?

---


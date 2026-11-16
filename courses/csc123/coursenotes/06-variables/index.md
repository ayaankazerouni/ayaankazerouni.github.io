---
layout: coursenotes
title: Variables in TypeScript
---

Previously, we talked about how you would evaluate the following expression:

<code>&pi; * 25</code>

The identifier &pi; represents a numerical value (approximately 3.14).
To evaluate the expression above, you would replace &pi; with the value it represents.

This same idea is embodied in TypeScript through **variables**.

{:.callout}
A variable is a name given to a value.

**Variable declaration** is the act of creating a new variable.
It involves specifying the variable's _name_ and _data type_.

**Variable initialization** is when you assign the variable an initial value.
You'll nearly always want to initialize a variable at the time of declaration.

You can create variables in two ways in TypeScript.

First, using the `const` keyword:

```ts
const radius: number = 5;
```

The line above is a _statement_.
It is not an _expression_ because the line as a whole does not evaluate to a value.
Instead, it affects the program environment in some way—in this case, there now exists a new variable.
We typically end statements with a semi-colon (`;`) — it's sort of like the "full stop" in programming.

{:.callout}
Expressions evaluate to values. Statements do not yield values.

The `=` operator is called the "assignment operator" — a single `=` does NOT mean "equals" in programming.

* We created a _constant_ called `radius` whose data type is `number` and whose value is `5`.
* Because we declared that the data type is `number`, TypeScript will enforce that the expression on the right-hand-side of `=` is also a `number`.
* Finally, because we used `const`, once the variable is declared and initialized, its value cannot be changed. That is, you would see an error if you tried the following:

```ts
const radius: number = 5;
radius = 10; // !!! This code will cause an error.
```

If you wanted to be able to assign a new value to a variable, you would use `let`.

```ts
let course: string = "CSC 123: Introduction to Computing";

course = "CSC 123: Community Action Computing";
```

Again, TypeScript enforces type checks, both on the first line where the variable is initialized as well as on the second line when a new value is assigned to the variable.
Because we declared `course` to be a `string`, TypeScript will only allow `string` values to be given to the variable.

So, some rules for variables in TypeScript:

1. **Variable names must be unique within a scope.** We'll talk more about _scope_ very soon. For now, suffice it to say that you can't have multiple variables with the same name.
2. **Variables can only be declared once.** Once a variable has been created (say, using `let`), subsequent assignments to that variable must _not_ say `let` again, since that will be interpreted as declaring another variable with the same name. (And then see rule #1).
3. **Variables declared with `const` cannot be reassigned.** In this course, you should _use `const` whenever possible_. Knowing that a variable's value won't change after its creation makes it much easier to reason about your code.
4. **A variable must have a data type and a value that matches its data type.** If you declare a variable to be a `number`, you can't give it a `string` or `boolean` as a value.
5. **Variables can be used in expressions, provided they have already been declared.** For example:

```ts
const radius: number = 5;
const area: number = Math.PI * radius * radius;
const description: string = `A circle with radius ${radius} has an area of ${area}.`;

console.log(description);
```

[Try out this example in the TypeScript Playground.](https://www.typescriptlang.org/play){:target="_blank"}

You'll also notice a new statement: `console.log`.
This statement is used to "print" values to the console.
It's useful when you want to inspect the value of a variable or expression.

You can log values of any type.
Any value that is not already a `string` will be coerced into a `string` when logged.

So all of these are valid:

```ts
console.log("This is a string. Easy peasy");
console.log(42);
console.log(true);
console.log(null);
console.log(undefined);
```

## Type inference

In many cases, TypeScript is able to _infer_ the type of a variable based on other information (like its value).
So, for example, consider the variable declaration below:

```ts
let words = "It's only words";
```

Even though I haven't explicitly declared that the type of `words` is `string`, TypeScript has this figured out.
To see this, paste the code into the TypeScript Playground and hover your mouse over the variable name `words`.
In the little pop-up that appears, you will see that TypeScript has statically (i.e., without running the program) determined that the type of `words` is `string`.

The consequence of this is that, even if you were to reassign `words` a new value, that new value would _have to_ be a `string`.

```ts
// This code will cause a type error.
let words = "It's only words";
words = 42;
```

In the above example, TypeScript inferred that `words` is a `string` (based on the value), and so the type-checking proceeds as though it was declared with that data type explicitly.

{:.callout}
Despite this capability, in this class, we will explicitly declare the data types of all variables except in specific circumstances which you will see in later modules.

---

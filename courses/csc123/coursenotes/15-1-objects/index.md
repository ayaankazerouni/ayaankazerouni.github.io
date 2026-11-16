---
layout: coursenotes
title: Objects and Interfaces
---

- s
{:toc}

So far, we've learned how to process primitive data like `number`s, `string`s, and `boolean`s, and arrays of those types.
However, any realistic data analysis or processing will need to work with data that cannot be represented with those primitive types alone.

For example, in our early lessons, we talked about the various bits of data that make up a "tweet" (or substitute your favourite social medium's made-up verb here).

{% include image.html
url="../02-abstraction-composition/composed-tweets.png"
width="60%"
description="What data is represented in this figure?"
alt="A screenshot containing three tweets from the account 'Black Art in America'. Each tweet is highlighted with a green border."
%}

We can see that each tweet contains a number of bits of information: the user name, the text of the tweet, the number of likes, and so on.

As we build up the complexity of our computation, we need to practice interacting with *composite data*—data that is composed of smaller pieces of data that make up the whole.
These are known as **objects** in TypeScript.

## What's a date? 

For example, consider the data needed to represent a **date**.
We _could_ simply represent the date using a single primitive data type.

For example, as a string:

```ts
"6/7/1957"
```

While the representation above may look familiar, the view is impoverished in key ways:

- We can't look at individual components easily. This will make it harder to answer questions like "How many days between this date and your birthday?" or "Does this date appear before some specified deadline?"
- We could get caught up in ambiguity. Is `"6/7/1957"` meant to be July 6th or June 7th?

Objects in TypeScript let us represent a composite type wherein:

- we can group related data together and work with _the whole_ if we choose,
- and we can also pull out individual components easily.

Here is an **object** in TypeScript:

```ts
{
  'month': 7,
  'day': 6,
  'year': 1957
}
```

The object above is a _value_, just like the values we've seen previously.

Let's talk about each part of the object above:

- An object is enclosed in curly braces (`{` and `}`).
- An object is made up of one or more **fields**. These fields are named (`month`, `day`, `year`).
- A field name enclosed in quotes can be any valid string, including spaces and special characters.
- Each field has a value associated with it (month is `7`, day is `6`, year is `1957`).
- Values can be any TypeScript value, of any data type, including arrays or even other objects.


Objects are a powerful way to group together fields into a single representation.
They are an example of **abstraction**, i.e., they allow us to replace the details of a large chunk of data with an abstract representation or stand-in, making it easier to reason about a larger concept (like a _date_ instead of a primitive type like a `string` or `number`).

For example, consider the variable declaration below.
It creates a `tweet` variable and assigns it a (simplified) representation of a tweet:

```ts
const tweet = {
  "name": "Black Art In America",
  "id": "BAIAONLINE",
  "date": {
    "month": 3,
    "day": 4,
    "year": 2011
  },
  "time": {
    "hour": 22,
    "minute": 14
  },
  "text": ...
}
```

The `tweet` object is a composite value that contains information related to a tweet.
This includes fields like `date` and `time`, whose values are _also_ objects that contain their own fields.

This type of structured representation lets us work with complex data more easily.

## Accessing values within an object

We use square brackets (`[` and `]`) to access specified fields from an object.

This is similar to the syntax for accessing data from [arrays](../11-arrays/), except that now, instead of an index number (or "position"), we use the name of the field we want to access.

Suppose you have an object that represents a `tweet`, as follows (the inner objects for the `date` and `time` have been written on one line for brevity):

```ts
const tweet = {
  "name": "Black Art In America",
  "id": "BAIAONLINE",
  "date": { "month": 3, "day": 4, "year": 2011 },
  "time": { "hour": 22, "minute": 14 },
  "text": ...
};
```

We could declare and initialize a variable called `tweetName` as follows:

```ts
const tweetName: string = tweet['name'];
```

In this case, `tweetName` would be given the value `"Black Art In America"`. 

## Accessing fields from nested objects 

As we've seen, an object can contain *nested objects*—objects within other objects.

In the example above, the `tweet` has additional composite data within it for its `date` and `time` fields.

We can access the *year* of the tweet as follows:

```ts
tweet['date']['year']
```

Let's work on tracing the evaluation of the expression above.

As before, we will work from left-to-right, substituting in values for sub-expressions as we evaluate them.
This gets a bit large with records, but working through an example will help show explicitly how the operation works.

First, the identified `tweet` variable is evaluated to be the entire data record associated with the `tweet` identifier. Recall this variable definition from earlier:

```ts
const tweet = {
  'name': "Black Art In America",
  'id': "BAIAONLINE",
  'date': { 'month': 3, 'day': 4, 'year': 2011},
  'time': { 'hour': 22, 'minute': 14 },
  'text':...
};
```

Out of this `tweet` record, we pull out the value for the field `date`. This sub-expression (`tweet['date']`) gets us the record:

```ts
{ 'month': 3, 'day': 4, 'year': 2011 }
```

Then from *that* record, we pull out the value for the `year` field. The entire expression is `tweet['date']['year']`. This gets us the value `2011`.

## Transforming objects

Just like arrays, objects are mutable.
And just like with arrays, **we'll avoid mutating objects whenever possible**.

### The spread operator

Remember the spread operator (`...`) we used with arrays? We can use it with objects as well!

For example, suppose we have the following object:

```ts
const date = { 'month': 8, 'day': 29, 'year': 1966 };
```

We can use the spread operator to create a new object that is a copy of `date`, and also combine it with some changes, like changing a field's value, or adding a field:

```ts
const newDate = { ...date, 'year': 2025, 'dayOfWeek': 'Friday' };
```

- The code above creates a new object with the data inside the curly braces.
- `...date` syntax is used to "spread" the properties of the `date` object into the new object.
- `'year': 2025` sets the `year` to be 2025. Because there was an existing `year` field in the `date` object, this new value will replace the old one.
- `'dayOfWeek': 'Friday'` adds a new field called `dayOfWeek` with the value `'Friday'` to the new object.

After all of this, the original `date` object is unmodified, and the value of `newDate` is the following object:

```ts
{
  'month': 8,
  'day': 29,
  'year': 2025,
  'dayOfWeek': 'Friday'
}
```

Because **objects are mutable,** this is the recommended way in which to make "updates" to objects.

### Mutating objects

That said, you can also mutate objects directly, using the box bracket syntax. For example, working with that same date again:

```ts
const date = { 'month': 8, 'day': 29, 'year': 1966 };
```

We can change the `year` to `2025` and add the field `dayOfWeek` as follows:

```ts
date['year'] = 2025; // Replaces 1966.
date['dayOfWeek'] = 'Friday'; // Adds a new field.
```

After the statements above execute, **the `date` object has been modified**. So any references to `date` (including inside other functions), will see the following updated object:

```ts
{
  'month': 8,
  'day': 29,
  'year': 2025,
  'dayOfWeek': 'Friday'
}
```

## Example operations involving objects 

Let's look at some examples of operations involving multiple objects.

### Example 1 

Suppose we have "person" objects, where each person has an `age`, a `height`, and a `name`.
We want to be able to compute the average age of two "persons".

To accomplish this task, we need to average the age fields for the two objects representing people.

Given two objects for two different people:

```ts
const person1 = { 'height': 6.0, 'age': 45, 'name': "Hakim" };
const person2 = { 'height': 5.2, 'age': 51, 'name': "Pat" };
```

{:.callout .todo}
Can you write an expression that computes the average age of the two persons?

### Example 2

Let's practice tracing example code.
Below is a function that, given two **person** objects, returns the older of the two people.
Following the function definition is an expression that calls the function with two example inputs.

(I have included line numbers in the code below to aid in tracing.)

```ts
1 | // Use the ternary operator to determine the older person.
2 | const getOlderPerson = (p1, p2) => {
3 |  return p1['age'] > p2['age'] ? p1 : p2;
4 | }
5 | 
6 | const person1 = { 'height': 6.0, 'age': 45, 'name': "Hakim" };
7 | const person2 = { 'height': 5.2, 'age': 51, 'name': "Pat" };
8 | const olderPerson = getOlderPerson(person1, person2);
```

Using a trace table to work through this example, we see:

| Line number | At this line                                                                                                                          |
| ----------- | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| Line 2      | On this line:<br>`getOlderPerson` function is defined                                                                                                        |
| Line 6      | Already exists:<br>`getOlderPerson`<br><br>On this line:<br>`person1 = { 'height': 6.0, 'age': 45, 'name': "Hakim" }`                                                                                        |
| Line 7      | Already exists:<br>`getOlderPerson`, `person1`<br><br>On this line:<br>`person2 = { 'height': 5.2, 'age': 51, 'name': "Pat" }`               |
| Line 8 (partial)      | Already exists:<br>`getOlderPerson`, `person1`, `person2`<br><br>Control is now transferred to the `getOlderPerson` function. |

Line 8 contains a call to `getOlderPerson`, which transfers control to the function along with its parameter values.
Since the function only contains the one line (Line 3), we'll explore that step-by-step.

| Line number | At this line                                                                                                                                                                    |
| ----------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Line 3      | Already exists:<br>`p1 = { 'height': 6.0, 'age': 45, 'name': "Hakim" }`<br>`p2 = { 'height': 5.2, 'age': 51, 'name': "Pat" }`<br>(These values were passed in to the function.) |
| Line 3 | We encounter the expression<br>`p1['age'] > p2['age'] ? p1 : p2`. |
| Line 3 | We evaluate sub-expression `p1['age'] > p2['age']` first.<br>Substitute in the values for `p1['age']` and `p2['age']`:<br><br>`45 > 51`<br><br>This evaluates to `false`. |
| Line 3 | We now have `false ? p1 : p2`, which evaluates to `p2`.<br><br>We now have `return p2`.<br>This returns the value of `p2`:<br><br>`{'height': 5.2, 'age': 51, 'name': "Pat"}`<br><br>Control is now returned to Line 8. |
| Line 8 (completed) | Already exists:<br>`getOlderPerson`, `person1`, `person2`<br><br>On this line:<br>`olderPerson = {'height': 5.2, 'age': 51, 'name': "Pat"}` |


### Example 3

We want to write a function that is able to find the sum of two **cost** objects.
A **cost** object has two fields, both of which have `number` values:

- `dollars`
- `cents`

The function should give give back a new **cost** object that represents the sum of two inputs **costs**.

That is, conceptually we would like to do something like:

```ts
{ 'dollars': 4, 'cents': 25 }

"plus"

{ 'dollars': 3, 'cents': 14 }

=

{ 'dollars': 7, 'cents': 39 }
```

Start by declaring the function:

```ts
const addCosts = (cost1, cost2) => {
  return ...
}
```

The function's body may seem rather simple at first: we just need to sum up the `dollars` and `cents` from the two parameters. 

```ts
// An initial version!
const addCosts = (cost1, cost2) => {
  return {
    'dollars': cost1['dollars'] + cost2['dollars'],
    'cents': cost1['cents'] + cost2['cents']
  }
}
```

Is our function above correct? Let's test it out with some example inputs.
Paste the function definition above into the TypeScript Playground, and then print (using `console.log`) the values of the following expressions. Do they match your expected outputs?

```ts
addCosts({ 'dollars': 4, 'cents': 25 }, { 'dollars': 3, 'cents': 14 })
```

We _want_ the expression above to give us `{ 'dollars': 7, 'cents': 39 }`, because $4.25 + $3.14 = $7.39. And yes, we get the expected value back when we printed out the expression in the TypeScript Playground.

**What about the following?**

```ts
addCosts({ 'dollars': 1, 'cents': 75 }, { 'dollars': 2, 'cents': 50 })
```

Wait a minute! What do we expect `addCosts({ 'dollars': 1, 'cents': 75 }, { 'dollars': 2, 'cents': 50 })` to return? That is, what's $1.75 + $2.50? **We want $4.25 in return.**

However, our function would give us back the object `{ 'dollars': 3, 'cents': 125 }`, because we summed up the `cents` values without carrying over a dollar when `cents` reached 100.

Our updated function should account for this by checking if the `cents` field exceeds 100, and if so, it should carry over the extra amount to the `dollars` field.

The code below implements this.
Take a moment to study it, and read the descriptive text that follows.

```ts
// Updated to account for cents carrying over to dollars.
const addCosts = (cost1, cost2) => {
  const totalCents = cost1['cents'] + cost2['cents'];

  // Carry over one dollar if cents exceed 100.
  const totalDollars = cost1['dollars'] + cost2['dollars'] + Math.floor(totalCents / 100);

  // Construct and return the final object.
  return {
    'dollars': totalDollars,
    'cents': totalCents % 100
  };
}
```

The function uses the `Math.floor` operation, which rounds **down** to the nearest whole number.
So, for example, if you had a `totalCents` value of `125`, the `totalDollars` value would get `1` added to it.
If you had a `totalCents` value of `99`, the `totalDollars` value would get `0` added to it.

When we construct our final object:
- The `dollars` field receives the `totalDollars` amount that we computed.
- The `cents` field receives the value of `totalCents % 100`, i.e., the remainder from dividing `totalCents` by `100`. (If `totalCents` was `125`, `totalCents % 100` would be 25. If `totalCents` was `99`, `totalCents % 100` would be 99.)

## But what about types?

You'll notice that we didn't specify data types for many things in this lesson.
For example, consider the function for adding two costs:

```ts
const addCosts = (cost1, cost2) => {
  const totalCents = cost1['cents'] + cost2['cents'];
  const totalDollars = cost1['dollars'] + cost2['dollars'] + Math.floor(totalCents / 100);

  return {
    dollars: totalDollars,
    cents: totalCents % 100
  };
}
```

The function above "works" if we give it sensible data. However, consider the following scenarios.

**What if we give it two nonsensical cost objects, like this?**

```ts
addCosts({ 'dollars': 'four', 'cents': 'twenty-five' }, { 'dollars': 'three', 'cents': 'fourteen' })
```

**What we give it sensible-looking objects, but with unexpected field names?**

```ts
addCosts({ '$': 4, 'c': 25 }, { '$': 3, 'c': 14 })
```

**Or what if we don't give it objects at all?**

```ts
addCosts(4.25, 3.14)
```

{:.callout}
We have currently not accounted for these possibilities.

We need some way to specify to TypeScript's type-checker what "shape" we expect our objects to have.
So if someone tries to call the function with the wrong kind of data, TypeScript catches the error before the code is even run.

So...what's the "shape" of our **cost** objects? It has a `dollars` field that is a `number`, and a `cents` field that is a `number`.
This can be expressed as follows:

```ts
{ dollars: number, cents: number }
```

The definition above looks a lot like an object, but differs in one key way: the **fields do not have values; they have types**.

Let's use that type definition in the function signature for our `addCosts` function.
(I've split up the function signature over multiple lines for the sake of readability.)

```ts
const addCosts = (
  cost1: { dollars: number, cents: number },
  cost2: { dollars: number, cents: number }
) => {
  const totalCents = cost1['cents'] + cost2['cents'];
  const totalDollars = cost1['dollars'] + cost2['dollars'] + Math.floor(totalCents / 100);

  return {
    dollars: totalDollars,
    cents: totalCents % 100
  };
}
```

We can confidently access the `cents` and `dollars` fields inside `cost1` and `cost2`, knowing for sure that they exist and are `number`s.
TypeScript will give type errors if `addCosts` is called with the wrong kind of data.

[See this example in the TypeScript Playground.](https://www.typescriptlang.org/play/?#code/MYewdgzgLgBAhgEwQYRNCMC8MAUpoCMAXDAN4wIgA2VcAThCWAK4C2ARgKZ0A0MwnMFEYwWHbjAC+ffFABMJcpRr0RYrr36DhTNhqkBKLAD4yAKBj9w0GFBBQ4VZNozZZBANoByAUIheAXRgAaitoOW9fYUCAbgsrSFg7ByoAEWpaBiwwqE8vZUz-INDZCPyM1UCQmABZOCgACwA6ADMqEBA6HGTHZz8YAHoYAgAGEYM4+LpOKGY6MHNLSwLVEh60ioYeeMsokXW+4RgAUmGx+Mk4yTMzAaGAQRoYEBbbBs4IThgW5jBgKAAluB+I4qBh6F8AQsAG5A2iA4EvN5fRAoNBHH5-BELCAAgDmYHqc04TTMqNQ6Bw5HKKgYXhIXhaIDmXj4Phc9JgXigAHdtABPAC0LQB0M4XikfGpKzpDMa03FbL2nMZzLoUE4gglkgMZKQFOEVK5ABJOQAWJWcuQAVklZBNnIAzJaSAQzYY9WjKWamja+I6mm6DEA)

However, it can get kind of repetitive to keep specifying the shape of our cost object.
Writing it as you see above is useful if you don't expect to be using the same "object shape" in several places.

But if you _do_ expect to use it often, it'd be much better if we could define it once and then re-use it whenever we want.
This is where **interfaces** come in.

## `interface`s

An `interface` in TypeScript is used to define the shape of an object.
That is, you use it to specify the fields that an object can have, and their data types.

Continuing our `addCosts` example, we could define an interface for **cost** objects as follows:

```ts
interface Cost {
  dollars: number,
  cents: number
}
```

You type the word `interface`, followed by the name of your new interface.
By convention, the name of an interface should always begin with an uppercase character.

Then, using a syntax that looks very similar to that of objects, you define the fields and their types.
The difference here is that, instead of fields having _values_, they have _types_.

We have essentially created a new data type called `Cost`.
It can be used just like other types like `number` or `string`.

For example, in a variable declaration:

```ts
const myCost: Cost = { dollars: 5, cents: 75 };
```

The code above will prevent any actions that would result in an invalid cost object, like adding a field that is not specified in the `Cost` interface.

```ts
myCost['invalidField'] = 100; // TypeScript won't allow this.
```

This lets us rewrite our `addCosts` function as follows:

```ts
const addCosts = (cost1: Cost, cost2: Cost): Cost => {
  const totalCents = cost1['cents'] + cost2['cents'];
  const totalDollars = cost1['dollars'] + cost2['dollars'] + Math.floor(totalCents / 100);

  return {
    dollars: totalDollars,
    cents: totalCents % 100
  };
}
```

---

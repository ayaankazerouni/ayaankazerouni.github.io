---
layout: coursenotes
title: Designing for testability
mermaid: true
---

* s
{:toc}

**Sources**

* Chapters from _[Effective Software Testing](https://www.manning.com/books/effective-software-testing)_ (Aniche):[^est]
  - Chapter 6 Test doubles and mocks
  - Chapter 7 Designing for testability

[^est]: The book is great and I highly recommend it.

## Outline

- Unit testing — what is a "unit"? Why do we test units in isolation?
  - Unit testing vs. integration testing
- Sometimes modules depend on each other, and we want to test units in isolation without testing their dependencies in isolation

<pre class="mermaid">
flowchart LR

A --> B
B --> db[(Database)]
B --> m[[Many other dependencies]]
A --> C
</pre>

In the above example, if want to test the `A` module, would also need instances of modules `B` and `C`, which would require their dependencies to initialised, and so on. This is a lot of work to just test the module we wanted to test in the first place!

## Testing and dependency injection 

A common strategy is to create _fake_ `B` and `C` objects and inject them into `A` for the purpose of a given test.
The fake `B` and `C` modules are given "hard-coded" behaviour.
We're pretending that they work as expected _in the context of a particular test case_, so we can focus our assertions on the behaviour of module `A`.

Some advantages of this are:

* **Control**. There's no need for complicated setup steps to induce specific behaviours that need to be tested. We can directly tell the fake objects what they should do.
* **Speed**. For classes that interact with external resources (web server, databases, files), it's much faster to instead interact with a fake in-memory replica of the real thing.
* **Design**. This style of testing causes us to be reflective about our design and the interdependencies among our classes. All of this is only possible if you allow clients to _inject_ dependencies when initialising modules. For example, what if module `A` was responsible for initialising modules `B` and `C` itself?

In the code below, all instantiations of `A` would require "full" or "real" instantiations of `B` and `C` objects. 

```java
public class A() {
  private B b;
  private C c;

  public A() {
    this.b = new B();
    this.c = new C();
  }
}
```

But if we were to use [dependency injection](../02-coupling#reducing-coupling-in-software):

```java
public class A() {
  private B b;
  private C c;

  public A(B b, C, c) {
    this.b = b;
    this.c = c;
  }
}
```

Now in our tests, we can initialise our `A` object like this:

```java
new A(new FakeB(), new FakeC())
```

That's the high-level idea.

## Test doubles

*Test doubles* are objects used to stub out parts of a system that are _not_ the focus of tests, but are "collaborators" or dependencies of the part that you are testing.

There are a [number of different types of test doubles](https://martinfowler.com/bliki/TestDouble.html). I list them below for the sake of completeness, but we'll talk about two in some more detail.

* **Dummy objects** are passed to a function to fill a parameter list, but they aren't used. You might wonder _why not just use `null`_? It's often good practice in Java to use annotations like `@NonNull` to require that a method's parameter is not null, so that the check can be done by a compiler and your code doesn't get littered with `if (x == null)` checks. So you can't pass `null` to such a function. So, to test the function's behaviour in branch where your `x` variable doesn't matter, you might use a dummy variable of some kind.
* **Fake objects** have working, but much simpler, implementations of the classes they simulate. For example, a fake database might provide the same functionality as the real thing, but use an in-memory database instead of a full-fledged database server that would need to support things like network access and concurrent access. HyperSQL (HSQLDB) is an example of an in-memory SQL database that Java developers use for testing. Ideally, the fake object exposes the same interface as the real thing.
* The post I've linked to above also describes **Spies**...which kind of just sound like **stub** objects that keep track of some state. So we won't talk about these.

The final two categories are **stubs** and **mocks**.
These are the ones we'll talk about in a bit more detail.

* **Stubs** provide hard-coded answers to all method calls performed during a test.

For example, suppose you are creating a system to manage invoices for a store. You have a method called `getAllInvoices` in the application.
The method is supposed to return all the invoices from the database, which requires connecting to a database server that could potentially require an internet connection.

And suppose you've got some class that happens to _call_ the `getAllInvoices` method, and you're interested in testing **what happens next**.
That is, the getting of all the invoices is not the focus of your testing.

You can create a **stub** of the `getAllInvoicesMethod` that will return a pre-defined hard-coded list of invoices, used for this test. That is, you're just assuming that the `getAllInvoices` method already works as expected.

This is a common strategy, because often all you need from a dependency is for it to return a value that your system-under-test will use.

* **Mock** objects allow you to verify that the object was interacted with in particular ways. For example, you can verify that a method was called once, or that methods were never called with particular arguments.

The categories above are useful conceptualisations, but it's more useful to think of them as the _role_ of the test double rather than the _type_ of the test double.

_[Mockito](https://site.mockito.org/)_ is a popular mocking and stubbing library for Java.

It kind of combines many of the concepts above into one — you can create a mocked object, and

* Use it as a dummy argument to a function, or
* Stub out its behaviours by giving it canned responses to its methods, or,
* Use Mockito's `verify` methods to assert things about how the object was interacted with, e.g., check methods were called in pre-defined ways or a pre-defined number of times

The examples below are from [the Mockito website](https://site.mockito.org/) (I couldn't find a way to directly embed the code snippets):

**Stubbing method calls**

We create a dummy list and then give it a hard-coded response to the method call `get(0)`.

```java
import static org.mockito.Mockito.*;

// you can mock concrete classes, not only interfaces
LinkedList mockedList = mock(LinkedList.class);
// or even simpler with Mockito 4.10.0+
// LinkedList mockedList = mock();

// stubbing appears before the actual execution
when(mockedList.get(0)).thenReturn("first");

// the following prints "first"
System.out.println(mockedList.get(0));

// the following prints "null" because get(999) was not stubbed
System.out.println(mockedList.get(999));
```
**Using Mock objects and verifying interactions with the mock object**

We create a dummy list and then verify that it was used in exactly the way we expected. E.g., `add("one")` was called once, and `clear()` was called once.

Remember that this list itself is _not_ the focus of your test. The focus of your test (the "system under test" or SUT) is the thing that's _using_ the list. So what you're interested in is how that SUT interacts with the list.

```java
import static org.mockito.Mockito.*;

// mock creation
List mockedList = mock(List.class);
// or even simpler with Mockito 4.10.0+
// List mockedList = mock();

// using mock object - it does not throw any "unexpected interaction" exception
mockedList.add("one");
mockedList.clear();

// selective, explicit, highly readable verification
verify(mockedList).add("one");
verify(mockedList).clear();
```

## Example

The author of _Effective Software Testing_, Maurício Aniche, has kindly made [all his code examples available on GitHub](https://github.com/effective-software-testing/code/tree/main). We'll look at a quick example of using Mockito to stub out a dependency. Specifically, we are looking at the following:

* [Code](https://github.com/effective-software-testing/code/tree/main/ch6/src/main/java/ch6/stub)
* Tests
  * [Without mocks](https://github.com/effective-software-testing/code/blob/main/ch6/src/test/java/ch6/stub/InvoiceFilterWithDatabaseTest.java)
  * [With mocks](https://github.com/effective-software-testing/code/blob/main/ch6/src/test/java/ch6/stub/InvoiceFilterTest.java)

### Key things to look at in the source code 

* First, take a second to peruse the code. We've got a number of interacting classes:
  * `DatabaseConnection`
  * `Invoice`
  * `InvoiceFilter` (`InvoiceFilterWithDatabase` is provided as a "bad" example, where it requires the database to be initialised)
  * `IssuedInvoices`

If we wanted to test the `InvoiceFilter` class, we would need to initialise a `DatabaseConnection` object and use that to initialise an `IssuedInvoices` object. You see that in the [`InvoiceFilterWithDatabaseTest.java`](https://github.com/effective-software-testing/code/blob/main/ch6/src/test/java/ch6/stub/InvoiceFilterWithDatabaseTest.java) file. Before each test case, a new database connection must be established (and reset so that each test gets a fresh DB).

Now imagine a larger class with a more complex (i.e., more realistic) database schema. And recall our discussion about systematically choosing a thorough ("requirements covering") set of test inputs. Our tests would get untenably complicated to setup, and untenably slow to run. All because we have to initialise and setup a dependency (`DatabaseConnection`) that's not the focus of our testing in the first place!

**Using a stub object**. Now take a look at [`InvoiceFilter`](https://github.com/effective-software-testing/code/blob/main/ch6/src/main/java/ch6/stub/InvoiceFilter.java). The constructor takes a parameter `IssuedInvoices`, which it uses to initialise the dependency in the class. Now, a client using the class has to _inject_ an `IssuedInvoices` object into the `InvoiceFilter` class. In this case, the "client" that's using the module is our tests. As a result of this change, the `InvoiceFilter` has no need for a `DatabaseConnection` dependency, and we can simplify away large swathes of that behaviour.

Take a look at [`InvoiceFilterTest`](https://github.com/effective-software-testing/code/blob/main/ch6/src/test/java/ch6/stub/InvoiceFilterTest.java). The amount of code you're writing is more or less the same, but without the slow DB connection and without persisting information to a database that needs to be cleared between test runs. Also, crucially, the stubbing away of the database connection means that bugs there wouldn't affect these tests. We are implicitly assuming here that the database connection has been tested in isolation as well.

## To mock or not to mock? That is the question

Mocking makes your tests less realistic.
Your tests are relying on some imaginary object that will never exist in real usage of your system.

The lack of coupling between modules that you are afforded by your mock objects can actually lead you astray.

For example, suppose you have modules `A` and `B`. In the tests for `A`, you have mocked the behaviour of `B`.
In some future change, the postconditions assured by `B` change due to changes in your requirements.
**Typically, when you make changes to `B`, you would also update tests for `B`.**

But it would be easy to forget to check if `A` handles these changes well. Your tests for `A` would pass with no problems, because they are relying on an "assumed good" version of `B` that is now out of date.

Like all tools, there are specific good times to use mocking:

* **Slow dependencies**. Databases, web services, etc.
* **External infrastructure**. Regardless of speed, it may be too complicated to setup and tear down connections to external infrastructure.
* **Cases that are hard to simulate.** A common case is when you want the dependency to throw an exception. If you've written your code defensively enough, it can be difficult to come up with scenarios that would cause a module to crash with an exception. Mocks can help you force these exceptions and test that your code handles the exceptions gracefully.

You should NOT mock types that you don't have control over (e.g., from external libraries). If that library ever changes, your tests would happily continue passing, because they rely on an idealised version of it.

When you use a mocking library to create a dummy version of some dependency, the fundamental assumption you're making is that the dependency is itself being tested elsewhere.
If you create mocks of objects that you don't "own", then you can no longer make this assumption.

## Designing for testability

Many rules about software design in general also apply to designing for testability. So I won't repeat them in too much detail.

We talk about "designing for testability" (i.e., designing so that testing is easier), but we can also think about things in the opposite direction. If testing difficulties arise like the ones below, that is often good feedback for you about your software's design.

* **Non-cohesive classes can lead to giant test suites**. Naturally, since the class is covering many responsibilities. If you find yourself frequently coming back to the same test suite to add more tests for new functionality, that may be a hint that the class is handling too many responsibilities, and so are its tests. It may be time to break it up.
* **Tightly coupled classes result in tests that are difficult to set up.** In some ways, excessive use of test doubles and libraries like Mockito are a symptom of classes that are coupled with so many dependencies that it becomes difficult to test things in isolation. Decoupling individual pieces of logic results in testable isolated modules---and then perhaps you can use test doubles where this removal is not possible or feasible. (I.e., at some point, some class will have to connect to a database. Isolate that requirement.)
* **Complex conditions**. With large compound conditions, we have already seen that the space of possible inputs can easily blow up, especially if we're trying to satisfy adequacy criteria like branch coverage. You can refactor your code to remove or combine conditions.
* **Private methods.** In general, a class's private methods should be tested through the public methods they support. If it does something too complex or separate from the public methods that use it (e.g., it's a utility that many methods are using), that's a good sign that the method does not belong in its current place. It may be time to refactor it into a separate class, where it can be public and testable.
* **Observability**. You need to be able to observe an object's state in order to test it. Does this mean you need to provide getters for _all_ fields in the object? Not necessarily. Just like with private methods, you can often "test" private fields through other means—for example, through public functions that internally use those fields. For example, the `String` class has a number of private fields that are not exposed in any way (e.g., a boolean flag indicating whether the string uses UTF-8 encoding or not; or a uuid for serialisation).

---

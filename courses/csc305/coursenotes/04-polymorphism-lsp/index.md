---
layout: coursenotes
title: (Some of the) SOLID Principles
mermaid: true
---

* s
{:toc}

## What we've talked about so far

So far, we've talked about the following principles for good program design:

* Minimise the scope of local variables
* Use `StringBuilder`
* Use the appropriate looping construct
* Know and use standard libraries
* Design and build loosely coupled modules
* Use strategies like encapsulation, interfaces, and dependency injection 
* Design immutable classes wherever possible
* Increase cohesion of individual classes

We've also started talking about the so-called "SOLID" principles of object-oriented design. We started by talking about the Single Responsibility Principle (the S in SOLID), which is the principle that guides our desire for LOOSE COUPLING between classes and TIGHT COHESION within classes.

## Open-closed Principle

The Open-closed Principle states that software entities should be open to extension, but closed to modification.

Unfortunately, there are many interpretations of what exactly this means.
[The common interpretation](https://blog.cleancoder.com/uncle-bob/2014/05/12/TheOpenClosedPrinciple.html) says that in an ideally-designed software system, you should be able to add functionality to that system without modifying the existing code (or minimising changes to existing code), and only by adding new code.
In an object-oriented language that supports inheritance (e.g., Java), this might be accomplished by creating extensions (subclasses) of existing classes, instead of modifying existing classes.

The idea itself is compelling---new features fitting seamlessly into an existing design is certainly an attractive proposition!
However, I don't think it's terribly realistic a lot of the time.
I shudder at the thought that we would create new subclasses or ever-deeper type hierarchies each time we wanted to add new functionality to a large software system.

> Creating an abstraction each time we want to modify our code brings other problems: it can create indirections and, as a result, increase the complexity of the system. If we try to create a new “entity” each time (using [[Robert] Martin’s words](https://blog.cleancoder.com/uncle-bob/2014/05/12/TheOpenClosedPrinciple.html)) when we want to change one, we’ll see the sheer numbers of “entities” going through the roof.
>
> -- Mathieu Cneude, ["Should We Follow the Open-Closed Principle?"](https://thevaluable.dev/open-closed-principle-revisited/), lightly edited for clarity

Happily, many of the "SOLID principles of object-oriented design" can also be thought about in a non-Object-oriented sense.

A good example is the regular expression example we saw last week.
See `lib/core.ts` and the `usePattern` function in `lib/vocabularies/code.ts` in commit [a0720f881b8331db1c8c38a805e24a71f5daacbb](https://github.com/ajv-validator/ajv/pull/1684/commits/a0720f881b8331db1c8c38a805e24a71f5daacbb).

The `usePattern` function is *closed to modification* (i.e., we won't make further changes to the function to support additional regular expression engines), but is *open to extension* (i.e., it can be extended to work with any regular expression parser, as long as it adheres to the `RegExp` interface).

### When is the open-closed principle useful?

In many domains, plugin architectures are becoming extremely common.
A plugin architecture is made up of two main components:

* The **core system** is the main application, containing the fundamental logic needed for the system.
* **Connection points** that various plugins can hook into to extend the core system's functionality.

Just like we talked about classes exposing a fixed interface to other classes, you can imagine that the core system (which may, itself, contain many software components) exposes an interface that plugins can use to add new features, or even extend existing features, depending on what the core system exposes.

A great example is software development environments.
Most major IDEs are built using a plugin architecture.

For example, VSCode provides facilities for external developers to create extensions that vastly extend the functionality of the core system.

And it's not just for external developers!
The VSCode team themselves have isolated the fundamental editor features in a core system (the [`microsoft/vscode`](https://github.com/microsoft/vscode/tree/main/src/vs) repository), and they ship a large number of features as "extensions" to that core system.
For example, basic python support comes with the [`vscode-python`](https://github.com/microsoft/vscode-python) extension.

This plugin architecture allows for VSCode to be *extended* in myriad ways, without ever modifying the core VSCode functionality.
That, the core functionality has no idea about the plugins that might be operating on it, and the plugins can manipulate parts of the VSCode application that the core system exposes through its extension mechanism.

This is a popular approach in IDEs.
For example, the [Kim Moir](https://aosabook.org/en/v1/intro1.html#moir-kim), describes the plugin architecture used in the [Eclipse platform](https://aosabook.org/en/v1/eclipse.html).
That architecture has allowed the same base functionality to create a number of *other* IDEs by composing together various plugins.
For example, [Eclipse](https://eclipseide.org/) itself is a popular open-source Java IDE, but the same base platform is used to build [DBeaver](https://dbeaver.io/about/) an open-source database tool.

Virtually all the [JetBrains developer tools](https://www.jetbrains.com/) (including IntelliJ IDEA) are built as combinations of various plugins on top of the core architecture.

So, plugin architectures are a good example of the Open-closed principle in action.
But I am not super convinced that going for a plugin architecture is the best move in all cases — it can be too much overhead for little benefit.

## Polymorphism

{: .callout }
Do you remember what Polymorphism is? Why is it useful?

Polymorphism is an important pillar of object-oriented programming. The word "polymorph" means "many forms". Polymorphism allows us to treat objects as having one of multiple "forms", and we don't necessarily know until runtime what that form might be. (This should remind you of interfaces!)

{: .callout }
What different kinds of polymorphism are available to us in Java?

* Interfaces
  * `default` methods allow us to add shared method implementations to interfaces. These methods are inherited by any implementing subclasses that don't implement their own versions; if `default` methods are added to interfaces that have been in use by many clients, this can lead to subtle issues at runtime, even if the client's code compiles successfully.
* Extending a concrete class: a class extends another concrete class. Both the super-class *and* the sub-class are concrete, initialisable classes. The subclass may inherit the superclass's behaviour, modify it, or add to it.
* Abstract classes: An abstract class can define concrete methods as well as abstract methods that *must* be implemented by a subclass.

**EJ20: Prefer interfaces to abstract classes.**

It used to be that interfaces were quite limited in what they could do, compared to abstract classes. Interfaces could _only_ define abstract methods that all implementing subclasses had to implement. We've already talked about the benefits of this (see lecture notes on coupling and cohesion).

But this led to difficulties when, for example, an interface that was in use by many classes needed to be extended in some way. Any additions of abstract methods to the interface would require _all_ implementing subclasses to also need implementations of the new abstract methods, _even if the implementation was to be identical for all subclasses_.

Compare this to abstract classes, which allow a mix of fully implemented methods as well as abstract methods. All subclasses _must_ implement their own versions of abstract methods, but have the option to inherit the methods that are already implemented in the superclass.

Clearly, they seem more useful than interfaces!

**Enter `default` methods**

All of this changed with the introduction of `default` methods for interfaces. Default methods allow you provide implementations for certain behaviours in the interface itself, so that implementing classes can inherit them or override them.

As a result, using interfaces give you the following benefits:

* **Existing classes can easily be retrofitted to implement a new interface.** It's just a matter of declaring that the class `implements` the interface, and adding the required methods. Because classes in Java can implement multiple interfaces, this is not a problem. However, a Java class can `extend` at most one class. So it's not straightforward at all to retrofit an existing class to extend an abstract class.

* **Interfaces let you create non-hierarchical type frameworks.** Not all organisations lend themselves to tree structures. That is, you may want different combinations of types "mixed together" for specific subclasses. To achieve this flexibly with abstract classes, you would end up with a bloated class hierarchy, trying to create a separate type for each combination of functionality you want to support. With interfaces you have infinite flexibility to enhance class behaviours as needed. 

* **It's easy to enhance implementing subclasses behaviours by adding `default` methods**

For example, consider the [`Comparable`](https://github.com/openjdk/jdk20/blob/master/src/java.base/share/classes/java/util/Comparator.java) interface. In older versions of Java, the interface simply provided an abstract `compare` method that compared two objects. Implementing subclasses had to implement those methods. Now, the `Comparator` interface provides a number of useful `default` methods, which allow you to chain comparators together (using `thenComparing`) or to reverse the order of a comparison (using `reversed`).

No implementing classes needed to be aware of these additions to be able to benefit from them.


That said, there are risks with `default` method implementations. Default methods are "injected" into implementing subclasses without the knowledge or consent of the implementors. It is possible that the default method implementation that is being inherited by some implementor actually violates invariants that the implementor depends upon. good documentation is absolutely essential to communicate this information to implementors.

For example, a library maintainer who updated to Java 9 would suddenly have been saddled with a bunch of inherited behaviour in their classes that implement the `Comparable` interface.

{: .callout }
It is simply not possible to write interfaces that maintain all invariants of every conceivable implementation.

**EJ21 Design interfaces for posterity**

The `Collection` interface contains the [`removeIf`](https://github.com/openjdk/jdk20/blob/master/src/java.base/share/classes/java/util/Collection.java#L571) method. The method removes an element if it satisfies some boolean condition (a predicate).

Every class that implements the `Collection` interface (i.e., [a whole ton of classes in the JDK](https://download.java.net/java/early_access/jdk20/docs/api/java.base/java/util/Collection.html)) now inherits this `removeIf` method.

Unfortunately, this fails for the `SynchronizedCollection`, a collection object from Apache commons which synchronizes the collection based on a locking object. The `default` implementation of `removeIf` in the `Collection` interface doesn't know about this locking mechanism. And the `SynchronizedCollection` cannot override the method and provide its own implementation because that would mutate the underlying collection, breaking its fundamental promise to synchronize on each function call. If a client were to call `removeIf` while another thread was modifying the collection, it would lead to a `ConcurrentModificationException` or some other undefined behaviour.

## Liskov substitution principle

Proposed by **Barbara Liskov**, a pioneer of programming languages, object-oriented programming, and winner of the 2008 Turing award.

The LSP says:

> Any class `S` can be used to replace a class `B` if and only if `S` is a subclass of `B`.

This is a good rule-of-thumb for using _polymorphism_ currently.

The Liskov Substitution Principle says that in an OO program, if we substitute a superclass object reference with an object of any of its subclasses, the program should not break. This is in much the same way that code that uses a `List` type can be executed with an `ArrayList` or a `LinkedList` and everything works just fine. 

You can think of the methods defined in a supertype as defining a contract. Every subtype (e.g., everything that claims to be a `List`) should stick to the contract.

The LSP helps us to ensure that invariants in the superclass are maintained in subclasses (i.e., preconditions and postconditions are satisfied). This can also help clients rely on extensions to our existing classes without fear of unexpected functional outcomes.

In a language like Java, the _existence_ of the appropriate functions (e.g., methods with the right names, parameter lists, and return type) are more-or-less guaranteed by the language's type system. For example, if you were you create a new `List` implementation, your code would not compile until you had implementations for all of the methods that are required by the [`List` interface](https://docs.oracle.com/en/java/javase/19/docs/api/java.base/java/util/List.html).

But the LSP goes beyond simply satisfying the type system. It's a promise of _semantically_ fulfilling the contract of the supertype. That is, the subtype should behave like the supertype (e.g., no matter what kind of list is being used, the effect of `add`ing an item is the same).

For example, subclasses can improve the performance of the superclass:

- a subclass can use a better search algorithm than the base class
- a subclass can use a better sort algorithm than the base class
- the expected behaviour and outcome should be the same

Currently, languages do not automatically enforce these properties.

**Code Critique**

```java
public class Bird {
    public void fly() {
        System.out.println("Flying...");
    }

    public void eat() {
        System.out.println("Eating...");
    }
}

public class Crow extends Bird {}

public class Ostrich extends Bird {
    public void fly() {
        throw new UnsupportedOperationException();
    }
}
```

```java
public class TestBird {
    public static void main(String[] args){
        List<Bird> birdList = new ArrayList<>();
        birdList.add(new Crow());
        birdList.add(new Ostrich());
        birdList.add(new Crow());
        letTheBirdsFly ( birdList );
    }

    public static void letTheBirdsFly (List<Bird> birdList ){
        for (Bird b : birdList) {
            b.fly();
        }
    }
}
```

{: .callout .ponder }
What's the problem with the code above?

<details markdown="1">
<summary>Hint</summary>
The Ostrich `extends` the `Bird` superclass, but does not support all of the required behaviours. This is a clear violation of the LSP: the `Ostrich` has a more constrained set of functionality than its superclass, `Bird`. This happens because the `Bird` abstraction has _too many responsibilities_. It is responsible for too much functionality, so when the time comes to extend the software with the `Ostrich` class, we run into trouble.
</details>

{:.callout .ponder}
How would you fix the design?


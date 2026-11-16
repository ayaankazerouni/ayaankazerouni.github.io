---
fontawesome: true
layout: coursenotes
title: Composite and Visitor design patterns
mermaid: true
---

* seed list
{:toc}

## Design patterns

**Design patterns** are general, re-usable solutions to commonly occurring problems within a given context in software design. They offer templates to solve problems that can be used in multiple contexts.

In 1994, a group of four authors wrote what was to become a famous book about Design Patterns (titled *Design Patterns*). The book describes three broad classes of Design Patterns:

- Behavioural Patterns: identifying common communication patterns between objects and realizing these patterns
- Structural Patterns: organizing different classes and objects to form larger structures and provide new functionality
- Creational Patterns: provide the capability to create objects based on a required criterion and in a controlled way

We are not going to talk about all the 23 patterns described in the book, but we'll talk about some of them, the first of which is the **Composite pattern**.

## Composite design pattern

The Composite pattern is billed as a "Structural" pattern, because it involves a specific organisational structure for your objects.
The pattern is useful when your data naturally organises into a tree-like structure, and you need to provide functionality for the entire structure (the "Composite") and the individual objects.

For example, a composite object structure might look like this:

<pre class="mermaid">
flowchart TD
  c1[Composite] -- has a --> Leaf1
  c1 -- has a --> c2[Composite]
  c2 -- has a --> Leaf2
  c2 -- has a --> Leaf3
</pre>

Here are some key things to note:

- Both the `Composite` and `Leaf` classes implement a common interface. Let's call that the `Component` interface, and it defines a `doSomething` abstract method.
- The `Composite` class is composed of one or more `Component` objects. This can be only a couple (e.g., binary tree-like structures), or it can be a list of variable length (e.g., HTML elements).
- A client can work with the `Component` interface without ever knowing if it's dealing with a `Composite` (that breaks down further) or a `Leaf` (that simply computes a vvalue).
- When a `Composite` needs to `doSomething`, it tells each of its subparts to `doSomething`. The `Composite` might itself do some processing before or after this.

**Ok, that was super abstract.** Let's consider a couple of concrete examples.

### File system example

For example, suppose you need to "read" all the files in a computer. You have a root folder (the root of your directory tree). That root may have many children (files or folders inside of it). Some of those children may in turn have further children.

The Composite pattern involves you treating the entire structure as a tree (much like your file system does). Then each "node" of the tree might have a `read` operation. For `FileNode`s, the `read` operation simply prints out the contents of the file. For `FolderNode`s, the `read` operation involves further traversing its children and `read`ing them. This recursively continues until there are no more files to be read.

In the diagram below, reading <i class="fa fa-folder-open"></i> `FolderNode`s involves reading all the nodes contained within the folder, which may be <i class="fa fa-file"></i> `FileNode`s, or they may themselves be <i class="fa fa-folder-open"></i> `FolderNode`s that contain further children.

<pre class="mermaid">
flowchart TD

home["fa:fa-folder-open Home"] --> music[fa:fa-folder-open Music]
home --> movies["fa:fa-folder-open Movies"]
home --> csc305[fa:fa-folder-open CSC 305 Assignments]
csc305 --> lab1[fa:fa-file Lab 1]
csc305 --> lab2[fa:fa-file Lab 2]
movies --> animated[fa:fa-folder-open Animated] 
animated --> httyd[fa:fa-file How To Train Your Dragon]
music --> beatles[fa:fa-folder-open The Beatles]
beatles --> hcs[fa:fa-file Here Comes the Sun]
beatles --> lib[fa:fa-file Let It Be]
</pre>

### HTML elements example

As another exmaple, consider a super simple HTML page:

```html
<html>
  <head>
    <title>Composite design pattern</title>
  </head>
  <body>
    <div>
      Here's the text on the page.
    </div>
  </body>
</html>
``` 

To represent the page above in objects, we would have the following:

- An `HTMLElement` interface, defining what all `HTMLElement`s should be able to do.
- Then, there is the top-level `html` element, which contains two subparts: the `head` element and the `body` element.
- The `head` element contains a `title` element.
- The `body` element contains a `div` element.

Here's the structure:

<pre class="mermaid">
flowchart TD
  html -- has a --> head
  html -- has a --> body

  head -- has a --> title
  body -- has a --> div
</pre>

This structure is mostly invisible to "clients" using this code.
The [HTMLElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement) is an interface in the standard Web API that ships with browser-based JavaScript.
Any JavaScript code that needs to manipulate a webpage dynamically (e.g., changing the background colour of a given element) can do so using methods from this interface.
The Composite structure ensures that the behaviours are appropriately carried out for different types of elements.
That is, the client is not concerned with differences between changing the background-color of a "leaf" element (that no inner elements) vs. a "composite" element (like a `<div>` that contains many inner elements).

**Other examples include:**

* Performing tree operations in a [Bintree](https://opendsa-server.cs.vt.edu/OpenDSA/Books/Everything/html/Bintree.html)
* Evaluating an _expression tree_ (like you are doing in Project 1)

### Benefits and drawbacks of Composite design

**Benefits of this pattern**

- Using [dynamic dispatch]({{site.baseurl}}/courses/csc203/coursenotes/05-method-dispatch) and recursion, you can work with quite complex tree structures without differentiating between a _part_ or _the whole_. For example, in the file system example, each folder doesn't need to know if its children are files or folders; they can simply be `read`, because they both belong to the same supertype.
- You can introduce new types of "nodes" in this tree conveniently, and the rest of the structure doesn't need to change. For example, consider that our filesystem has a new kind of file (say, that needs to be decrypted before it can be `read`). You can simply create a new subclass `EncyrptedFileNode` and implement the new `read` method so that it gets decrypted as part of the `read` operation.

**Drawbacks**

* A commonly cited drawback of this pattern is:

>  It might be difficult to provide a common interface for classes whose functionality differs too much. In certain scenarios, you’d need to overgeneralize the component interface, making it harder to comprehend. ([source](https://refactoring.guru/design-patterns/composite))

Personally, I think the above would be an indication that you shouldn't be using the Composite design pattern in the first place.

## Visitor design pattern

The **Visitor design pattern** is a "behavioural" pattern. It makes sense when the you need perform some task on all objects in a complex structure (like a graph or a tree). The underlying classes get "visited" by some code which executes on each object in the structure.

At this point, you may wonder about the difference between the Visitor pattern and the Composite pattern. It's true, they're similar in focus and intent. Let's consider an example.

### Example use-case

(Example from [Refactoring Guru](https://refactoring.guru/design-patterns/visitor))

Suppose you're working on an app that maintains a large graph of geographical information. Each node represents an complex entity in the graph, like a city, sightseeing area, industry, shopping mall, etc. Depending on its type, each node has various details that make up its internal state, but everything is a "node" in the graph.

You're asked to export the entire graph to some format, like XML. This is a pretty common ask: you often want to transmit data in some language-agnostic format so that different subsystems can operate on the same data.

Each different type of node in the graph will need to write out its salient details, meaning that the "export" operation looks different for each node. Moreover, the export of one node (like a `SightseeingArea`) might lead to the export of its other component nodes (like a `Museum` or a `Landmark`). So, like we did with Composite design, we could make use of polymorphism and recursion to implement an "export to XML" function for each type of node.

{: .callout .ponder }
What are some drawbacks of adding the XML export behaviour to the existing graph nodes?

* It requires us to modify an existing, fairly complex data structure that is already in production. Bugs in the new code would impact existing users.
* The graph's primary purpose is model geographic data. An argument can be made that an XML export function would reduce the class's cohesion.
* What if somewhere down the line we wanted to export the graph as JSON, another commonly used format for representing structured data? We would need to further modify the nodes in our graph, further exposing existing uses to potentially buggy behaviour, or even requiring further changes in clients to support the new change.

The **Visitor pattern** helps us _extend_ our graph to give it XML export behaviour, without _modifying_ it. It lets us adhere to the **Open/closed principle** (the "O" in the SOLID principles of software design).

I like to think about the Visitor design pattern as the Composite pattern, but from the _outside_ of the object structure instead of from the _inside_.

A nice added benefit of not coupling your extension to the entire object structure is that you can use the Visitor pattern when some action makes sense for only _some_ objects in the larger structure, but not _all_.

We'll go over the basic structure of the Visitor pattern and then look at a real-world example.

### Implementing the visitor design pattern

There are 5 pieces involved in implementing the visitor pattern

* **`Element`s**. these are the objects that make up the complex structure for which you want to accomplish some task. E.g., nodes in your expression tree, locations in our geographical graph, etc. Ideally, the nodes in the object structure are extensions or implementations of a common `Element` interface.
* **`accept` method**. The `Element` interface must have a method to "accept" a visitor, and each subtype of `Element` must implement this method.


```java
public interface Element {
  void accept(Visitor visitor);
}
```

```java
public class SightseeingArea implements Element {
  // location-specific stuff...

  public void accept(Visitor visitor) {
    visitor.visit(this);
  }
} 
```

{:.callout .ponder }
If we have `default` methods in Java, why can't we fully implement the `accept` method in the `Element` interface itself? Why do we need to implement it in each concrete class?


* **A  `Visitor` interface**. The `Visitor` has abstract (unimplemented) methods to visit each possible type of node. That is, in the geographical graph example, the `Visitor` might look something like this:

```java
public interface Visitor {
    void visit(SightseeingArea node);
    void visit(Museum node);
    void visit(Landmark node);
    // ... overloaded for all types of nodes 
}
``` 

* **Concrete visitor**. Now you have the machinery in place to perform _some arbitrary operation_ on _all or some nodes in an object structure_. In our running example, that "arbitrary" operation is to export the node to an XML string. We can write a concrete visitor class to do this:

```java
public class XMLExportVisitor implements Visitor {
    public void visit(SightseeingArea node) {
        // export the SightseeingArea 
    }

    public void visit(Museum node) {
        // export the Museum 
    }

    public void visit(Landmark node) {
        // export the Museum 
    }
}
```

{:.callout .ponder}
What if, in a particular Visitor, I only care about visiting some types of nodes and not others? Currently, I would need to implement a bunch of "no-op" methods because I'm forced to implement them by the `Visitor` interface. 

* **Client**. With the above machinery in place, the client can kick off a visitor to perform some operation on the object structure.

```java
Visitor visitor = new XMLExportVisitor();
for (Element current : this.locations) {
    current.accept(visitor);
}
```

### A real-world example

A few years ago, I was conducting some analysis on the source code of a number of Java projects written by students.
I wrote code to read in the code of hundreds of projects and emit some data for analysis.

Using the Eclipse Java Development Tools (JDT) API, I parsed students' code into [Abstract Syntax Trees](https://astexplorer.net/) (ASTs), and then "visited" certain nodes of interest in these resulting trees.

Because I used the JDT API to create the object structure (the AST), I only had to write the Visiting code.
See [this file](https://github.com/ayaankazerouni/incremental-testing/blob/master/src/visitors/ast/MethodASTVisitor.java) as an example of a visitor.

In summary, the code visits `MethodDeclarations` and `MethodInvocations`, i.e., all the places methods are defined or called in the codebase, because that's what I was interested in for that particular analysis.

Some things to note in this example are:

* The `MethodASTVisitor` has state of its own. It's a compound object in its own right that persists some state across visits (i.e., it accumulates some data about when methods were defined and when they were invoked in test cases).
* I am not overriding the `visit` method for _all_ possible types of nodes. ([A pretty large list.](https://help.eclipse.org/latest/index.jsp?topic=%2Forg.eclipse.jdt.doc.isv%2Freference%2Fapi%2Forg%2Feclipse%2Fjdt%2Fcore%2Fdom%2Fpackage-summary.html)) That's because, unlike the examples we've talked about thus far, the `ASTVisitor` I'm extending defines empty `visit` methods for all the different types of nodes available, and I only need to override the ones I want to use.
* The `visit` methods are returning `boolean`s; they are not `void` methods. The structure of an `ASTNode` is such that it can be broken down further into further `ASTNode`s (much like a composite tree). The return value basically tells the objects whether they should "go further" with this visitor or end the path at this node. If everything returns `true`, then the entire AST gets visited, which may be a waste.

### One language's design pattern is another language's native feature

In many programming languages, **functions are values like anything else**, and we can do things to them like give them variable names, pass them as arguments to other functions, etc.
Of course, we can also _call_ or _apply_ functions, which is the use with which we're all already familiar.

With this in mind, another way to think about the Visitor pattern is as follows.

Each node in the object structure (in this example, each location in the map), supports some behaviours of its own.
In this respect, you could very well think of this "map" as following a Composite design pattern.

What the Visitor pattern brings to the table is that each `Element` (each location) also includes one key addition: an `accept` function that takes, as its only parameter, _another_ function that is to be applied to the `Element`.
This means that a client component that wants to define some arbitrary additional behaviour for the `Element`s (say, an XML export behaviour) needs to:

* Define the additional behaviour in a function (for example, `xmlExport(Element)`.
* Call `accept` on the `Element`, and give it the function as an argument, i.e., `element.accept(xmlExport)`.
* The `Element` can then invoke `xmlExport` on itself.

In the example above, we have done exactly this, except our "function" that we give as an argument to `accept` is housed in a `Visitor` object (i.e., `XMLExportVisitor`).

### Visitor pattern using pattern matching

In my opinion, the Visitor pattern as described above is one of the more clunky patterns to implement in Java.
This is mostly due to a lack of expressive language constructs, a situation that is quickly being improved due to many recent improvements to the Java language.

Thankfully, _pattern matching_, a feature common in functional languages like OCaml, [is now available in Java as well](https://openjdk.org/jeps/441).

#### Pattern matching

In the Visitor example above, we've written a `Visitor` interface that contains several `visit` method overloads, one for each type of `Element` we might want to visit.
Then in our `XMLExportVisitor`, we include implementations for each `visit` method.
This is...pretty unwieldy.

However, with _pattern matching_, we can write a "visitor" much more concisely, as just a function instead of an interface and a class.
All we need to ensure is that our visitor knows how to visit all possible types of `Element`s.

The code below is using pattern matching to match the `current` variable with the appropriate case, depending on its type.

```java
public static void exportXML(List<Element> elements) {
    for (Element current : elements) {
        // This switch expression won't compile unless all possible types are accounted for
        switch (current) {
            case SightseeingArea s -> System.out.println("Visiting sightseeing area");
            case Landmark l -> System.out.println("Visiting landmark");
            case Museum m -> System.out.println("Visiting museum");
            default -> throw new IllegalStateException("Element is something I didn't expect");
        }
    }
}
```

The compiler requires that switch pattern matching has exhaustive **type coverage**.
That is, there shouldn't be a possible value where our visitor doesn't know what to do.
However, our compiler does not know _all possible_ implementing subclasses of `Element`, so is always going to err on the side of caution, and refuse to compile this switch expression.

To satisfy the compiler, we've stuck a `default` at the end and thrown an exception.
The `default` is kind like the `else` of that `switch` expression—that is, we are saying "for anything that's not a `SightseeingArea`, `Landmark`, or `Museum`, throw an error.

This is similar to using a series of `if` conditions and `instanceof` checks to check the dynamic type of the `current` `Element`:

```java
public static void exportXML(List<Element> elements) {
    for (Element current : elements) {
        if (current instanceof SightseeingArea) {
          System.out.println("Visiting sightseeing area");
        } else if (current instanceof Landmark) {
          System.out.println("Visiting landmark");
        } else if (current instanceof Museum) {
          System.out.println("Visiting museum");
        } else {
          throw new IllegalStateException("Element is something I didn't expect");
        }
    }
}
```

{: .callout .ponder }
What do you think of this strategy?

By using a `default` at the end (or the `else` clause in the second example), we would be taking that potential type error (i.e., we tried to visit a thing for which no visiting logic is implemented), and moving it from compile time to run time.
That is, _we have created a situation in which our program will crash_ because it received a type it was not prepared for.
This should simply never happen, especially not in a statically typed language---the compiler works for us!
We should use it!

In other words, it's always better to face type errors at compile time rather than run time, because facing them at run time involves doing nothing, or worse, crashing the program, or double worse, silently doing something unexpected.

So, how do we achieve type coverage without using `default`?

#### [Sealed types](https://docs.oracle.com/en/java/javase/21/language/sealed-classes-and-interfaces.html)

**We can achieve this using [`sealed` types](https://docs.oracle.com/en/java/javase/21/language/sealed-classes-and-interfaces.html).**
The idea behind `sealed` types is simple.
We can mark a class or interface as `sealed` if we want to limit which classes or interfaces can extend it.

In the code below, we are sealing the `Element` interface, saying that it can only be implemented by the named classes.

Remember that we _want_ compiler hints about type errors.
The `sealed` declaration tells the compiler that "these are the only things that will ever implement this interface".
This helps the compiler to help us.

```java
public sealed interface Element permits Landmark, SightseeingArea, Museum {
  ...
}
```

The compiler can now be satisfied ***without*** the `default` case in the switch expression, because it knows that we have achieved type coverage.

```java
public static void exportXML(List<Element> elements) {
    for (Element current : elements) {
        // This is now okay without the default case
        switch (current) {
            case SightseeingArea s -> System.out.println("Visiting sightseeing area");
            case Landmark l -> System.out.println("Visiting landmark");
            case Museum m -> System.out.println("Visiting museum");
        }
    }
}
```

Through the combination of pattern matching and sealed types, we get the following benefits:
* **Static type checking.** We can write a concise `switch` expression, but can still confidently rely on our compiler to tell us if we have cases that we have not covered by our visitor.
* **Dynamic type checking.** We can write code specific to particular subtypes of `Element`, since the `switch` expression performs a type check at runtime and gives us a reference with the appropriate type, as long as it's a subtype of `Element`.
* We can do all of this without ever changing the code in the `Element` interface or its subclasses, without even adding an `accept` method.

This use of pattern matching is well-described in _[Visitor Pattern Considered Pointless — Use Pattern Switches Instead](https://nipafx.dev/java-visitor-pattern-pointless/)_, though I disagree with the title.
I don't think pattern matching renders the Visitor pattern "pointless": it just changes what it looks like.

As we talk about more design patterns, remember that they can exist both within and without Java-specific features like interfaces and abstract classes.
Design patterns are _ideas_, _templates_ to help solve or think about software problems, and they can exist without any particular programming language in mind.

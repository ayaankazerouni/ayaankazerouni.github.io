---
layout: coursenotes 
title: Learning a Second Programming Language
---

{:.callout .reading}
[1] [Understanding Conceptual Transfer for Students Learning New Programming Languages](https://dl.acm.org/doi/10.1145/3372782.3406270) by Ethel Tshukudu and Quintin Cutts

Prior work on PL transfer focuses on transfer of *problem-solving strategies* as experts transition from one language to the next. But we don’t know much about how PL transfer happens during *code comprehension*.

We’ve previously talked about how students can face difficulties transitioning from blocks-based languages to text-based languages. We have some empirical evidence for the types of programming constructs (loops, conditionals, etc.) that might trouble them, but this empirical evidence doesn’t give us much in the way of a *predictive* *theory* of how this transfer takes place and is helped or hindered. Having such a predictive theory can give us clues about the cognitive difficulties that we should pre-empt while teaching a second or third programming language.

These papers propose and evaluate such a theory of transfer of knowledge between programming languages.

### Mindshift learning theory (MLT)

- *Carryover concept***:** concept with similar meaning in the old and new contexts (PLs)
- *Changed concept***:** concept is similar to a known concept but has a different meaning in the new context (PL)
- *Novel concept***:** concept not already known to the learner

### Learning a second natural language

We know from fMRI studies that programming languages and natural languages are related; they activate the syntactic and semantic regions of the brain. These papers draw on this relationship.

**Similarity relations between languages**

- *Similarity relation:* item or pattern in L2 is perceived as similar to a form or pattern in L1. For example, *mine* (English) and *mein* (German)
- *Contrast relation:* Underlying similarities between items, but important differences. For example, *lecturer* (English) and *lektura* (*reading*; Polish).
- *Zero relation:* Little-to-no perceptible relation between an item in L1 and L2. For example, *talk* (English) and *rozmowa* (*talk* in Polish)

## Learning a second programming language

The paper suggests that knowledge of a programming language is organised into a network of interconnected knowledge structures. These knowledge structures are:

- *Syntax level*: Knowledge of the syntax of a known programming language. For example, `int mark = 4;`
- *Semantic level:* The “meaning” of the syntax. For example, the variable `mark` is being declared as an integer and initialised to `4`.
- *Conceptual level:* Higher-level concepts known by the programmer. For example, *variable introduction.*

Notice that items #1 and #2 above are making a distinction between two skills: being able to read (trace) programming language syntax, and being able to understand the purpose of that syntax from a higher level. This hearkens back to the idea that [introductory programming skills ought to be separated and sequenced](https://doi.org/10.1080/08993408.2019.1565235).

### Semantic transfer between PL1 and PL2

The figure below, reproduced from Dr. Tshukudu's paper, depicts a theoretical model of a student's understanding of a first programming language (PL1), and what their understanding might look like after an "ideal learning process" in which they learn an additional programming language (PL2).

The conceptual level depicts a programming concept, and the semantic level depicts "how it works" in the programming language.
For example, in the figure on the left, a concept might be "conditional logic".
But there are multiple options for realising this same concept, that work slightly differently (for example, `switch` statements and `if-else` ladders).
Finally, those constructs certainly look different from each other syntactically.

{% include image.html
  url="model.png"
  description="A model of PL transfer (reproduced from [1])."
%}

After the "ideal learning process" in which the student learns PL2, the student is correctly able to:

* Connect constructs that look and behave the same in the two languages (similar syntax and semantics)
* Connect constructs that look different but behave the same in the two languages (different syntax, but similar semantics)
* Distinguish between constructs that look the same, but behave differently in the two languages (similar syntax, but different semantics)
[^transfer]

[^transfer]: Note that the figure omits issues of negative transfer from _other_ domains that might interfer with learning PL1 itself. This model is specifically focused on knowledge transfer from PL1 to PL2, not on the initial learning of PL1 itself.

With the above optimistic eventualities in mind, we can think about relationships between constructs in the two programming languages as follows:

- **True carryover construct (TCC):** Similar syntax and same underlying semantics in PL1 and PL2. (E.g., a `while` loop in Python and Java)
- **False carryover construct (FCC):** Similar syntax, but different semantics. Negative transfer! (E.g., integer division in Python and Java).
- **Abstract true carryover construct (ATCC):** different syntax by same semantics. (E.g., objects in Java are kind of like `dict` in Python, or maybe list comprehensions in Python and the `map` or `filter` functions in JavaScript).

Totally new (conceptually, semantically, and syntactically novel) constructs in the second PL will appear as brand new strands, unrelated to any known concepts.

{% include image.html 
url="transfer.png"
description="An example of knowledge transfer between PL1 and PL2 (reproduced from [1])."
%}

The figure above shows:

* **On top** — The "actual" constructs and the relationships between them.
  * For TCCs—constructs with similar syntax and semantics in both languages—the learner is able to transfer their knowledge of PL1 to PL2 with no problem.
  * For FCCs, the semantic difference is noted, in spite of the syntactic similarity.
  * For ATCCs, the semantic similarity is noted, in spite of the syntactic difference.
* **On the bottom** — Disaster!
  * For TCCs, everything is fine. The learner is able to transfer their PL1 knowledge to PL2.
  * For FCCs, the learner perceives them as TCCs, i.e., they expect the construct in PL2 to behave the same as in PL1 because they look similar. This is negative knowledge transfer.
  * For ATCCs, the learner perceives them as FCCs, i.e., they _fail_ to see how a construct in PL2 in similar to a construct they already know from PL1, because they look different. This is a lack of knowledge transfer.

Of course, this is just a theory. But is this actually what happens? The authors tested it out.

{: .callout .ponder }
Think about the first two programming languages you learned. For many of you, this will have been two quarters of Python followed by Java. What aspects of this model hold for you? What doesn’t hold?

### How does this theory hold up?

The authors conducted two studies.
First, for constructs in Python and Java, they labelled them as TCCs, FCCs, or ATCCs.
Then, they recruited students with knowledge in one language and gave them some instruction and assessment in the second language.

They tested these hypotheses.

- H1: No difference in quiz scores for concepts involving TCC between PL1 and PL2
- H2: PL2 scores will be lower for concepts involving FCC between PL1 and PL2
- H3: PL2 scores will be lower for concepts involving ATCC between PL1 and PL2

**Study 1: Python → Java**

Results largely hold up. 

{% include image.html
url="study1.png"
description="Predictions largely held up in study 1. (Reproduced from [1])" %}

Example of inappropriate semantic transfer:

```python
# This doesn't work in Python
print("Friday is no: " + 1)
```

```java
// Participants expected this to not work in Java
System.out.println("Friday is no: " + 1);
```

**Study 2: Java → Python** (IT students; exposure to Java the prior semester; non-CS undergraduate degrees; more advanced level of learning Python than the Study 1 participants were at learning Java)

Results *kind of* hold up.

{% include image.html
url="study2.png"
description="Predictions kind of held up in study 2, but not as strongly as in 1. (Reproduced from [1].)" %}

{: .callout .ponder }
It appears that transfer from Java to Python was easier than transfer from Python to Java. Why do you suppose this is?

---

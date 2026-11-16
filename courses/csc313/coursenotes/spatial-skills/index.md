---
layout: coursenotes
title: Spatial skills and programming education
---

{:.callout .reading}
* [1] [Investigating the Relationship Between Spatial Skills and Computer Science](https://doi.org/10.1145/3230977.3230990) by Jack Parkinson and Quintin Cutts (2018)
* [2] [Spatial Encoding Strategy Theory: The Relationship Between Spatial Skill and STEM Achievement](https://doi.org/10.1145/3291279.3339414) by Lauren Margulieux (2019)

There is some evidence of a relationship between *spatial skills* and achievement/ability in STEM fields. Recently, this has come to include a relationship between spatial skills and programming ability. 

This is a significant finding if we can build on it, because it’s a lot easier and cheaper to give someone spatial skills training than to teach them programming.
So this may have impacts on performance and retention in early programming courses.

However, while correlations have been uncovered, we don't yet have great explanations for _why_ they exist.

In this lecture we’ll discuss:

- Spatial skills and spatial skills training
- A proposed explanation for the relationship between spatial skills and STEM achievement
- Implications for computing education

---

## What are spatial skills?

> *Attempting to understand and discuss something like spatial orientation skill, which is by definition intuitive and nonverbal, is like trying to grab smoke: The very act of reaching out to take hold of it disperses it. —* [Lindsay Anne Tartre](https://www.jstor.org/stable/749375)

Spatial skills are hard to define, but they’ve been broken down into a few categories:

- Spatial visualisation
- Spatial relations
- Closure speed
- Closure flexibility
- Perceptual speed

### Spatial visualisation

This is the proficiency in being able “to mentally rotate, twist, or invert pictorially presented visual stimuli”.[^mcgee]

[^mcgee]: Mark McGee — [Human spatial abilities: Psychometric studies and environmental, genetic, hormonal, and neurological influences.](https://eric.ed.gov/?id=EJ216584)

Can be further broken down into **mental rotation** and **mental transformation.**

#### Mental  transformation

The manipulation and modification of objects. For example, see the question below.

{% include image.html 
url="transformation.png"
description="Identify the cross-section after the following transformation has occurred. (Reproduced from [1])"
%}

Identify the cross-section after the following transformation has occurred. (Reproduced from [1])

#### Mental  rotation

The ability to perform rotations on mental constructs; ability to see a physical representation of a structure and mentally imagine what the object would look like rotated in a different orientation.

Consider the following tests for 2D and 3D rotations.

{% include image.html 
url="rotation.png"
description="Which of the following corresponds to the original shape?(Reproduced from [1])"
%}

{% include image.html
url="rotation-3d.png"
description="Test of 3D rotation. Reproduced from [1])"
%}

### Spatial relations

The ability to understand the arrangement and orientation of objects or patterns within their environment.

{% include image.html
url="relation.png"
description="Identify which of the following options corresponds to the following cube. (Reproduced from [1])"
%}

### Other factors

#### Closure speed

Speed in identifying an *unknown* pattern in an *obscured* environment.

{% include image.html
url="closure-speed.png"
description="Closure speed (Gestalt Completion Test). What do the two figures above depict? (Reproduced from [1])"
%}

#### Closure flexibility

Speed in identifying a *known* pattern in an *obscured* environment.

{% include image.html
url="closure-flexibility.png"
description="Closure flexibility (Hidden Figures Test). Which of the shapes in the top row appear in figures I and II in the bottom row? (Reproduced from [1])"
%}

#### Perceptual speed

Speed in identifying a *known* pattern from an *unobscured* environment.

{% include image.html
url="perceptual-speed.png"
description="Perceptual speed (Identical Pictures Test). Which of the figures is most similar to the first figure? (Reproduced from [1])" 
%}

{: .callout .todo }
Do the “Spatial skills activity” in Canvas. As you work through the questions, think about the strategies you’re employing to solve those problems. Try to articulate what it is you’re doing as you try to solve those problems.

## Spatial skills and STEM/CS

The relationship between spatial skills and STEM is nearly 70 years old. It’s a bi-directional relationship. 

STEM practitioners (for example, chemistry, engineering, and, more recently, programming) have been shown to perform better than non-STEM practitioners on tests of spatial skills. And people who receive spatial skills training have been shown to perform better in STEM fields like computing than those who do not receive the spatial skills training.

**We can reliably train spatial skills to see an improvement in engineering courses.**

There are two arguments here: 

1. It seems likely that the same *underlying cognitive functions* are being exercised while performing spatial reasoning tasks and, say, programming. 
2. More importantly, exercising those cognitive processes in one context (spatial reasoning) seems to also hone those skills for the other context (programming). That is, the knowledge *transfers* from one context to the next.

Today we’ll try to understand the models that underly this relationship [1] and talk about a proposed theory for why this transfer takes place [2].

## Spatial skills, program comprehension, and problem solving

Parkinson & Cutts put forth two guesses as to what's going on.

### Program comprehension

In *The Programmer’s Brain,* Felienne Hermans tell us that *chunking* plays a large role in the process of program comprehension.

Our *working memory* is responsible for temporary storage and processing of information.
It's where most of our “thinking” takes place, e.g., language comprehension, learning, and of course spatial reasoning.
It is severely limited in the number of Things it can process at once, so to help it along, we are constantly retrieving related information from our long-term memory into our working memory.

Our *long-term memory* is like our hard drive—it’s practically limitless and stores information organised as a network of nodes.[^simplified]

[^simplified]: This is a greatly simplified view of the world, but one I can work with.

The connections between these nodes are critical for our ability to recall particular pieces of information.
When connections between nodes are particularly strong, we are able to “chunk” multiple pieces of related information together.
This lets us process all of that information *as a single unit* in working memory, greatly expanding the amount of information that can be processed in working memory.

This effectively expands our ability to “think”! This expansion is usually domain-specific and does not automatically transfer from one domain to another.
Being able to memorise a hundred numbers does not mean one can also memorise a hundred names or faces.

While trying to understand a program, those "chunks" can be familiar syntax forms (e.g., `public static void main` in a Java program, the variable `i` being the counter in a `for` loop) or *templates, variable roles*, or *design patterns* that,  through repeated exposure, you have internalised into atomic chunks.
For example, to a software engineer who has learned about the Visitor Design Pattern, a codebase using that pattern will be like a map clearly laid out in front of them, easy to navigate to perform some programming task.
To a developer unfamiliar with the pattern, the codebase is just a large amount of source code that needs to be understood through programming expertise alone (which, to be clear, can get you quite far; but wouldn't it nice if it were easier?).

The task of recognising these "anchors" or "beacons" in a codebase and retrieving the relevant knowledge is a lot like the task of **identifying known patterns in an obscured environment**, i.e., the closure flexibility task.

### Problem-solving

Recall the idea of a *mental model—*an abstract belief about a system or problem at hand. In order to correctly understand or write a program, a person must have an accurate mental model of the machine that will be “executing” the program. For learning programming, the “machine” or runtime environment can also be reasoned about at a more simplified, abstract level (i.e, a *notional* machine).

We know that experts develop robust mental models that are adaptable, in contrast to novices, whose mental models tend to be fragile, internally inconsistent, and liable to unpredictable change.

Constructing a mental model of a system (or a notional machine) requires understanding how various components are linked together; it must be subject to development and restructuring as and when required.

This manipulation **of abstract structures is closely related to the cognitive processes at play in the mental transformation spatial reasoning task above.**

**Considering concepts in new orientations or contexts is akin to the tasks of spatial relations (or mental rotation for more complex tasks).** For example, consider the multiple ways in which some compound data may be represented. Depending on the task, the programmer may be expected to fluidly transition from one representation to the next to aid in the problem solving process.

### Some experimental results from Parkinson and Cutts

**Experiment 1. (2019, in [1])**

- 1st year, honours 1st year, MS, PhD, and Staff
- Systems, HCI, Data, and Theory/algorithms
- **More or less, spatial skill increased as academic attainment increased**
    - With the exception of PhD students, for whom the spread was large, attributed to the wide range of backgrounds of these students
- **The Theory/algorithms area had the highest spatial skill, and the HCI area had the lowest**

**Experiment 2. (2020, in *[The Effect of a Spatial Skills Training Course in Introductory Computing](https://dl.acm.org/doi/abs/10.1145/3341525.3387413)*)**

- Some students in CS 0 and CS 1 received online spatial skills training
- Findings:
    - Online training improved spatial skills, wiping out any initial difference between men and women
    - In the CS 0 course, the students who received spatial skills training outperformed those who did not
    - In the CS 1 course, there was no difference

## Spatial encoding strategy theory

We now have a general idea that the same cognitive functions are being exercised when one performs spatial reasoning tasks as well as when one engages in programming and problem solving (argument #1 above). We now turn to argument #2, which tells us that these cognitive skills seem to transfer from the context of spatial skills training to the context of programming (or other STEM fields).

That second point is something of a curiosity. Recall our discussions in week 1 about the idea that Computational Thinking would enable people to apply computational ideas to their everyday life. Those arguments have largely not been backed up by evidence.
Computational thinking skills do not automatically transfer to other contexts.
Transfer of learning doesn’t happen automatically; we have to explicitly teach for transfer, and even then it is difficult.

So why do skills gained from spatial skills training apparently transfer to STEM contexts, and vice versa, without explicitly teaching for this transfer?

Spatial encoding strategy theory, proposed by Lauren Margulieux [2], posits that spatial reasoning requires the following two _generalisable_ skills:

- The ability to encode _mental representations of non-verbal information_ (e.g., constructing a mental model of abstract systems and how they work). Non-verbal information, even if not related to spatial skills, tends to be stored using the same cognitive mechanisms as spatial information.
- This includes the _identification of useful landmarks_ to orient the mental representation

These are important problem-solving skills in virtually all STEM disciplines. Margulieux suggests that this theory would explain a number of findings in prior work.

- **Learners rely on general problem-solving skills before learning domain-specific ones.** Learners with higher spatial skills have better general strategies for representing problems and for identifying landmarks (“beacons”) in problems, both of which make problem-solving less taxing.
- **Spatial skill predicts initial STEM achievement more accurately than later STEM achievement.** As learners gain more domain-specific skills, their reliance on general problem-solving strategies (like those gained from spatial skills training) are less relevant. This is in keeping with [2020 findings from Jack Parkinson and Quintin Cutts](https://dl.acm.org/doi/abs/10.1145/3341525.3387413), which found that explicit spatial skills training was associated with improved performance in a CS 0 course, but not a CS 1 course. What's pretty cool is that Spatial encoding strategy theory was published the year before this finding, and could essentially predict it.
- **There are slight gender differences in initial spatial skills**. At the college level, men seem to have higher initial spatial skills than women. This can be linked to influences growing up (toys, encouragement for different disciplines, etc.). Importantly, even a little spatial skills training pretty much eliminates these differences, and spatial skills training reliably increases STEM performance.
- **The seemingly automatic transfer of spatial skills to programming tasks.** Spatial training directly addresses the _general_ skills described above, rather than domain-specific skills. It is easier to transfer skills from general contexts to domain-specific contexts than vice versa.

## Discussion

{: .callout .ponder }
Should we include spatial skills training in our introductory programming curriculum?

---



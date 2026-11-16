---
layout: coursenotes
title: Metacognitive scaffolding
---

{: .callout .reading }
* [1] [Metacognitive Difficulties Faced by Novice Programmers in Automated Assessment Tools](http://dl.acm.org/citation.cfm?doid=3230977.3230981) by Prather, Pettit, McMurry, Peters, Homer, & Cohen
* [2] [First Things First: Providing Metacognitive Scaffolding for Interpreting Problem Prompts](http://dl.acm.org/citation.cfm?doid=3287324.3287374) by Prather, Pettit, Becker, Denny, Loksa, Peters, Albrecht, & Masci
* [3] [Executable Examples for Programming Problem Comprehension](http://doi.acm.org/10.1145/3291279.3339416) by Wrenn & Krishnamurthi

## Metacognitive awareness

We’ve talked a lot this quarter about various aspects of teaching and learning programming: syntax, behaviour, cognition and memory, managing motivation and self-efficacy, and sense of belonging.

Researchers and educators are increasingly starting to focus on an additional aspect: *metacognitive awareness*, particularly as it relates to problem-solving in programming.

Having metacognitive awareness means knowing where one is in the problem-solving process, being aware of strategies that have been successful or unsuccessful in the past, and monitoring one’s self-efficacy and emotions. This is surprisingly difficult to do!

Novice programmers often lack this ability to think about and reflect on their problem-solving process, and lack the vocabulary to articulate it to a peer or instructor. This can cause all sorts of trouble: without knowledge of a systematic problem-solving process (and without knowledge of one's own progress through that process), a novice can flounder while solving a programming problem without knowing where their difficulties lie, and can even have difficulties seeking help to overcome those difficulties.

To overcome this, instructors often explicitly teach problem-solving strategies. For example, consider the Design Recipe from *[How to Design Programs](https://htdp.org/)*:

1. Identifying the types of data needed for a function to solve a problem
2. Write down the function signature and statement of purpose
3. Provide some functional examples to illustrate the function’s purpose
4. Sketch out the function with a template
5. Implement the function
6. Test the function

Similarly, Loksa et al.[^loksa] propose the following six-step problem-solving process:

1. Reinterpret the problem prompt
2. Search for analogous problems
3. Search for solutions
4. Evaluate a potential solution
5. Implement a solution
6. Evaluate implemented solution

When these processes are taught, students are often asked to identify where they are in the process before receiving help from instructors. Additionally, they may only be given help up to and including their current step. For example, a student may not receive help with implementing a function (step 5 in both processes above) if they have skipped the steps to understand and concretise the function’s purpose (steps 1—4).

**The highest-performing novices tend to display higher metacognitive awareness about their problem-solving and learning strategies.**

## Feedback in CS courses

CS students often receive feedback about their program submissions from automated assessment tools (AATs). Feedback can focus on

- Syntax (e.g., compiler error messages, which can often be inscrutable, frustrating, and demotivating to novices)
- Behaviour (e.g., instructor-written reference tests)
- Programming standards (using linting tools or manual checking)
- Thoroughness and validity of student-written tests (using test adequacy criteria like condition coverage or, rarely, mutation analysis)

In this way, most AATs only attend to steps 5 and 6 of the Design Recipe (and equivalent steps in Loksa's steps). There is little focus on steps 1–4, i.e., limited feedback to help promote metacognitive awareness, or to nudge students to reflect on their problem-solving process.

Worse, other factors can come into play that may _encourage_ bad habits. For example, many AATs support unlimited submissions so students can receive rapid feedback. While frequent feedback can be a good thing, this can encourage a trial-and-error approach to programming, where students come to rely on the AAT as the oracle to test their programs.

{: .callout .ponder }
You’ve likely had plenty of experience with auto-graders. In what ways have they been helpful? Do you see opportunities for improvement?

### How can automated assessment tools support metacognitive awareness?

In paper [1], Prather et al. study how AATs could be built to better promote metacognitive awareness in novices.

The researchers conducted a number of one-on-one meetings with students and asked them to  work on a “moderately challenging” programming problem while thinking out loud, i.e., verbalising their thought process as they worked on the problem. They were given 35 minutes to write a function that, given *n* numbers, would compute whether there were more positive or negative integers given as input. The researcher took extensive notes as the student solved the programming problem.

**Students who completed the problem**

These students almost universally started with step 1 in Loksa’s process—*reinterpret the problem prompt.* They formed and verbalised a conceptual model of what the problem was asking for before starting to design a solution. These students also more or less followed the steps in the problem-solving process.

Some students took a long time to complete the problem. They started by interpreting the problem prompt, and got tripped up at some later stage of the problem-solving process.

Two students tried to solve the problem of *counting the number of even and odd integers* instead of *counting the number of positive and negative integers.* (It should be noted that the even/odd problem had been asked before and was familiar to them.)
These students didn’t immediately realise that they were *solving the wrong problem,* and grew increasingly frustrated as they failed to pass the test cases.

Eventually, they would re-read the prompt, realise their mistake, and very quickly solve the problem.
The lack of metacognitive awareness *almost* kept otherwise capable students from succeeding, and the AAT’s feedback did not alert them to the issue at all.

**Students who did not complete the problem**

These students failed to successfully move through the problem-solving steps. The most frequent issue for these students was that they failed to build a conceptual model of the problem. The immediately moved to *identifying analogous problems* and *searching for solutions,* and the AAT was not able to alert them that they had a wrong conceptual model.

#### Type of metacognitive difficulties faced when working with an AAT

To sum up, the authors noticed the following metacognitive difficulties the students faced when dealing with feedback from an AAT:

- Forming a wrong conceptual model about the right problem
- Dislodging an incorrect conceptual problem may not be solved by re-reading the prompt
- Making assumptions; forming the correct conceptual model for the wrong problem
- Moving too quickly through the stages leads to a false sense of accomplishment
- Unwillingness to abandon a wrong solution due to a false sense of nearly being done[^false-progress]

[^false-progress]: I thought this was particularly insidious. Consider the students who were mistakenly solving the _Even/Odd_ problem instead of _Positive/Negative_. The list `[4, -3, -5, -7, 1, -2]` has more negative numbers than positive numbers _and_ more odd numbers than even numbers. If the function is simply returning `false` for "more negative" (or "more odd" for the mistaken students), there will be some overlap in the passing test cases for _Even/Odd_ and _Positive/Negative_. So these students actually passed some test cases, even though they were solving the wrong problem! And those passing test cases led them to believe that they were on track to correctly solve the problem.

### Metacognitive scaffolding for problem comprehension

Importantly, 3 of the difficulties above are related to problem comprehension, i.e., *understanding what is being asked for.* That is, they are related to

- Step 1 in Loksa’s problem-solving process (*reinterpret the problem prompt*), and
- Step 3 in the Design Recipe (*design functional examples to illustrate the problem’s purpose*).

Therefore, these same authors introduced a simple intervention to target problem comprehension [2]. The intervention is as follows:

- Students were given the problem prompt
- *They were then given a test case to solve immediately after reading the problem prompt*
- Then they were asked to solve the problem

That simple intervention—asking the student to demonstrate that they’ve understood the problem prompt by predicting a working program's output for some given input—had significant impacts on students’ abilities to complete the problem, compared to students who did not receive the intervention.

Compared to a control group, the students who received the intervention:

- were more likely to complete the problem (76.19% vs. 52.94%)
- completed the problem slightly faster (22.62 minutes vs. 23.92 minutes on average)
- required fewer submissions to do so (4.48 submissions vs. 7.59 submissions on average)

{: .callout .ponder }
What do you suppose are the reasons for these results?

## “Automated” scaffolding for problem comprehension

In separate but related work, Wrenn & Krishamurthi [3] introduced a feature in their pedagogic IDE, giving students tooling to attend to the *Examples* step of the Design Recipe. The feature works as follows.

Programming assignments are distributed inside the pedagogic IDE **[code.pyret.org](code.pyret.org)**. The assignments come with

- *Wheats:* correct solutions implemented by the instructors; wheats would vary in terms of how they implemented underspecified requirements
- *Chaffs:* buggy solutions implemented by the instructors; the buggy solutions are curated so that they represent bugs that could plausibly appear in student solutions

For example, if a problem asked students to compute the median of a given list of integers,

- Wheats would include implementations that treat even-sized lists of numbers differently. That is, in a sorted list of 4 items, some median calculations would take the second item as the median, while others would take the average of the second and third items as the median.
- Chaffs would include implementations that compute the mean instead of the median, or implementations that do not correctly handle empty lists.

Before working on implementing solutions to problems, students were asked to create *executable examples* for the problem. 
The examples are simple input+output pairs—that is, for some given input, what should the function's output be?

```
median([1]) == 1
median([1, 2, 3]) == 2
median([2, 3, 4, 1]) == 2.5
```

This suite of examples can be assessed as follows:

- _Validity_ was assessed based on whether or not the examples were accepted by the *wheats*. If a wheat “fails” an example, it means the example is incorrect. *This means the student has formed an incorrect understanding of the problem*.[^wheat-caveat]
- _Thoroughness_ was assessed based on the number of *chaffs* that were detected by the student’s set of examples. If a chaff does not “fail” against at least one example, it means the examples are incomplete in terms of the number of cases it covers. *This could mean the student has an incomplete understanding of the problem.*

So far, the students have not yet written their own implementations. They are still only testing their understanding of the **problem**.

It's important to note that these examples are _not_ test cases, even though they look like test cases.
The examples are not being run against the student's own solution (which may or may not exist yet)—they are being run against *the problem prompt*.
In this paper, the authors have the examples *checkable* by implementing a series of correct and incorrect implementations.

Results were promising:

- Students used executable examples even when it was not required; it was a helpful metacognitive scaffold.
- The *examples* students created turned into *tests* once they went on to implement their own solutions; a win for step 6 of the Design Recipe!
- Test suites were more valid than before—they were less likely to overzealously reject correct implementations based on underspecified behaviour.
- The authors also suggest that the existence of this feature helped reduce load on course staff: if students were not sure of underspecified requirements, they could just "ask the IDE" by probing the problem with examples.

## Discussion

{: .callout .ponder }
In groups, discuss amongst yourselves ways in which this focus on metacognitive awareness can factor into your teaching. Consider the different teaching contexts you've been in this quarter while you discuss (tutoring, workshops, lab activities).

---

[^loksa]: [Programming, Problem Solving, and Self-Awareness: Effects of Explicit Guidance](https://doi.org/10.1145/2858036.2858252). Loksa, Ko, Jernigan, Oleson, Mendez, & Burnett.
[^wheat-caveat]: It can also mean the instructor messed up their solution and the student has found a bug, but this is less likely.

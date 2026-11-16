---
layout: course
title: CSC 203 Project-based Object-oriented Programming and Design
---

<div class='two-column-container' markdown="1">

<div class='left-column' markdown="1">

* seed list
{:toc}

</div>

<div class='right-column' markdown="1">

Welcome!

This course is all about software design.
We will use object-oriented programming as a vehicle to study software design principles like separation of concerns, coupling and cohesion, and encapsulation.
We will learn and use the Java programming language in this course, though the software design lessons learned are meant to be transferable to other languages and programming paradigms as well.

Here's the description in the course catalogue:

Object-oriented programming and design with applications to project construction. Introduction to class design, interfaces, inheritance, generics, exceptions, streams, and testing. 3 lectures, 1 laboratory. Prerequisite: CPE/CSC 202 with a grade of C– or better or consent of instructor.

## Info and links

* Instructor: Ayaan M. Kazerouni
* Email: ayaank@calpoly.edu
* Office hours: [See my website](https://ayaankazerouni.org)
* [Class Canvas](https://canvas.calpoly.edu/courses/165751)
* [EdStem forum](https://edstem.org/us/courses/86152/discussion) (see the invite link in Canvas)
* [Course schedule](#course-schedule) (Check this frequently!)
* [CSSE tutoring lab](https://csc.calpoly.edu/tutoring/): Your fellow students offer free tutoring for various introductory CS courses, including CPE/CSC 203.

## Learning objectives

By the end of the quarter, we aim for you to be able to:

* Explain key object‐oriented concepts including: classes, objects, methods, instantiation, invocation, interaction between objects, composition, encapsulation, and use of class libraries.
* Use object‐oriented concepts and design to implement moderately sophisticated “large” programs.
* Describe the philosophy and mechanics of interfaces, including abstraction, separation between specification and implementation, subtypes and type casting, polymorphism, interface hierarchies, and implementation of multiple interfaces.
<!-- * Define interfaces in programs to support abstractions according to the principles of interface segregation and dependency inversion where design weaknesses are identified. -->
* Create a unit test plan for a set of methods in a class.
<!-- * Discuss the differences among generics, sub-typing, and overloading. -->
<!-- * Describe the philosophy and mechanics of inheritance including generalization, specialization via extension, difference between extension and composition, subtypes and type casting, polymorphism, and inheritance hierarchies. -->
* Use inheritance in the implementation of program components such as in the application of a refactoring process to an existing software implementation to improve some aspect of its design.
<!-- * Explain the relationship between object‐oriented inheritance (code‐sharing and overriding) and sub-typing. -->
* Articulate design principles including separation of concerns, information hiding, coupling and cohesion, and encapsulation.
* Apply class design principles to the development of a design document for a moderately sophisticated “large” program.
* Implement programs that use generic types.

## Class communication and getting help

You are welcome (and encouraged!) to stop by my office when you have questions or just want to chat about the course.
See my [current office hours and location](https://ayaankazerouni.org).
If you can’t make the hours listed, contact me and I'm happy to schedule an appointment for another time.

Our lab sessions are also a good time to ask me questions or to discuss assignments with your classmates (within the bounds of the [academic integrity policy](#academic-honesty)).

Beyond that, all asynchronous communication for this class will take place [this EdStem forum](https://edstem.org/us/courses/86152/discussion).
(Before accessing it for the first time, you'll need the invite link from Canvas.)

Please ask all course-related questions in EdStem, unless you are sending me documents or files of some kind, or asking about things that apply only to you, like assignment extensions.

Some benefits of using EdStem are:

* You can answer each other’s questions or participate in discussions.
* The forum will be a searchable index of questions. This can save you a ton of time when you’re working on something and need a question answered. It will also help me avoid answering the same question multiple times.
* You can post questions anonymously.

## Attendance policy

There is no explicit attendance policy for this class. However,

* There will occasionally be graded activities in class that you must be present to complete.
* There is no textbook that we'll follow, nor are there usually slides. I'll upload code examples I discuss in class, but studying from them will be difficult without the surrounding context you would receive by attending class.
* My teaching is interactive; I rely on input from students to drive class sessions, particularly while live-coding. If you're not present, you're relying on other students asking the questions you might want to ask.

Anything I say in class is fair game for quizzes (within reason and unless specified otherwise).

All this adds up to: **I strongly recommend that you attend every class session!**

If you're unable to attend class for some reason, drop me a note to let me know. This way if there's an activity that class period, I can give you an opportunity to make it up.

## Assignments

| Frequency         | Portion of the final grade |
| ----------------- | -------------------------- |
| 6–8 lab exercises | 20% (2-3% each)            |
| 4 projects        | 40% (11% + 11% + 11% + 7%) |
| 6–7 quizzes       | 15% (3–4% each)            |
| 1 final exam      | 15%                        |
| Participation     | 10%                        |
| Total             | 100%                       |

Please see each program description for grading/rubric details.

At the end of the course, I will round UP your final numerical score and turn that into a letter grade using the following scale:

<ul style='font-size: 0.9em; column-count: 3; width: 50%; min-width: 300px;'>
<li>A >= 93</li>
<li>A– >= 90</li>
<li>B+ >= 87</li>
<li>B >= 83</li>
<li>B– >= 80</li>
<li>C+ >= 77</li>
<li>C >= 73</li>
<li>C– >= 70</li>
<li>D+ >= 67</li>
<li>D >= 63</li>
<li>D– >= 60</li>
<li>F < 60</li>
</ul>

I won’t curve grades, aside from a few very specific cases. Please don’t ask me if I’ll curve your grade at the end of the quarter.

* Source code for all programming assignments will use Java version 25.
* For all labs and projects, we will use IntelliJ IDEA as the editor, and GitHub classroom for downloading starter files and submitting solutions.
* Please create a GitHub account by the first day of class. If your GitHub username does not include your name, please add your name to your profile—I'll need to know to whom each account belongs.

### Labs

There'll be a lab assignment roughly each week. These are meant for _practice_ with the concepts we talk about in lecture. The goal here is to familiarise you with material necessary for your projects and to help you do well on the quizzes.

The three hours of scheduled lab time each week is the primary time I'll be available for questions and assistance—make good use of this time! You are expected to work on the lab exercises during your scheduled lab time plus as much additional time as necessary to complete them. **You ARE allowed to discuss labs with classmates, but you must turn in your own work.**

You may also demonstrate your lab to myself or the student assistant before your final submission—this will allow you to get at least one round of feedback before grading takes place.

**Late policy**

Labs may be turned in 1 day late for up to 70% credit. It's your responsibility to make sure the staff know when you are doing this—without prior communication, we will not know to look for late lab submissions.

Labs will be graded against test cases, in-lab demonstrations, or both.

### Projects

There will be 4 programming projects throughout the quarter. These are meant for _assessment_ of your ability to apply to the concepts we talk about in lecture and practice in labs.

All projects will require analysis, design, implementation, testing, and documentation.
Turning in a fully functional project is not a guarantee of a perfect score—remember, the goal of this course is to learn about software design, and so each project rubric will involve a significant design component.

**Late policy**

You are allowed THREE late days, to be used as you wish on any of the FIRST THREE projects (not on labs and not on Project 4).

{:.callout }
If you plan to use a late day, you must email me *ahead of time* (i.e., before the active project's deadline) telling me how many late days you plan to use. This must happen over email because we will need to remember that information at grading time.

The reason for this policy is that I recognise life as a college student is often stressful and I don’t know all of the situations you each are experiencing—your mental and physical health is a priority. In addition, if the policy was “no late work”, some students may feel more entitled to ask for extensions in an emergency than others—the extension is meant to be an equaliser.

A couple of things to note regarding this extension:

* Do not use the late days lightly—save it for when you are managing several colliding deadlines or lose days because of illness.
* Do not lose track of when you use late days—it's your responsibility to make sure you don't go beyond your allotted extensions.
* The last three projects will build on each other—you do not want to use late days on those unless absolutely necessary. The class is intentionally paced—if you use this policy as a procrastination tool, your work will pile up.

### Quizzes

We’ll have weekly quizzes, taken on Thursdays at the start of lab.
These are meant to _assess_ your understanding of the concepts we talk about in class.
You must be present in class to take the quiz.
If you are not present in class, your score for that quiz is automatically a 0.

If you have an unavoidable reason why you cannot make it to class on a quiz day, please talk to me about it.
If you miss class for some unforeseeable reason or emergency, please talk to me as and when you are able to after a quiz.
I'm usually willing to do make-up quizzes if they are missed for legitimate reasons.

Quizzes will be cumulative since programming knowledge tends to build on itself.
But they will mostly focus on material from the previous week.

**Quizzes will be open-note.** This means you can use your notes or material that I have provided to help you take the quiz. However, you cannot use other resources like Google, StackOverflow, or large language models to help you take the quizzes.

I won't ask questions that require you to memorise obscure facts, and on the rare occasions I ask you to write code in a quiz, I will be lenient for things like syntax issues.

**Quizzes will have time limits.** These will be somewhat tight time limits.
This means you cannot rely purely on the open notes to take the quiz.

### Final exam

There will be a written final exam during finals week. The exam's goal is, naturally, _assessment_.
The exam will be have questions similar to what you have seen on the quizzes, so studying the quizzes is a good way to study for the final.

**The time and place for the final exam are still being decided,** since it will be a common final exam taken at the same time by all sections of CSC 203.

This means that our course will <span class='emph'>***NOT***</span> use the Registrar-allocated final exam time for our lecture time. We have requested a common final exam slot and will be allocated one by the Registrar in the coming weeks. **I will update the schedule and make an announcement when the time is finalised.**

## Classroom conduct and climate

### Academic honesty

Although I encourage you to have lively discussions with one another, ***all work you hand in must be your own work,*** unless otherwise specified. Programs will be compared using software that can reliably detect similarities in source code.

Though you are encouraged to seek help in tutoring and from the TA and instructor, do not look at classmates’ code or show your code to classmates. Unless explicitly allowed to do so, do not discuss specific implementation of your code. If your program or parts of your program are plagiarized from another student or an unapproved source, you will face severe penalties, to the possible extent of failing the course and having a letter put in your file with Cal Poly Judicial Affairs.

This includes students who copied and students who were copied from—you are responsible for the privacy of your source code.

### Use of large-language models like ChatGPT

Output from AI tools often require corrections in subtle but impactful ways.
It can be challenging for newcomers to a programming language—such as, I expect, yourselves—to tell when AI output requires modifications or wholesale revisions.
From this perspective, part of our goal here is to prepare you to use AI tools effectively in the workplace.

Therefore, we will adhere to some rules and restrictions regarding the use of generative AI in CSC 203.

❌ You MAY NOT use generative AI during quizzes or the final exam.

❌ You MAY NOT submit any code generated by generative AI for programming projects.

✅ You MAY use generative AI on lab assignments, provided that you **provide the prompt you used or a description of your interaction** in a comment in your code. Talk to me if you are not sure how to write this attribution. (Use of generative AI without this attribution will be taken seriously.)

✅ You MAY use generative AI to help you understand the material in this course.

**However, tread lightly**. AI tools can be helpful, and often correct. But their core functionality is simply to give you an answer that looks plausible, without necessarily caring about:

- Providing a correct answer in all cases.
- Serving your learning needs.

We learn best by struggling and surmounting challenges. Uncritical reliance on AI tools will short-circuit this process. Sure, you will get an answer quickly, but the *answer* is not our objective; our objective is the *process* that gets you to the answer. (Just like the goal of lifting weights in the gym is not just to _have the weights in the air_.)

If you do use AI assistants to help you study, you're encouraged to put them in "study mode" first.
Different companies have different names for this:

- ["Study mode" in ChatGPT](https://chatgpt.com/features/study-mode)
- ["Learning mode" in Claude](https://www.anthropic.com/news/introducing-claude-for-education)
- ["Guided learning" in Google Gemini](https://blog.google/outreach-initiatives/education/guided-learning/)

These "modes" nominally do not jump straight to an answer, but try to lead you to an answer while helping you build your understanding.

### Class conduct

Our classroom and lab are to be places of learning and inclusion. Students of all ages, abilities, background, race, sexual orientations, beliefs, religious affiliations, gender identities, and origins are to be treated with dignity and respect as contributors to our scholarly environment.

* We are not code snobs. We do not assume knowledge or imply there are things that somebody should know.
* After our work is complete, we prioritise the education of others and actively offer to help, explain, debug, etc. in order to support one another’s learning. We do not share our working solution, but explain the logic/thinking behind our solution and help others recognise errors in their implementation when invited to do so.
* We consistently make the effort to recognise and validate multiple types of contributions to a positive classroom environment.

## Course schedule

Here is our intended course schedule. If things change as we go, I will update this page.
Assignments and quizzes will appear in Canvas with deadlines.
If deadlines listed here conflict with deadlines in Canvas, **the Canvas deadlines should take precedence**.

{:.emph}
In addition to the assignments listed below, we will have a short, open-note quiz taken in person at the start of each Thursday lab session. You should assume there'll be a quiz unless I tell you otherwise.

| WEEK            | DAY                               | TOPIC AND NOTES                                                                                                                                                                                                                                                | ASSIGNMENTS                                                                                                                                                                                                                                                                                                           |
| --------------- | --------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 0               | Thursday, 9/18                    | [Introduction](https://csc203-calpoly.github.io/lecture-notes/01_intro_to_java/index.html)<br>[Data types, arithmetic, type-casting](https://csc203-calpoly.github.io/lecture-notes/02_arithmetic_and_testing/index.html)                                      | <span class='due'/> Introduce yourself in EdStem<br><small>You'll need to join the forum first, see the invite link in Canvas.</small><br><br><span class='due'/> Create a GitHub account<br><br><span class='due'/> Download and setup IntelliJ IDEA and Java<br><br><span class='released' /> Lab 0 (Intro to Java) |
| 1               | Tuesday, 9/23                     | [Classes, objects, lists, maps](https://csc203-calpoly.github.io/lecture-notes/03_lists_maps_existing_classes/index.html)                                                                                                                                      | <span class='released' /> Lab 1 (Loops and lists)                                                                                                                                                                                                                                                                     |
|                 | Thursday, 9/25                    | **NO CLASS. INSTRUCTOR IS TRAVELING.**                                                                                                                                                                                                                         | **Work on Lab 1.**                                                                                                                                                                                                                                                                                                    |
| 2               | Tuesday, 9/30                     | [Procedural and object-oriented programs](https://csc203-calpoly.github.io/lecture-notes/04_oop_and_procedural/index.html)<br><br>[Method dispatch (overloading and overriding)](https://csc203-calpoly.github.io/lecture-notes/05_method_dispatch/index.html) | <span class='released' /> Project 1                                                                                                                                                                                                                                                                                   |
|                 | Thursday, 10/2                    | [A class design process](https://csc203-calpoly.github.io/lecture-notes/06_class_design_process/index.html)                                                                                                                                                    | <span class='due' /> Lab 1<br><br><span class='released'/> Lab 2 (Classes, objects, and methods)                                                                                                                                                                                                                      |
| 3               | Tuesday, 10/7                     | [Interfaces (part 1)](https://csc203-calpoly.github.io/lecture-notes/07_interfaces/index.html) and [Interfaces (part 2)](https://csc203-calpoly.github.io/lecture-notes/08_interfaces_part_2/index.html)                                                       |                                                                                                                                                                                                                                                                                                                       |
|                 | Thursday, 10/9                    | [Interfaces (part 3)](https://csc203-calpoly.github.io/lecture-notes/09_interfaces_part_3/index.html)                                                                                                                                                          | <span class='due'/> Lab 2<br><br><span class='released' /> Lab 3 (Interfaces)                                                                                                                                                                                                                                         |
| 4               | Tuesday, 10/14                    | [Abstract classes](https://csc203-calpoly.github.io/lecture-notes/10_abstract_classes/index.html)                                                                                                                                                              | <span class='due' /> Project 1<br><br><span class='released'/> Project 2<br><br>                                                                                                                                                                                                                                      |
|                 | Thursday, 10/16                   | [Inheritance](https://csc203-calpoly.github.io/lecture-notes/11_inheritance_equality/index.html)                                                                                                                                                               | <span class='due' /> Lab 3<br><br><span class='released' /> Lab 4 (Abstract classes)                                                                                                                                                                                                                                  |
| 5               | Tuesday, 10/21                    | [`equals`](https://csc203-calpoly.github.io/lecture-notes/11_inheritance_equality#equals) and [`hashCode`](https://csc203-calpoly.github.io/lecture-notes/12_hashCode/index.html)                                                                              |                                                                                                                                                                                                                                                                                                                       |
|                 | Thursday, 10/23                   | [Comparables and Comparators intro](https://csc203-calpoly.github.io/lecture-notes/13_comparable_comparator/index.html)<br>[Comparable](https://csc203-calpoly.github.io/lecture-notes/13_comparables/index.html)                                              |                                                                                                                                                                                                                                                                                                                       |
| 6               | Tuesday, 10/28                    | [Comparators, lambdas, and method references](https://csc203-calpoly.github.io/lecture-notes/14_comparators/index.html)                                                                                                                                        | <span class='due' /> Lab 4                                                                                                                                                                                                                                                                                            |
|                 | Thursday, 10/30                   | [Lambdas and functional interfaces](https://csc203-calpoly.github.io/lecture-notes/15_lambdas/index.html)                                                                                                                                                      | <span class='released' /> Lab 5 (Comparators, lambdas, streams)                                                                                                                                                                                                                                                       |
| 7               | Tuesday, 11/4                     | [Streams](https://csc203-calpoly.github.io/lecture-notes/16_streams/index.html)                                                                                                                                                                                | <span class='due'/> Project 2<br><br><span class='released' /> Project 3                                                                                                                                                                                                                                              |
|                 | Thursday, 11/6                    | [Search algorithms](https://csc203-calpoly.github.io/lecture-notes/17_a_star/index.html):<br>A-star search (compare to [DFS and BFS &#8663;](https://opendsa-server.cs.vt.edu/ODSA/Books/Everything/html/GraphTraversal.html))                                 | <span class='due' /> Lab 5<br><br><span class='released' /> Lab 6 (Depth-first search)                                                                                                                                                                                                                                |
| 8               | Tuesday, 11/11                    | **HOLIDAY**                                                                                                                                                                                                                                                    | **VETERAN'S DAY**                                                                                                                                                                                                                                                                                                     |
|                 | Thursday, 11/13                   | A-Star search                                                                                                                                                                                                                                                  |                                                                                                                                                                                                                                                                                                                       |
| 9               | Tuesday, 11/18                    | More on A-star search                                                                                                                                                                                                                                          |                                                                                                                                                                                                                                                                                                                       |
|                 | Thursday, 11/20                   | [Exception handling](https://csc203-calpoly.github.io/lecture-notes/17_exceptions/index.html)<br><br>Project 4 discussion (during lab)                                                                                                                         | <span class='due' /> Project 3<br><br><span class='released' /> Project 4<br><br><span class='due'/> Lab 6<br><br><span class='released' /> Lab 7 (Exceptions)                                                                                                                                                                                                            |
|                 | Monday, 11/24 – <br>Sunday, 11/30 | **HOLIDAY**                                                                                                                                                                                                                                                    | **FALL BREAK**                                                                                                                                                                                                                                                                                                        |
| 10              | Tuesday, 12/2                     | [Exception handling](https://csc203-calpoly.github.io/lecture-notes/18_checked_unchecked/index.html)                                                                                                                                                           |                                                                                                                                                                                                                                                                                                                       |
|                 | Thursday, 12/4                    | Final exam review                                                                                                                                                                                                                                              | <span class='due'/> Lab 7                                                                                                                                                                                                                                                        |
| **FINALS<br>WEEK** | **FINAL EXAM**                    | **SEE CANVAS FOR TIME AND PLACE**                                                                                                                                                                                                                              | <span class='due'/> Project 4                                                                                                                                                                                                                                                                                                                      |


## Acknowledgement

I inherited a version of this course in 2020, and bits and pieces have changed over the years. But the core content is as it was, so I am grateful to Julie Workman, Paul Hatalsky, Zoë Wood, and Aaron Keen for their efforts in creating this course.

---

</div>

</div>

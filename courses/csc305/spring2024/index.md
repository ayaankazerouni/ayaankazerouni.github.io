---
layout: course
title: CSC 305 Individual Software Design and Development
---

## Contents

* [Acknowledgment](#acknowledgement)
* [Syllabus](#syllabus)
* [Schedule](#course-schedule)

## Acknowledgement

Most of this course content has been adapted from contents handed to me by [Joydeep Mukherjee](https://joydeep-m.github.io/) and [Aaron Keen](http://users.csc.calpoly.edu/~akeen/).

## Syllabus

Welcome!

### Logistics

* Instructor: Ayaan M. Kazerouni ayaank@calpoly.edu
* Office hours: [See my website]({{site.baseurl}}) (Building 14 Room 229)
* Meeting times
  - Lecture: See Canvas 
  - Lab: See Canvas

### What's this course about?

Like it says on the tin, this course is about software design and development. Over the course of this quarter, you'll get a lot of practice building medium-sized software projects mostly from the ground up. You'll be responsible for designing, implementing, and testing your solutions.

Not only will you build non-trivial software, we'll also study pieces of software. We'll look at lots of examples of what we learn being put to practice, including real-world examples.

Throughout the quarter, the focus will go beyond simply "writing correct software" (though that is still an important goal). You'll also be assessed on other factors like code style, readability, documentation, maintainability, tested-ness, etc.

* **Program construction**: Practice building mid-sized production-quality software using a high-level programming language (Java). 
* **Program design**: A recurring theme in the course will be designing your software for *stability* in the face of *changing requirements*.
* **Design patterns**: We will talk about some design patterns. The goal is not to get you to memorise design patterns, but rather to gain an appreciation for the idea of design patterns as way to talk and think about program design. Unlike most books on "design patterns" we will try to think about patterns beyond the context of Object-oriented software.

"Production-quality" means that, in addition to functional correctness (your program does what we expect it to do), you will be expected to attend to the following aspects:
- Code style (e.g., using a linter) and writing code for readability and maintainability
- Testing
- Documentation (i.e., Javadoc comments)

### Course communication

We will use this **Slack workspace** as the class forum. Get yourself added to it using **this invite link**.

Please only contact me on Slack during the quarter, unless you are sending me documents or files of some kind. If you email me, I will respond to your email in Slack.

Some benefits of using Slack are:

* You can answer each other’s questions or participate in discussions.
* Hopefully you will ask questions in the appropriate channel, i.e., `#labs`, `#project`, or `#quizzes`. This will make each channel a searchable index of frequently asked questions. This can save you a ton of time when you’re working on something and need a question answered.
* Slack doesn't support anonymous questions in public channels. If you want to ask a question anonymously, DM me. If I think it's a question that would be useful to the rest of the class, I'll post the question and answer in the appropriate public channel (without your name).

Finally, I encourage you to create private channels with your classmates so you can discuss elements of the course (within the bounds of the academic integrity policy, of course). Slack does not let me see what is discussed in private channels. So this would be a confidential space for students.

### Attendance

There is no explicit attendance policy for this class. However,

* There will occasionally be graded activities in class that you must be present to complete. If you're unable to attend for some foreseeable reason, drop me a note to let me know, and I can give you an opportunity to make it up.
* We won't be following a specific textbook, and I tend to avoid teaching with slides. I'll upload code examples and course notes, but following them will be difficult without the surrounding context you would receive by attending class.
* My teaching is interactive; I rely on input from students to drive class sessions, particularly while live-coding. If you're not present, you're relying on other students asking the questions you might want to ask.
* Anything I say in class is fair game for quizzes (within reason and unless specified otherwise).

All this adds up to: I strongly recommend that you attend every class session.

### Assessments and grading

Types of assessments and their impact on grading are below:

| Activity      | % of Total |
| ------------- | ---------- |
| Labs          | 15         |
| Projects      | 51 (3x17)  |
| Quizzes       | 20         |
| Participation | 9          |

Details about these assessments are below.

#### Labs

Each week there will be a lab activity that is designed to develop and apply the skills discussed in lecture. You can discuss and work on labs collaboratively with your classmates, but any work you turn in must be your own.

All programming assignments will be turned in using GitHub classroom.

#### Quizzes

Each week, there will be a formative quiz to assess comprehension of lecture material and its applicability to the projects. These will be taken synchronously during lab. You must be present to take these quizzes. If you can't make it to lab the take the quiz, let me know beforehand and we can work something out (within reason). If you couldn't make it due to unforeseen circumstances or an emergency, talk to me whenever you can and we can work something out.

#### Projects

As you can see, projects account for the highest share of the project grade. These will be longer-running programming assignments, which may also include written components. They will roughly last for 2–3 weeks each.

Projects are meant to assess your ability to put into practice what we have talked about in lecture and practiced during lab. Projects must be completed individually. Evidence of illicit collaboration with your classmates (or with the work of previous generations) will be taken seriously.

**Project late policy**

In general, no late assignments will be accepted for projects. For ONE of the first 2 programming projects (not labs and not project 3), you may have up to a 3-day extension.

*Do not lose track of when you use this.* You only get one extension—non-negotiable. The reason this is given is because I recognise life as a college student is often stressful and I don’t know all of the situations you each are going through—your mental and physical health is a priority. In addition, if the policy was “no late work”, some students may feel more entitled to ask for extensions in an emergency than others—the extension is meant to be an equaliser.

#### Participation

There will frequently be short in-class activities. For example, reflection assignments, small group discussions, etc. Turn these in for participation credit.

### Honesty

Although I encourage you to have lively discussions with one another, ***all work you hand in must be your own work, unless otherwise specified***. Programs will be compared using software that can reliably detect similarities in source code. Though you are encouraged to seek help in tutoring and from the TA and instructor, do not look at classmates’ code. Unless explicitly allowed to do so, do not discuss specific implementation of your code. If your program or parts of your program are plagiarized from another student or an unapproved source, you will fail the course and a letter will be put in your file with Cal Poly Judicial Affairs. This includes students who copied and students who were copied from—you are responsible for the privacy of your source code.

## Course schedule

These are rough notes meant to (1) serve as a guide for myself while teaching, and (2) to supplement your own notes from class.

(Numbers marked with `EJ` (e.g., `EJ57`) are principles from _Effective Java_ by Joshua Bloch.)

| Week | Topic                                                                                                            | Assignments released                       | Notes                                                                                                                                                                                                                                               |
| ---- | ---------------------------------------------------------------------------------------------------------------- | ------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 1    | Intro, clean code                                                                                                | Lab 1 (Dev environment setup)              | [Coursenotes](../coursenotes/01-introduction-code-style/)                                                                                                                                                                                              |
| 1    | Coupling and encapsulation                                                                                       | Lab 2 (TUI tic tac toe)                    | [Coursenotes](../coursenotes/02-coupling/)                                                                                                                                                                                                             |
| 2    | Encapsulation, immutability, cohesion                                                                            | Project 1                                  | [Coursenotes](../coursenotes/03-mutability-cohesion-srp/)                                                                                                                                                                                              |
| 2    | (Some of the) SOLID principles, polymorphism,<br>Composite design pattern                                        |                                            | [Coursenotes](../coursenotes/04-polymorphism-lsp/)                                                                                                                                                                                                     |
| 3    | Project 1 design discussion<br>Visitor design pattern<br>Java language features (sealed types, pattern matching) |                                            | [Coursenotes](../coursenotes/05-visitor-pattern-matching/)                                                                                                                                                                                             |
| 3    | Unit testing and test adequacy                                                                                   | Lab 3 (Testing)                            | [Coursenotes](../coursenotes/06-unit-testing/)                                                                                                                                                                                                         |
| 4    | Designing for testability (dependency injection, test doubles)                                                   |                                            | [Coursenotes](../coursenotes/07-designing-for-testability/)                                                                                                                                                                                            |
| 4    | Strategy and Command design patterns<br>Lambdas                                                                  |                                            | [Coursenotes](../coursenotes/08-strategy-pattern-lambda/)                                                                                                                                                                                              |
| 5    | Project 2 design discussion<br>GUI programming in Java                                                           | Project 2<br>Lab 4 (GUI tic tac toe)       |                                                                                                                                                                                                                                                     |
| 5    | More on GUIs with JavaFx<br>Java Generics                                                                        |                                            | [Coursenotes](../coursenotes/10-observer-generics/)                                                                                                                                                                                                    |
| 6    | Heaps and heapsort (Project 3 prep)<br>Serialization and Random Access Files                                     | Lab 6 (Generics)                           | &#8663; OpenDSA content on [Heaps](https://opendsa-server.cs.vt.edu/OpenDSA/Books/CS3notes/html/Heaps.html) and [Heapsort](https://opendsa-server.cs.vt.edu/OpenDSA/Books/CS3notes/html/Sorting2.html#heapsort)<br>[Coursenotes](../coursenotes/11-serialization/) |
| 6    | Buffer pools (Project 3 prep)                                                                                    |                                            | &#8663; OpenDSA content on [Buffer Pools](https://opendsa-server.cs.vt.edu/OpenDSA/Books/CS3notes/html/FileProc.html#buffers)                                                                                                                       |
| 7    | Guest lecture                                                                                                    | Lab 5 (OSS Design analysis)                |                                                                                                                                                                                                                                                     |
| 7    | Project 1 code review<br>Project 3 discussion<br>Proxy and adapter design                                        | Project 3                                  | [Coursenotes](../coursenotes/14-proxy-adapter/)                                                                                                                                                                                                                                                     |
| 8    | Project 3 milestones activity<br>Builder design pattern                                                          |                                            | [Coursenotes](../coursenotes/15-builder/)                                                                                                                                                                                                              |
| 8    | Streams                                                                                                          | Lab 7 (Lambdas, streams, parallel streams) | [Coursenotes](../coursenotes/16-streams/)                                                                                                                                                                                                              |
| 9    | Processes and threads                                                                                            |                                            | [Coursenotes](../coursenotes/17-threads-concurrency/)                                                                                                                                                                                                  |
| 9    | Thread synchronisation                                                                                           |                                            | [Coursenotes](../coursenotes/18-thread-synchronisation/)                                                                                                                                                                                               |
| 10   | Mutex and Semaphore                                                                                              |                                            | [Coursenotes](../coursenotes/19-mutex-semaphore)                                                                                                                                                                                                       |
| 10   | Work day                                                                                                         |                                            |                                                                                                                                                                                                                                                     |

---

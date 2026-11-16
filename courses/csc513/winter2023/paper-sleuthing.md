---
layout: course-subpage
title: CSC 513 Paper sleuthing guidelines
---

In this page I briefly explain what exactly is expected of the paper sleuthing submissions. Before getting to the details, it would be instructive to consider *why* these write-ups are assigned in the first place.

- **Broader exposure to the field**. While we do read broadly in this course, we don't *write* broadly. That is, without paper sleuthing, I would only read formal write-ups about your chosen course projects. These assignments are a way to give you broader exposure to the field, while also letting you follow your interests (e.g., by not prescribing *which* papers you need to write about). Indeed, there is no requirement to limit yourself to papers from the Course Schedule—you may choose *any* Computing Education research paper that is interesting to you.
- **Practice with "connecting the dots".** You will notice that none of the paper sleuthing categories focus on a *single* paper, except perhaps **The faculty member** (more on this below). These write-ups are meant to give you practice reading *deeply* into your chosen topic and, more importantly, drawing insights from the *connections* between the papers that you read. This is why you will end up doing quite a bit of reading in preparation for writing this 1–2 page document.

Below, I give some guidelines for preparing these write-ups. I start with general guidelines that are applicable to all the sleuthing categories, and then give individual guidelines that are relevant to a particular category.

### General guidelines

In general all submissions will start with an **Introduction** section. In this section, you should:

- Clearly reference the paper that is the subject of your write-up, and
- Clearly describe the context in which you are studying the paper

Some example openings are below.

In an **archaeologist** submission, you might start off with something like:

> In this paper, I examine research related to the work of Shaffer & Kazerouni [1] on using explicit project milestones to curb procrastination among intermediate CS students working on long-running programming projects.
> 

In a **master's student** submission, you might start off with:

> Previous work by Shaffer & Kazerouni [1] indicated that programming project milestones were effective at curbing procrastination and improving project performance. In this paper, I propose to extend this work by examining effects of and considerations for fading these scaffolds over time.
> 

In a **faculty member** submission:

> Shaffer & Kazerouni [1] suggest that project milestones are effective at curbing procrastination and improving project performance on long-running programming projects. I propose that we (the Cal Poly CSSE department) institute this practice in projects in CSC ___, a course in which students face difficulties related to successfully completing projects.
> 

Finally, in a **private investigator** submission:

> In this paper, I examine previous work from Kazerouni [2, 3] leading up to his work on the use of programming project milestones in a third-year data structures course [1].
> 

This makes the core paper you are studying clear, and gives me an idea of the lens through which you're studying it.

Next, you should briefly summarise the key paper(s). You cannot assume that the reader knows the paper, so you should follow this up with a brief summary: what did Shaffer & Kazerouni do? In what context? What did they find? This shouldn't take up more than 1–2 paragraphs. In the rest of your introduction, you should "tell me what you are about to tell me". Briefly summarise your methods and the results of your analysis in one or two sentences.

For the rest of the paper, I leave the formatting up to you. Note that the prompt says 1–2 pages, because I don't expect the full 2 pages for all submissions. For example, I imagine it is easier to write 2 pages for the Archaeologist and Master's Student submissions, but harder to do so for the Faculty Member and Private Investigator submissions.

Read on for guidelines specific to the different submission types.

### The Archaeologist

This is more or less a literature review. No research exists in a vacuum. As the archaeologist, your job is to understand the context surrounding a given paper. Now this is a pretty vague proposition, so the prompt in the Syllabus tries to make it concrete:

> Find and report on at least one older paper cited by the current paper and at least one newer paper citing the current paper. Draw a clear research connection between the past paper, the current paper, and the subsequent paper.
> 

Essentially, you are finding one paper *before* and one paper *after* the key paper in your write-up, and drawing a line through the three papers. These are the ingredients I will look for in your write-up:

- Brief summaries of the papers in question.
- A connection should be drawn between the three papers. Specifically, does your key paper *depend on* the "before" paper? Does the "after" paper *contradict* or *complete* findings in the key paper?

For example, consider the following three papers:

- **Before:** Task analysis by problem solving (TAPS): Uncovering expert knowledge to develop high-quality instructional materials and training
- **Key paper:** Reducing withdrawal and failure rates in introductory programming with subgoal labeled worked examples
- **After:** The Impact of Programming Project Milestones on Procrastination, Project Outcomes, and Course Outcomes

The **before** paper establishes the TAPS protocol for uncovering experts' tacit knowledge use as they work toward solution, then the **key** paper used that procedure for uncovering *subgoals* for programming problem-solving in particular and used those subgoals to produce instructional materials for novices. Finally the **after** paper used "subgoals" at a higher level of abstraction for more involved programming projects with intermediate students.

Some key things to notice:

- The **before** and **key** papers are tightly connected—the author of the **before** paper is a close collaborator of one of the authors of the **key** paper.
- The **key** and **after** papers are loosely connected—the **after** cites the before paper, but has a number of differences in context. For example, the paper doesn't use the TAPS protocol, examines more complex projects, and has explicitly different concerns (i.e., procrastination and motivation, as opposed to comprehension).

You don't have to limit yourself to one paper on either side. You can have ≥1 before papers and ≥1 after papers.

**Strategy for finding papers:** Google Scholar is your friend. First, find a key paper you're interested in. Then do a backward and forward search for related work. That is, look for candidate **before** papers by seeing the papers that are cited in the **key** paper. Look for candidate **after** papers by seeing the papers that cite the **key** paper.

### The Master's Student

This is, in essence, practice for your course project. Find a key paper that you're interested in, and propose an imaginary follow-on project to the paper. Be sure to follow the **General Guidelines** above.

Ingredients that I will look for in these submissions:

- Brief summary of the paper in question.
- A clear and answerable research question or proposed tool/pedagogy that is *explicitly related to the previous paper.* For example, a relation between the new direction and the key paper could be answered by:
    - What about the previous paper motivates this new direction?
    - What about the previous paper makes the new direction *possible* (e.g., because of a tool that the authors built) or *plausible* (e.g., because of new knowledge the authors uncovered)?
    - What is lacking in the previous paper—either in terms of completeness of the study or in terms of methodological weaknesses—that you propose to address with your new direction?
- Motivation for the new direction—why is it important that this direction be pursued? What are the potential benefits? Even if the benefits are purely theoretical, this is important to answer.

### The Faculty Member

Here we get practical. Choose an intervention or theory, and describe *in detail* how you would apply that intervention or theory in an undergraduate CS course. If you are familiar with the Cal Poly curriculum, you can specifically name the course(s) in which you think we should apply the intervention or theory.

For example, consider subgoal labelling—in this paper, you are *advocating* for a change in pedagogy to incorporate subgoal labelling in our introductory programming coursework. Ingredients I will look for here include:

- Brief summary of the intervention or theory in question.
- The theorised benefits of the intervention or of putting the theory to action (e.g., reduced withdrawal rates, better performance, increased self-efficacy, increased sense of belonging, more equitable assessments).
- The specific context in which you think we should make the change. For example, CS 1 classrooms, systems programming lectures, OOP labs, "suggested strategies" for compiler projects, etc. You may choose several contexts—what is important is that you are *specific*.
- The expected benefits of the intervention *in the specified context*.
- The challenges you foresee with applying such a change. Specifically, what are the tradeoffs? For example, incorporating *mastery* grading schemes drastically increases the workload on the instructor, but can also improve students' mindsets, goal orientations, and motivations to learn.

The audience you are writing for is the CSSE faculty at Cal Poly. Pretend that this is a proposal you are asked to write before presenting this at a faculty meeting or curriculum committee meeting.

### The Private Investigator

This submission is similar to the **Archaeologist** submission in many ways, except that now we focus on the *authors* of the key paper. Try to untangle the *single contiguous thread of research* that led to the paper you've chosen.

For example, let's consider the following publication list from a given author:

1. Fast and Accurate Incremental Feedback for Students' Software Tests Using Selective Mutation Analysis (2021)
2. The Impact of Programming Project Milestones on Procrastination, Project Outcomes, and Course Outcomes (2021)
3. Exploring the Bug Investigation Techniques of Intermediate Student Programmers (2020)
4. ProgSnap2: A Flexible Format for Programming Process Data (2020)
5. Testing Regex Generalizability And Its Implications: A Large-Scale Many-Language Measurement Study (2019)
6. The Relationship Between Practicing Short Programming Exercises and Exam Performance (2019)
7. Assessing Incremental Testing Practices and Their Impact on Project Outcomes (2019)
8. Quantifying Incremental Development Practices and Their Relationship to Procrastination (2017)
9. DevEventTracker: Tracking development events to assess incremental development and procrastination (2017)

What are the common threads of research we see?

If we only consider **paper titles**, we might identify the following threads:

- Software testing: #1, #7
- Debugging: #3
- Procrastination: #2, #8, #9
- Practice and exam performance: #6
- Programming process data: #4

However, if we **read the papers** or even just skim their abstracts, we might collapse some of these into new categories, or even have overlap between categories:

- Education for software quality: #1, #7, #3
- Procrastination: #2, #8, #9
- Mining software process data: #4, #7, #8, #9

There might be categories are not immediately apparent. What is important is that *you surface those connections* between a given author's work. You could use the *order* of the papers to understand how an authors gets from one paper to the next. For example:

- In paper #9 above, the author presented data-collection infrastructure along with metrics for quantifying things like procrastination on programming projects
- In paper #8, the author found that procrastination was rampant in the course they were studying, and that it had a negative impact on students' project outcomes
- In paper #2, the author applied an intervention (milestones) to combat procrastination and examined its effects

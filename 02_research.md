---
layout: page
title: Research
permalink: /research
---

{:.banner}
If you're a Cal Poly student interested in working together, please get in touch. Also read this [advising compact]({{site.baseurl}}/advising-compact) to get a sense of how we might work together.

Current and past research projects. Relevant publications are shown for each project, not necessarily in chronological order. See a complete list on my [publications]({{site.baseurl}}/publications) page.

## Active projects

### Social Learning

The rise of generative AI appears to have ushered in or intensified two undesirable phenomena (among many others). First, computing classrooms are increasingly transactional: where both students and teachers over-emphasize final solutions rather than the frictional, self-changing process that gets students there.[^auto-graders]
Second, it has contributed to a general [erosion of the social fabric of many learning environments](https://dl.acm.org/doi/10.1145/3724363.3729024).

[^auto-graders]: Many CS classrooms were well on their way here long before generative AI due to over-reliance on auto-graders!

With collaborators at Cal Poly, UC San Diego and Cornell University, I'm working on interventions to incorporate social learning into CS classrooms big and small.
As part of this work, we've studied computing students' social help-seeking behaviors, their peer networks in CS classrooms, and the effects of social learning interventions.

- In interviews, students reported a number of factors that influence whether and when they will seek academic help from the internet, their peers, or their instructors. Students generally preferred to move from online sources to peers to instructor resources like office hours. [[Koli Calling '21]({{site.baseurl}}/publications#koli2021help-seeking)]
- Isolated students (those who had no peer collaborators in their classrooms) tended to perform worse on summative assessments, especially if they also did not make use of instructor-provided resources (like office hours). [[ITiCSE '26]({{site.baseurl}}/publications#iticse2026peer-collaboration)]
- A large CS1 course at UCSD was re-designed to be human-centered and process-oriented, replacing auto-graded assignments with study groups, collaborative handwritten homework, and process journals. I've incorporated many of these practices in my courses at Cal Poly. [[SIGCSE '27]({{site.baseurl}}/publications#sigcse2027hcpo)]
- Students' process journals in that course—in which they described their problem-solving steps and difficulties as they worked on programming homework—provided rich insight into their self-regulatory processes while programming, revealing the winding roads they took that would have otherwise gone unnoticed by course staff. [[Koli Calling '26]({{site.baseurl}}/publications#koli2026process-journals)]

### Inkling: Multimodal Data Visualization Authoring
{: #inkling}

[**Inkling**](https://inkling-vis.netlify.app) is a prototype visualization editor in which users can combine sketching, natural language instructions, and direct code editing to design visualizations that are bound to their data.
[See the source code](https://github.com/Cal-Poly-Human-Centered-Computing/inkling).

Data visualization authors can create and refine custom visualizations using a number of tools and modalities.
For example, they may write code using visualization libraries (but this requires learning those libraries), or use natural language interfaces (but not all visualizations are easily verbally described e.g., complex multi-view displays), or use *sketching* to quickly iterate through designs (but at some point [a sketch needs to meet the data](https://danyelfisher.info/blog/2026/the-clock-isnt-a-feeling-prototyping-with-ai-real-data-and-a-deadline)).

Can a combination of modalities make it easier to create and refine custom visualizations?

- In a pilot user study with six novices, we observed consistent patterns in how they used and moved between the three modes. For example, they used sketching to describe elements that were easy to describe visually (e.g., drawing a legend to the right of the chart), used natural language to describe elements that were not (e.g., data transforms), and used code reading/editing to verify AI-assisted changes. We also discuss implications for learning a visualization grammar using Inkling. [[EduVis '26]({{site.baseurl}}/publications#eduvis2026inkling)]

### Socially Responsible Computing in Early CS Courses

In an [NSF-funded alliance](https://www.nsf.gov/awardsearch/showAward?AWD_ID=2216687&HistoricalAwards=false) of 6 CSU campuses --- Cal Poly SLO, Cal Poly Pomona, CSU LA, SFSU, CSU Dominguez Hills, and CSU Fullerton --- we are working to improve student recruitment and retention in computing, by making curricular enhancements to early CS courses.
Specifically, our alliance is focused on incorporating socially responsible computing (SRC) assignments into CS coursework.

- We designed a new data-centric CS 0 course at Cal Poly SLO with a bent toward societally meaningful contexts. Students' learning of technical content was not negatively impacted by the addition of SRC content. [[SIGCSE '24]({{site.baseurl}}/publications#sigcse2024cs0-course)]
- Holistically speaking, after two years of incorporating SRC curricular materials at six CSU campuses, we found that students experienced significantly improved senses of belonging in computing; this effect was more pronounced for students at the participating campuses with less restrictive CS enrolments and higher percentages of students identifying as Hispanic/Latino. [[TOCE '25]({{site.baseurl}}/publications#toce2025src)]
- Given these benefits of SRC assignments, we studied the SRC topic domains that students found most interesting. Through surveys, analysis of students' actual choices on open-ended assignments, and focus group interviews, we found five topic areas that students consistently found most interesting (the environment, health, community engagement, and economic development). [[Koli Calling '25]({{site.baseurl}}/publications#koli2025topic-choices)]
- From the faculty perspective, we reflect on our experiences incorporating SRC materials into our courses, including lessons learned from a faculty learning community. [[SIGCSE '25]({{site.baseurl}}/publications#sigcse2025src)]

The team has collected curricular materials and publications resulting from this work at the [project website](https://bpcsrc.org/publications.html).

## Not currently active

### Programming Education for Non-Computing Students

- With Chemistry faculty, we performed a case study to learn how Chemistry students learn and use programming. We observed negative attitudes toward computing and made recommendations that were enacted in the Physical Computing courses at Cal Poly. [[J Chem Ed '24]({{site.baseurl}}/publications#jce2024end-user-programming)]
- With a mix of non-computing majors taking the CS department's CS0 course, we found that students perceived the relevance of computing to their disciplines while also reporting being challenged by it. Students reported slightly weaker feelings of self-efficacy by the end of the course than they reported at the beginning. [[Kevin Yoo's thesis '21]({{site.baseurl}}/masters-theses#kyoo)]

### Teaching and Learning Software Testing

Software testing is an important self-regulatory skill in software development.
I'm interested in research regarding the teaching and learning of software testing.
My work has focused on students' testing _process_ and test _quality_.

- We learned about how relatively beginner programmers made sense of software testing feedback while they developed test suites, i.e., feedback based on code coverage and mutation analysis. [[TOCE '24]({{site.baseurl}}/publications#toce2023testing)]
- We proposed ways to reduce the computational cost of mutation analysis to provide students with rapid incremental feedback about their software tests. [[JSS '21]({{site.baseurl}}/publications#jss2021mutation)]
- We mined program snapshot histories for insight into students' test writing habits and learned that (surprise!) regular engagement with testing throughout a project lifecycle led to improved project outcomes. [[SIGCSE '19]({{site.baseurl}}/publications#sigcse2019paper)]

### Undergraduate Students' Software Debugging Habits

In exploring students' debugging practices, we found that:

- Simple documentation of progress on debugging problems helped students recover from bugs with slightly reduced reliance on instructors [[SIGCSE '23]({{site.baseurl}}/publications#sigcse2023debugging)]
- Using a range of debugging techniques&mdash;as opposed to only one&mdash;may lead to improved project outcomes and reduced reliance on an autograder [[Koli Calling '20]({{site.baseurl}}/publications#koli2020debugging)]

### Assessing and Improving Time Management in Software Development

Time management is generally challenging for learners, particularly those who are working on large and complex programming projects for the first time.
A large part of my PhD work was focused on assessing and improving students' time management on programming projects.

- Fine-grained IDE log data yielded accurate measurements of students' software development habits. [[ITiCSE '17]({{site.baseurl}}/publications#iticse2017paper)]
- Students' software development habits had significant impacts on their project performance and timeliness. [[ICER '17]({{site.baseurl}}/publications#icer2017paper)]
- Explicit project milestones helped to reduce the rates of late submissions, improve project performance, and improve course grades for about a third of the class. There was no impact on the percentage failing grades or course withdrawals. [[SIGCSE '21]({{site.baseurl}}/publications#sigcse2021milestones)]

## Collaborations

- [CodeWorkout](https://codeworkout.cs.vt.edu)—an online practice system for beginner programming problems. I was responsible for its integration into the Canvas LMS through the LTI protocol. [See the project on GitHub.](https://github.com/web-cat/code-workout)
- [ProgSnap2](https://cssplice.org/progsnap2/ProgSnap2-v8-18Dec2020.pdf)—A data specification for sharing and analysing programming snapshot datasets [[ITiCSE '20]({{site.baseurl}}/publications#iticse2020progsnap)] 
- Testing the generalisability of research on regular expressions [[ASE '19]({{site.baseurl}}/publications#ase2019)]

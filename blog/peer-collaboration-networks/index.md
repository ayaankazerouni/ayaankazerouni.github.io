---
layout: post
title: Peer Networks and Instructor Resources as Complementary Support Systems in Six CS Classrooms
date: 2026/05/14
tags: research-summary social-learning
---

<figure id="network-fig-inline" style="margin: 1rem 0;" aria-hidden="true">
  <svg class="invert" height="20" width="380" style="display: block; margin: 0 auto;">
    <circle cx="10" cy="10" r="6" fill="#1f77b4" class="gender-m"></circle>
    <text x="22" y="14" style="font-family: Avenir; font-size: 0.75em">Man</text>
    <circle cx="70" cy="10" r="6" fill="white" stroke="#ff7f0e" stroke-width="2" class="gender-wnb"></circle>
    <text x="82" y="14" style="font-family: Avenir; font-size: 0.75em">Woman/Non-binary</text>
    <line x1="220" y1="10" x2="244" y2="10" stroke="black" stroke-width="2" class="anonymous"></line>
    <rect x="244" y="4" width="12" height="12" fill="black" class="anonymous"></rect>
    <text x="262" y="14" style="font-family: Avenir; font-size: 0.75em">Anonymous student</text>
  </svg>
  <div style="display: flex; justify-content: center; gap: 0.5rem; flex-wrap: wrap;">
  {% assign courses = "intro.svg,eng.svg,oop-fall2024.svg,oop-spring2025.svg,oop-fall2025.svg,se.svg" | split: "," %}
  {% assign captions = "Intro,Eng,OOP F24,OOP S25,OOP F25,SE" | split: "," %}
  {% for course in courses %}
  <div class='fig-thumb' markdown="1">
  <svg class="invert network-fig-thumb" viewBox="0 0 300 300">
    <use href="./{{course}}#course"></use>
  </svg>
  <div style="font-size: 0.7em;">{{ captions[forloop.index0] }}</div>
  </div>
  {% endfor %}
  </div>
</figure>


This is an overview of the research paper [_Peer Networks and Instructor Resources as Complementary Support Systems in Six CS Classrooms_]({{site.url}}/publications#iticse2026peer-collaboration).
The work was led by former master's student [Noah Ravetch](https://www.linkedin.com/in/noah-r-252571129/) and undergraduate students [Naomi Nayman](https://www.linkedin.com/in/naomi-nayman/) and [Jack Herberger](https://www.jackherberger.com/) at Cal Poly San Luis Obispo, and co-advised by my colleague [Theresa Migler](https://theresamigler.com/).

{:.no_toc}

* s
{:toc}


<!-- ## Outline

- background
  - learning is a social process
  - peers and instructors are part of this
  - we have a lecture+lab setup in most courses --- not unique, but maybe not common either
  - added contemporary concern: "all roads lead to chatgpt" -- erosion of the social fabric in CS courses
  - RQs
- what we did
  - network figures
  - men/women figure + finding
  - isolated/non-isolated figure + finding
  - table showing the four clusters of social resource usage
- discussion
  - what do our findings mean?
    - 203 figures including encoding for use of instructor resources
    - participation in the peer network and use of instructor office hours seemed to play a complementary role
  - recommendations
    - focus on collaborative work (not just group projects)
    - less focus on "driving students to office hours" since that is inequitable and doesn't seem productive 
-->

We studied the interplay between peer collaboration networks in six CS classrooms, usage of instructor-provided help resources, and performance on summative assessments.
Students who were unconnected to their peers scored relatively lower on summative assessments.
Students who were connected to their peers _or_ used instructor resources performed dramatically better than those who used neither.

## Background

A classroom is a social system at work—students are participating in a network consisting of their peers and the instructor.
Having strong connections in this network is a form of _social capital_: it can facilitate advice about courses, policies, and study materials, and can lead to downstream improvements to academic persistence and performance.
However, some students may lack this form of capital for a number of reasons, e.g., fear of breaching academic integrity policies, being new to the institution, or factors that prevent the student from interacting with their instructor (e.g., anxiety or external obligations preventing one from visiting office hours). 

<!--Similarly, some students might not use instructor resources like in-person office hours for a number of reasons, e.g., they are not familiar with what "office hours" means, they're worried about asking "good questions", or they may be managing external obligations like family,  work, hobbies, or illness, that prevent them from visiting out-of-class office hours.-->

[Evidence](https://dl.acm.org/doi/abs/10.1145/3724363.3729024) also mounts that general availability of large language model-powered chatbots like ChatGPT are contributing to a general erosion of the social fabric of classrooms.
To add to that, I offer two bits of anecdata: first, I and my colleagues have experienced a steep dropoff in students attending office hours—no surprise, since it's far more convenient to ask ChatGPT a question than to visit office hours on campus.
Second, I advise the computer science peer tutoring center in our department at Cal Poly, where we've experienced a nearly 50% decrease in visits since LLM-based tools became mainstream.

In this study, we investigated whether use of _social help resources_—such as collaborating with peers or seeking help from the instructor—was associated with better academic performance.

## Context

The study took place at Cal Poly San Luis Obispo. Some salient info about our context:

- We have small-to-medium class sizes (in this study, 29–35 students in each class). A large lecture-hall-style class might observe markedly different peer network dynamics than we did.
- The courses that we studied have a prominent lab component that is led by the instructor, and is given as much time during the week as lectures.
This results in a significant amount of time available for students to work on course activities in proximity to their peers and to the instructor.
It is in these lab sessions that we expected peer networks to develop.

We studied four courses (six classrooms): an introductory programming course taken mostly by Graphic Communication majors (referred to as Intro), an intro programming course taken by Engineering majors (Eng), three sections of an object-oriented programming course (OOP), and an upper-division software course (SE).
Noah taught Eng and I taught the rest. 

## Data

We studied three variables:

- **Performance on a summative assessment**: In Intro, OOP, and Eng, this was measured as a 0–100 score on a cumulative final exam. In SE, this was measured as the average performance on programming assignments.
- **Use of office hours or the online forum.**: In the OOP sections, I kept track of office hour visits using a simple online form. Only the frequency of visits was tracked, not the length or purpose. For online forum usage, we downloaded analytics data from the course [EdStem](https://edstem.org) platform.
- **Participation in the classroom peer network**: We used self-reported survey data to learn about peer collaborations.

The network survey was distributed to students toward the end of the term in which data collection took place.
The survey asked for informed consent and demographic information, and then prompted the student to list any classmates with whom they had worked that term.
For each collaboration they were asked to choose one or more of the following options:

- _I helped them_
- _They helped me_
- **_We studied together_**
- **_We collaborated on an assignment_**
- **_We discussed course logistics_**
- _Other_ (free response; no students picked this option)

The vast majority of students (over 95%) picked at least one of the **_bolded_** items above, indicating a bidirectional flow of help.
We used these responses to construct for each classroom an undirected disjoint graph in which edges indicated _any collaborative relationship_ between two students.

Since students were reporting on their collaborations, we enacted the following protections for surveyed students.

- It was made clear that questions were assumed to be about coursework on which collaboration was explicitly allowed.
- Raw survey responses were not accessible to course instructors before anonymisation.
- If a survey taker (i.e., a consenting student) listed a non-consenting student as a collaborator, we included that edge in the network, but removed all information about the non-consenting student from the dataset (i.e., their grade and office hours and forum usage). We did not exclude the edge entirely because this might falsely label the consenting student as "isolated" if it was their only connection.
- If multiple survey takers listed the _same_ non-consenting student as a collaborator, those survey takers received edges to _two separate anonymous nodes_, so no information about the non-consenting student would remain in our dataset.
In effect, all that remained in these cases was the fact that the consenting students "had a friend" in the classroom. 

The peer networks so constructed are depicted below.

## Who participated in the peer networks?

<figure style="margin: 2vw; display: flex; flex-direction: column; gap: 1rem;" >
  <div style="display: flex; flex-wrap: wrap; justify-content: center; gap: 0.5rem 1.5rem;">
  <svg class="invert" height="30" width="60" aria-hidden="true" focusable="false">
    <circle cx="15" cy="15" r="10" fill="#1f77b4" class="gender-m"></circle>
    <text x="30" y="20" text-anchor="start" style="font-family: Avenir; font-size: 0.9em">Man</text>
  </svg>

  <svg class="invert" height="30" width="170" aria-hidden="true" focusable="false">
    <circle cx="15" cy="15" r="10" fill="white" stroke="#ff7f0e" stroke-width="2" class="gender-wnb"></circle>
    <text x="30" y="20" text-anchor="start" style="font-family: Avenir; font-size: 0.9em">Woman/Non-binary</text>
  </svg>

  <svg class="invert" height="30" width="250" aria-hidden="true" focusable="false">
    <line x1="0" y1="15" x2="30" y2="15" stroke="grey" stroke-width="2" class="anonymous"></line>
    <rect x="30" y="5" width="20" height="20" fill="black" class="anonymous"></rect>
    <text x="55" y="20" text-anchor="start" style="font-family: Avenir; font-size: 0.9em">Edge to anonymous student</text>
  </svg>
</div>


<svg width=100 height=15 aria-hidden="true" font-size="0.8em">
  <text x=10 y=10 aria-hidden="true" focusable="false" fill="currentColor">scroll</text>
  <path d="M 42 6 l 10 0 m -3 -3 l 3 3 m -3 3 l 3 -3" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"/>
</svg>

<div style="display: flex; gap: 1rem; flex-direction: row; overflow-x: auto;" >

{% assign courses = "intro.svg,eng.svg,oop-fall2024.svg,oop-spring2025.svg,oop-fall2025.svg,se.svg" | split: "," %}
{% assign descs = "An intro CS class made up mostly of women and non-binary students, with one large connected component and many small components.|An intro CS class for non-CS majors, made up mostly of male students, with a large connected component, and other dyads, triads, and isolates.|An object-oriented programming course made up mostly of male students, containing one large connected component, a smaller connected component, and dyads, triads, and isolates.|Another object-oriented course mostly comprising four connected components.|Another object-oriented course with fewer students, containing a small connected component and many isolates.|A software engineering course containing a larger connected component and many isolates." | split: "|" %}
{% assign captions = "Intro,Eng,OOP (Fall 2024),OOP (Spring 2025),OOP (Fall 2025),SE" | split: "," %}

{% for course in courses %}
{% assign slug = course | replace: ".svg", "" %}
{% assign index=forloop.index | minus: 1 %}
<div markdown="1">

<svg class="invert network-fig" viewBox="0 0 300 300" role="img" focusable="false" aria-labelledby="net-{{slug}}-desc}}">
  <title id="net-{{slug}}-title">Network diagram for {{slug}}</title>
  <desc id="net-{{slug}}-desc">{{descs[index]}}</desc>
  <use href="./{{course}}#course"></use>
</svg>

<div style="font-size: 0.8em; font-family: sans-serif; margin-bottom: 1vh;">
{{ captions[index] }}
</div>
</div>

{% endfor %}

</div>

<figcaption>
Peer collaboration networks in six CS classrooms.
</figcaption>
</figure>



Our first focus was on students who were _isolated_ in the peer network, i.e., those who did not list any collaborators and none listed them.
About a quarter of the students were isolated, and men were more likely than expected to be isolated.
They were \~60% of the surveyed students but just under 80% of isolated students.

<div class='row'>
<figure>
  <svg class="invert num-collaborators" viewBox="0 0 612 120" role="img" focusable="false" aria-label="Num collaborators distribution.">
    <use href="./num-collaborators.svg#num-collaborators"></use>
  </svg>
  <figcaption>
  Most students had one or two collaborators, and none had more than four. 25% of students were isolated, i.e., they listed no collaborators, and none listed them.
  </figcaption>
</figure>
<figure>
  <svg class="invert isolation-gender" viewBox="0 0 498 83" role="img" focusable="false" aria-label="Isolation frequency by gender">
    <use href="./isolation-gender.svg#isolation-gender"></use>
  </svg>
  <figcaption>
  Men made up a higher-than-expected proportion of isolated students.
  </figcaption>
</figure>
</div>

## What was the relationship with academic performance? 


<div class='row'>
  <div markdown="1">

  We used hypothesis tests to check for a relationship between a students' connectedness in the network and their performance on the course's summative assessment. 

  Isolated students tended to perform worse on the summative assessment, but with great variability, suggesting other factors at play.

  </div>
  <figure>
    <svg class="invert isolation-grade" viewBox="0 0 377 82" role="img" focusable="false" aria-label="Grade distribution for isolated and non-isolated students." aria-describedby="grade-desc">
      <title>Grade distribution</title>
      <desc id="grade-desc">Isolated students scored an average of around 70% with a wide confidence interval. Non-isolated students scored an average of about 80% with a narrow confidence interval.</desc>
      <use href="./isolation-grade.svg#isolation-grade"></use>
    </svg>
    <figcaption>
    Each tick is a student's score on a summative assessment. The reddish dot and line represent the group average and 95% confidence interval.
    </figcaption>
  </figure>
</div>

## How did use of instructor resources factor in?

In the three OOP classes, we collected data about office hour visits and use of the online EdStem forum.
The distributions were remarkably similar:

- 58% of students did not visit office hours, and 55% of students did not post on EdStem.
- 19% of students visited office hours once, and 17% of students posted once on the EdStem.
- Only a handful of students visited office hours or posted on the forum more than once.

Hypothesis testing suggested a significant relationship between likelihood of posting on the forum and visiting office hours: students were likely to use _both_ resources or _neither_.

Finally, we turn to the interplay between use of instructor resources, participation in the peer network, and summative assessment performance.
We looked at four groups of students: those who had peer collaborators, those who used instructor resources, those who used both, and those who used neither.

<div class='row'>
<div>
Each group was pretty small, since we only collected office hours and forum usage data from the three OOP classes. So while these descriptive statistics are suggestive, they should be interpreted cautiously.
</div>
<figure>
  <svg class="invert group-grades" viewBox="0 0 433 122" role="img" focusable="false" aria-label="Group grades" aria-describbedby="group-grades">
    <desc id="group-grades">Students who didn't have peer collaborators and didn't use instructor resources performed dramatically worse than the others.</desc>  
    <use href="./group-grades.svg#group-grades"></use>
  </svg>
  <figcaption>Summative assessment scores of students who used instructor resources, had peer collaborators, both, or neither.</figcaption>
</figure>
</div>


Given our results, we recommend that instructors take steps to broker social connections in the classroom, e.g., through in-class activities or collaborative assignments.
Because peer connections seemed associated with comparable score improvements (to say nothing of other benefits of peer connections that we didn't study), and because office hours impose real costs on students with external obligations, we place more emphasis on building in-class connection than on driving up office hours attendance.

For more details and discussion, see [the paper]({{site.url}}/publications#iticse2026peer-collaboration).

<!-- end -->

<style>
.network-fig {
  width: 200px;
  height: 200px;
}

.isolation-gender, .num-collaborators, .isolation-grade {
  width: min(100vw, 375px); 
}

.isolation-grade {
  margin: 0 auto;
}

.group-grades {
  width: min(100vw, 375px);
}

.network-fig-thumb {
  width: 110px;
  height: 110px;
}

circle.gender-wnb {
  stroke-width: 2pt;
}

figure {
  margin: 2 0;
}

@media (prefers-color-scheme: dark) {
  circle.gender-wnb {
    fill: lightgrey;
  }
}
</style>

---



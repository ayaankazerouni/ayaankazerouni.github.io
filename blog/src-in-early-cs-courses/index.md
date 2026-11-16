---
layout: post
title: Incorporating Socially Responsible Computing in Early Undergraduate CS Courses
date: 2025-04-10
---

<style>
.chart-container {
  margin-left: 10%;
}
</style>

## Contents
{:.no_toc}

* s
{:toc}

## Overview 

Hispanic/Latino students are currently underrepresented in CS majors in California.

That is, the percentage of Hispanic/Latino students in CS majors is far lower than the percentage of college-going students in California who are Hispanic/Latino.
[48% of students in the CSU system identified as Hispanic/Latino in Fall 2023](https://tableau.calstate.edu/views/SelfEnrollmentDashboard/EnrollmentSummary), but only [25% of the CS degrees awarded by the CSU in 2023 went to Hispanic/Latino students](https://tableau.calstate.edu/views/CSUDegreesIssued/CSUDegreesIssued).

In an alliance of six campuses in the California State University system (CSU), we worked to incorporate _socially responsible computing_ (SRC) into our early CS courses in a sustained effort to improve the experience of students who are historically under-represented in computing majors.
Our explicit goal is to increase retention rates of students identifying as Hispanic/Latino---currently, these students tend to leave the CS major at our institutions at far higher rates than other students.
We are driven by evidence that suggests that [we might draw more students toward computing through clear signalling of computing's _communal goal affordances_](https://paul-bruno.com/wp-content/uploads/2019/07/Lewis_2019_CommunalGoals.pdf) (i.e., stronger signalling to students that they can use their computing knowledge to benefit society).

This multi-year project was [funded by the National Science Foundation in 2022](https://www.nsf.gov/awardsearch/showAward?AWD_ID=2216687&HistoricalAwards=false).
This helped support the following activities and personnel:

- **Development of new curricular materials,** including two new courses at Cal Poly SLO and San Francisco State University. These materials have also been adopted at universities outside our six-campus alliance.
- **Monthly online teacher training workshops,** organised by social scientists and computer scientists, attended by 20–25 CS professors at various institutions.
- **Annual 1.5 day-long in-person workshops** in June 2023, 2024, and 2025 to support collaborative work, brainstorming, and feedback.
- **Independent external evaluation** by evaluators at the non-profit agency [WestEd.org](https://wested.org), who helped collect the data leading to the conclusions described in this post.
- **Incentives for students to participate in focus groups** about their experiences in the courses we studied.

Our team was:

- At Cal Poly SLO: Zoë Wood, Jane Lehr, and myself.
- At CSU Fullerton: Paul Salvador Inventado, Kevin Wortman, and Kanika Sood.
- At San Francisco State University (formerly and currently): Ilmi Yoon, Aakash Gautam, Anagha Kulkarni, and Zainab Agha.
- At CSU Los Angeles: Elaine Eun-Young Kang and David Krum.
- At CSU Dominguez Hills: Mohsen Beheshti and Sahar Hooshmand.
- At Cal Poly Pomona: Daisy Tang, Yu Sun, and Amlan Chatterjee.
- At WestEd.org: Aleata Hubbard Cheuoua and Melissa Lee.
- At Colorado Evaluation and Research Consulting: Sarah Hug.

In this post, I summarize the work done by our team over the last two-and-a-half years.

## What did we do?

- We incorporated SRC in our intro CS courses at all six campuses. For example, at Cal Poly SLO, this took the form of a new data-centric introductory CS course focused on using computation to examine social trends and phenomena relevant to the students. The course is described in the paper *[Community-Action Computing: A Data-centric CS0 course]({{ '/publications#sigcse2024cs0-course' | absolute_url }})* (SIGCSE 2024 Curricular Initiatives).
- We also participated in a faculty learning community that met for monthly workshops led by social scientists (Jane Lehr from Cal Poly SLO and Sarah Hug from Colorado Evaluation and Research Consulting). Some lessons learned from these workshops were published in *[Reflecting on Practices to Integrate Socially Responsible Computing in Introductory Computer Science Courses]({{ '/publications#sigcse2025src-practices' | absolute_url }})* (SIGCSE 2025 Experience Reports).
- **Finally (the focus of this post) we found that our curricular additions had positive impacts on students' sense of belonging in computing and their perceived learning and agency in early CS courses.** These results were published in *[The Benefits of Socially Responsible Computing in Early Computing Courses: A Multi-Institutional Study at Primarily Undergraduate Hispanic-Serving Institutions]({{ '/publications#toce2025src' | absolute_url }})* (TOCE).

## What's SRC?

We sought to develop curricular materials that demonstrated to students that they could use computing to benefit their communities and society, and to encourage students to think critically about the impacts of computing on society.

This went beyond teaching ethics in computing.
We encouraged students to actively consider social and
ethical implications of their work, acknowledge (with examples) the significant power that computing systems have in society, and aimed to prepare students to exercise that power responsibly as they develop technical skills.
To this end, we integrated SRC considerations in the context of technical skills introduced in the class, rather than introducing separate modules for ethical and social
considerations.

These ideas have [been](https://responsible.cs.brown.edu/) [around](https://ethicalcs.github.io/) [for](https://dl.acm.org/doi/10.1145/3702212.3702225) [a while](https://identity.cs.duke.edu/fellows.html).

[Evan Peck](https://evanpeck.github.io/)'s work—a big source of inspiration for us—[puts it well](https://ethicalcs.github.io/):

> 1. _**Introduce a deeper level of reflection in CS 1 courses.** I want students to see that their actions either directly or indirectly impact people, communities, and cultures, and that this impact is often not felt equally by different groups of people (along lines of gender, race, class, geography, etc.)_
> 2. _**Develop reflection habits alongside coding habits** - all modules involve programming! I believe that habits are formed early in CS and must be tightly coupled with technical concepts in order for them to stick._
> 3. _**Pair directly with existing CS 1 curriculum** - CS 1 is already a busy course. You don’t need to set aside a month of new material. I believe that reflection and responsible computing pairs directly with technical concepts already taught (conditionals, for loops, etc.)_

We were also driven by the knowledge that [some students, more than others, are strongly drawn to disciplines that *they believe* would help benefit society](https://paul-bruno.com/wp-content/uploads/2019/07/Lewis_2019_CommunalGoals.pdf).
Clear signalling in early CS courses of computing's impact on and relevance to society, and demonstration to students that even their nascent computing skills can be applied toward the social good should, in theory, improve their motivation and sense of belonging in computing.

For example, at CSU Fullerton the lessons on control flow with `if` statements were accompanied by programming assignments where students designed, implemented, and critiqued in small groups schemes for allocating tips in restaurants.
These were also accompanied by readings about [the racialized history of tipping in America](https://www.nytimes.com/2021/02/05/opinion/minimum-wage-racism.html).

Also while learning about conditional logic, students at CSU Dominguez Hills wrote programs to determine individuals' eligibilities for safe blood donations, and designed a simple system for tracking and managing blood donations.
All of this was accompanied by readings and reflections about the [need for blood donations](https://www.youtube.com/watch?v=Tfwq_vJHwT8&feature=youtu.be).

At Cal Poly SLO, we developed a new [data-centric introductory programming course]({{ '/publications#sigcse2024cs0-course' | absolute_url }}) in which students used [TypeScript](https://typescriptlang.org) and [Vega-Lite](https://vega.github.io/vega-lite/) to analyze and visualize datasets about socially relevant phenomena.
Datasets were often chosen by the students and projects involved written and oral reflective components in addition to programs.
Among other topics, students studied disparities in access to CS education in the state of California using data provided by the non-profit organization [CSforCA](https://csforca.org), data about the victims of fatal police shootings [compiled by the Washington Post](https://www.washingtonpost.com/graphics/investigations/police-shootings-database/), and data about people's access to fresh food compiled by the [US Department of Agriculture's Economic Research Service](https://www.ers.usda.gov/data-products/food-access-research-atlas/download-the-data/).[^corgis]
In all cases, students were given freedom to choose their topics, ask their own questions, and present their findings to the rest of the class.

[^corgis]: In many cases, students used tidied versions of the datasets from the [CORGIS](https://corgis-edu.github.io/corgis/) dataset repository, which was a part of [Austin Cory Bart](https://acbart.github.io/)'s wonderful dissertation project.

## Did it work?

Over two academic years---2022--2023 and 2023--2024---we collected survey data from students at all six campuses to measure their *sense of belonging* in CS.
Belonging was measured using the 26-item survey developed by [Moudgalya et al.](https://dl.acm.org/doi/10.1145/3408877.3432425), containing statements about belonging scored from _Strongly disagree_ (–3) to _Strongly agree_ (3).

Statements were positive or negative and preceded by the phrase "In this computer science class...". Some example statements are:

- I feel a connection with the computer science community.
- I feel insignificant.
- I feel at ease.
- I enjoy being an active participant.
- I try to say as little as possible.

The Fall 2022 term was our "Baseline" group.
Surveyed classes were taught with no added SRC curricular materials.
Spring 2023, Fall 2023, and Spring 2024 were our "Intervention" groups ("Post" in the figure below).
All surveyed courses had significant SRC materials added, ranging from individual assignments with discussions and reflective components (as in the case of [CSU Fullerton](https://dl.acm.org/doi/10.1145/3626252.3630853)) to entirely new courses (as in the case of [Cal Poly SLO]({{ '/publications#sigcse2024cs0-course' | absolute_url }}) and [San Francisco State University](https://dl.acm.org/doi/10.1145/3626252.3630926)).

**Our intervention had significant positive impacts on students' sense of belonging at some campuses, but not others.**
The split appeared to be between campuses that had "competitive enrolment policies" for their CS majors, and those that did not.
[Nguyen and Lewis](https://dl.acm.org/doi/10.1145/3328778.3366805) describe competitive enrolment policies as those in which students already at the University need to meet minimum GPA thresholds to declare a CS major and take CS courses, or where students are admitted directly to the CS major.

In our study, the two Cal Polys (SLO and Pomona) have competitive enrolment policies, due in large part to enrolment pressures. 
Students are either admitted directly into the CS major or must satisfy fairly intensive requirements before transferring into the CS major.
Conversely, the other participating campuses---SFSU, Dominguez Hills, Fullerton, and CSU LA---have no such additional requirements for majoring in CS.
They also have relatively higher proportions of students identifying as Hispanic/Latino.

In general, we saw that the campuses _without_ competitive enrolment policies were more likely to report significant positive impacts from SRC curricular additions. The pattern is visible in the figure below.

(CSU Fullerton does not appear in this figure because no classes at Fullerton were surveyed in both the Baseline and Intervention terms. Fullerton features in other analyses in [the paper]({{ '/publications#toce2025src' | absolute_url }}).)

<figure>
<svg class="chart" viewBox="0 0 730 423" role="img" aria-label="Belonging score distributions" focusable="false">
<use href="./chart.svg#chart"></use>
</svg>
<figcaption>Sense of belonging scores at each campus in the Baseline term (Fall 2022) and in post-surveys in Intervention terms (Spring 2023, Fall 2023, Spring 2024). The paper reports transformed belonging scores based on a confirmatory factor analysis, but the same trend is visible and easier to interpret with the –3 &rarr; 3 scale shown here.</figcaption>
</figure>

## Final remarks 

While there were [other overall benefits]({{ '/publications#toce2025src' | absolute_url }}) of our SRC curricular additions, in terms of sense of belonging our intervention appeared to impact students at some campuses far more than others.
Five of the six participating campuses in our alliance were designated as Hispanic-Serving Institutions at the time the research was carried out (all except Cal Poly SLO).

Upon reflection, perhaps the relative stability of sense of belonging at the institutions with competitive CS enrolment (the two Cal Polys) is to be expected.
CS students at those campuses have already been put through significant filtering criteria, based on GPA thresholds within the University, and admissions that are heavily influenced by AP courses, the availability of which is largely dependent on school district and household income levels.
It would make sense that these students, who were also more likely to have had pre-college CS experiences, had a relatively stable sense of self in the computing discipline.

With occasional exceptions, the two groups of campuses also differed in other important ways,
like overall University acceptance rates, representation and attrition of historically underrepresented students in CS, and percentage of students on federal Pell grants, a proxy for the overall socio-economic status of our student bodies.

| Attribute                                     | DH  | LA  | SF  | Fullerton | Pomona | SLO |
|----------------------------------------------|-----|-----|-----|-----------|--------|-----|
| Had pre-college CS education                 | 21% | 38% | 23% | 43%       | 65%    | 47% |
| % Hispanic/Latino (University)               | 69% | 75% | 37% | 52%       | 53%    | 23% |
| % Hispanic/Latino (CS Majors)                | 63% | 54% | 26% | 27%       | 27%    | 11% |
| % of students who leave CS who are “URM”     | 42% | 45% | 45% | 30%       | 26%    | 18% |
| % Receiving Pell grant                       | 61% | 66% | 43% | 47%       | 46%    | 18% |
| % First-generation students                  | 46% | 57% | 32% | 32%       | 55%    | 17% |
| University acceptance rate                   | 86% | 91% | 93% | 59%       | 44%    | 33% |
| Has competitive CS enrollment?               | No  | No  | No  | No        | Yes    | Yes |

An example of how these environmental contexts might influence educational outcomes: we found that Hispanic/Latino students at the campuses without competitive enrolment policies were more likely than other students to report that work and family obligations interfered with their learning during the term.
[The same effect was observed by Salguero et al. at UC San Diego.](https://dl.acm.org/doi/10.1145/3446871.3469755) 
**However, no such effect was observed at the two participating Cal Polys.**

These results underscore the importance of attending to institutional contextual differences when evaluating research results or considering (or disregarding) the adoption of curricular initiatives.

---

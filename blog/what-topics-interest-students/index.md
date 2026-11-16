---
layout: post
title: What Topics Interest Students in Socially Responsible Computing Coursework?
date: 2025/09/14
---

{:.blurb}
This is a brief summary of the paper [_What Topics Interest Students in Socially Responsible Computing Coursework?_]({{ '/publications#koli2025topic-choices' | absolute_url }}), appearing at [Koli Calling](https://www.kolicalling.fi) 2025.
My co-authors were [Zainab Agha](https://cs.sfsu.edu/people/zainab-agha), [Aleata Hubbard Cheuoua](https://aleatahubbard.com/), [Melissa Lee](https://www.linkedin.com/in/melissa-lee-15637949), [Jane Lehr](https://ethnicstudies.calpoly.edu/faculty-staff/jane-lehr), [Ilmi Yoon](https://ilmiyoon8.wordpress.com/), and [Zoë Wood](https://users.csc.calpoly.edu/~zwood/).

When teaching math or CS, we often need to ground examples or assignments in some *context*.
For example, when teaching boolean logic, I might give examples like deciding what kind of drivers' license an individual should receive based on their age.
When working with lists, I might use the [rainfall problem](https://runestone.academy/ns/books/published/StudentCSP/CSPIntroData/rainfall.html).
We tend to not teach "free-floating" computational thinking, untethered from any real-world problem context, however contrived by the instructor.

Obviously, the contexts we choose will impact the student's learning experience.

**We should teach with humanitarian contexts.**
Students in CS courses [tend to be interested in applications of computing that further the social good](https://dl.acm.org/doi/10.1145/3626253.3635513)[^why].
That is, when given a choice, students prefer to see more humanitarian contexts for their assignments and coursework, like tracking availability of shelters for the homeless, or building an application to help learn sign language, and fewer assignments focused on business contexts like tracking pizza deliveries.
This preference for humanitarian applications and learning through service is also present in other STEM disciplines.
For example, [_Engineers Without Borders_](https://www.ewb.calpoly.edu/) is thriving at Cal Poly and other chapters.

[^why]: This is not the same as saying _that's why they chose to study CS_: [that's a separate, multi-faceted decision](https://dl.acm.org/doi/abs/10.1145/2016911.2016915).

**How we teach can impact students' perceptions of the discipline.**
In early courses, one challenge is that it's hard for students (and instructors) to draw a line from "learning Python" to "benefitting the social good".
I imagine the same is true in, say, an introductory course in mechanical or electrical engineering.
Perhaps as a result, there's evidence of a [perception that opportunity to pursue "communal goals" is impeded in STEM disciplines](https://journals.sagepub.com/doi/10.1177/0956797610377342).


**We should give students choices about their learning.** We (humans) tend to be more motivated to learn [when we can make choices about how and what we learn](https://www.simplypsychology.org/self-determination-theory.html), compared to a learning process where we follow a sequence of instructions without agency.
A [number](https://dl.acm.org/doi/10.1145/1595496.1562891) [of](https://ieeexplore.ieee.org/document/8985947) [experiences](https://dl.acm.org/doi/10.1145/1383602.1383637) incorporating student choice into CS assignments have reported positive results in terms of affect, performance, and sense of belonging in the discipline.

There's a slight tension here: should we prioritise a focus on humanitarian and socially responsible topics, or should we prioritise giving students freedom to focus on topics of their choosing?
Even within socially responsible topic domains, not all students' interests are the same.
If an instructor prescribes a focus on a topic like education, food access, or government, they run the risk of alienating a student that's instead interested in economic development, human rights, or housing access.

Unfortunately, teaching to individual students' interests is not always feasible.

_Wouldn't it be great to have a list of topic domains that would likely be interesting to a large number of students?_

We learned from students which topic domains (within a fuzzy notion of socially responsible computing) students most wanted to see in their coursework.
We did this in three ways:

1. **We talked to students**: We interviewed 4 students at San Francisco State University and 2 at Cal Poly SLO.
2. **We surveyed college students taking CS courses**: We surveyed 1443 students at [six CSU campuses](../src-in-early-cs-courses/).
3. **We studied the choices students made when given free rein to pick a topic**: Two data-centric CS courses at Cal Poly SLO (an [introductory programming course]({{ '/courses/csc123' | absolute_url }}) and a [data visualisation course]({{ '/courses/csc477' | absolute_url }})) included assignments where students were free to choose **any** topic and dataset to work with. Their choices provide insight into their interests.

## What did students find interesting?

Students consistently expressed interest in the following topic domains:

- **Education**, e.g., analyzing data from the [CSforCA report](https://csforca.org/accessreport/) about K–12 CS education access in California.
- **Economic development**, e.g., analyzing data from [Gapminder.org](https://gapminder.org) about World Bank country development indicators.
- **Health**, e.g., measles outbreaks in the United States.
- **The Environment**, e.g., global carbon emissions.
- **Community engagement**, i.e., projects that actually engage with community members.

The topics above were present and prominent in both survey responses and in the actual topic choices made by students when given the freedom to do so.

In survey responses, the vast majority of students also expressed interest in **Artificial Intelligence** (surprise!) and **Digital inclusion, safety, and privacy**.
These topics were also singled out by students in focus group interviews.
We think these didn't show up in students' assignment topic choices due to difficulty finding relevant datasets, and likely not because of a lack of interest.

## What about "non-humanitarian" topics?

In our study of students' actual topic choices in open-ended assignments, 65% of projects focused on what we deemed to be "humanitarian" or "socially relevant" topics.[^bias]
This is great! Those previous studies were right! Students _do_ find them interesting! (It is also good for humanity.)

[^bias]: Obviously, this is subject to individual impressions—see [the paper]({{ '/publications#koli2025topic-choices' | absolute_url }}) for details about how we categorised students' submissions.

But that means 35% of projects did _not_ focus on these topics.
Instead, they focused on topics and datasets like:

- LeBron James' shot choices over his career
- Video game sales over time
- Broadway plays and ticket sales
- UFO sighting reports in the USA ([there's a dataset of these](https://nuforc.org/databank/))

These topics may not be the most socially impactful, but were likely no less important, motivating, and _fun_ for these students.

For example, in the intro programming class, one student who'd been relatively quiet throughout the term went well beyond the assignment's requirement when they were given freedom to choose a topic, and gave an animated and energetic presentation about trends in Broadway plays at the end of the term.
Had I required a focus on "humanitarian" topics, this student might have lost this opportunity to connect their budding computing skills with an existing passion.

For more details, see [the paper]({{ '/publications#koli2025topic-choices' | absolute_url }}), or a [previous post]({{ '/blog/src-in-early-cs-courses' | absolute_url }}) outlining some of the broader goals of our work.

---

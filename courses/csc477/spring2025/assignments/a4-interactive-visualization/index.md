---
layout: course-subpage
title: "Assignment 4: Interactive Visualization"
---

This assignment involves building an interactive visualization of a dataset of your own choosing.

- s
{:toc}

## Overview

One goal of this assignment is for you to gain familiarity with various interaction techniques.
We've seen many examples of interactions in class, like Shneiderman and Wattenberg's [Treemap](https://www.cs.umd.edu/~ben/papers/Shneiderman2001Ordered.pdf), originally invented as a way to visualize hierarchical data (like file structure and usage on a disk), and were later adapted to [visualize the stock market](https://finviz.com/map.ashx?t=sec).
Other tools enable exploration for the purpose of uncovering patterns in specific data, like [zip codes](https://benfry.com/zipdecode/) or [baby names](https://web.archive.org/web/20211107232302/https:/www.babynamewizard.com/namevoyager-expert#prefix=&sw=both&exact=false).

Although we haven't (yet) learned some of the graphical techniques used in those examples (like map visualizations as in [Zipdecode](https://benfry.com/zipdecode/)), the _interactions_ in those graphics should be a source of inspiration.
We have seen many other examples of interactive visualizations in class and in the readings.

**Remember, you need to scope this assignment so you can finish it in two weeks.** Focus on designing a limited yet compelling visualization that enables interactive exploration along a few critical dimensions.
A tightly-focused, well-implemented interactive graphic is much preferred to a sprawling design that attempts too much.

## Deliverables

Just like before, your final deliverable will be a public and unlisted Observable notebook. It will contain an interactive graphic followed by a short write-up describing your design rationale.

### Interactive graphic

Design and implement interactive graphic aimed at enabling understanding of a compelling question for a dataset of your own choosing.
In order to determine what subset of the data and which interactive options are most promising, you may want to perform additional exploratory analysis.
What aspects of the data reveal the most interesting discoveries or stories?
Do not feel obligated to try to convey *everything* about the data: focus on a compelling subset. 

Implement your interactive graphic using Vega-Lite.
Your graphic must include interactions that enable exploration.
Possible techniques include panning, zooming, brushing, details-on-demand (e.g., tooltips), dynamic query filters, and selecting different measures to display.
You are free to also consider highlights, annotations, or other narrative features intended to draw attention to particular items of interest and provide additional context.

In addition to gaining hands-on implementation experience, another goal of this assignment is for you to think about the effectiveness of specific techniques for your chosen data domain.

You must also include references to external resources.
Be sure to list the data sources you used.
If your work adapts or builds on existing visualization examples, please cite those as well.

### Design rationale

In addition to your interactive graphic, you will also provide a write-up describing the rationale for your design decisions. How did you choose your particular visual encodings and interaction techniques? What alternatives did you consider and how did you arrive at your ultimate choices?

Provide your write-up in the Canvas textbox for the assignment.
That is, you're not required to add it to your notebook: you have complete creative control over what your final notebook will look like.

## Grading criteria

Squarely meeting the requirements as described above for this assignment will receive a score of 9/10.
Going beyond above and beyond would net the final point.
Examples of this include:

- novel interaction techniques or visualization elements (i.e., novel to us and our class)
- effective multi-view coordination
- thoughtful and elegant graphic design that attends to what we've learned about effective visual encodings
- insightful and engaging exploration experience

Point deductions will be made when projects suffer from:

- errors or broken features
- clearly ineffective visual encodings
- confusing interface design or unhelpful interactions
- lack of exploratory interaction techniques
- incomplete or insufficient write-up in Canvas

## Submission details

In Canvas, submit a link to your public and unlisted Observable Notebook as well as your design rationale.

Note that submissions to this assignment will be reviewed as part of a subsequent peer-review assignment (tentatively due on Wednesday 5/14).
So try to avoid late submissions.

## Acknowledgement

This assignment is adapted from [Jeffrey Heer's assignment at UW](https://courses.cs.washington.edu/courses/cse442/24au/a3.html).

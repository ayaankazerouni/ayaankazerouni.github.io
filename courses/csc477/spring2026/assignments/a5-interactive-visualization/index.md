---
layout: course-subpage
title: "Assignment 5: Interactive Visualization with D3"
---

This assignment involves building an interactive visualization of a dataset of your own choosing and deploying it on the web.

- s
{:toc}
## Overview

One goal of this assignment is for you to gain familiarity with various interaction techniques. We have seen many other examples of interactive visualizations in class and in the readings. The goal with this assignment is not only for you to gain hands-on implementation experience, but also for you to think about the effectiveness of the specific techniques for your chosen data domain.

One challenge is to scope the assignment so that you can finish it in the allotted time. Focus on designing a limited yet compelling visualization that enables interactive exploration along a few critical dimensions.
The [ZipDecode](https://www.benfry.com/zipdecode/) and [NameGrapher](https://namerology.com/baby-name-grapher/) applications are nice examples that use a simple but elegant interaction design to enable engaging explorations. A tightly-focused, well-implemented interactive graphic is much preferred to a sprawling design that attempts too much!

**Remember, you need to scope this assignment so you can finish it in two weeks.** Focus on designing a limited yet compelling visualization that enables interactive exploration along a few critical dimensions.
A tightly-focused, well-implemented interactive graphic is much preferred to a sprawling design that attempts too much.

## Deliverables

### Interactive Visualization 

Design and implement an interactive graphic aimed at enabling understanding of a compelling question for a dataset of your own choosing. In order to determine what subset of the data and which interactive options are most promising, you may want to perform additional exploratory analysis. What aspects of the data reveal the most interesting discoveries or stories? Do not feel obligated to try to convey *everything* about the data: focus on a compelling subset. 

Your graphic must include interactions that enable exploration. Possible techniques include panning, zooming, brushing, details-on-demand (e.g., tooltips), dynamic query filters, and selecting different measures to display. You are free to also consider highlights, annotations, or other narrative features intended to draw attention to particular items of interest and provide additional context. **You are strongly encouraged to review the class resources on Interaction for sources of inspiration.**

In addition to gaining hands-on implementation experience, another goal of this assignment is for you to think about the effectiveness of specific techniques for your chosen data domain.

### Implementation requirements

**Implement your interactive graphic using D3** and deploy it to the Web as a static website. You will submit a link to your website when finished. I expect most students to use [Observable Framework](https://observablehq.com/framework) to do this, but you are free to use other publishing methods if you wish.

Observable Framework is a static site generator for "data apps". You get a similar reactive engine like Notebooks, but get more control over editing and publishing your website. For example, you can use an editor of your choosing and deploy to a custom domain if desired. Having the same reactive engine as Notebooks means that many of the idioms we learn in class for creating and updating interactive and animated graphics will transfer to Framework.

**[Deploy your application to the open Web](https://observablehq.com/framework/deploying)** using a service like GitHub Pages or similar.

**Include a link to your project repository in your website**. This also requires that your repository be public.
### Design rationale

In addition to your deployed webpage, you will also provide a write-up with the following components:
- A rationale for your design decisions. How did you choose your particular visual encodings and interaction techniques? What alternatives did you consider and how did you arrive at your ultimate choices?
- References to external resources. This includes data sources as well as references any existing work if your work adapts or builds from it. Missing references to these will be taken seriously.

You may include this write-up in your website, or in the Canvas textbox for this assignment, or in a separate file in your repository. Wherever it is, please make it easy for me to find.
## Grading criteria

Squarely meeting the requirements as described above for this assignment will receive a score of 9/10.
Going beyond above and beyond would net the final point. Examples of this include:

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

In Canvas, submit a link to your website (and optionally your design rationale).

Note that submissions to this assignment will be reviewed as part of a subsequent peer-review assignment (tentatively due on Wednesday 6/2). So try to avoid late submissions.

## Acknowledgement

This assignment is adapted from [Jeffrey Heer's assignment at UW](https://courses.cs.washington.edu/courses/cse442/24au/a3.html).


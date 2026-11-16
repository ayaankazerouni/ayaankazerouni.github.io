---
layout: course-subpage
title: "Assignment 5: Ethical and Deceptive Visualization"
---

In this assignment, you will design and implement two static visualizations using the same dataset.
One visualization will be an ethical representation of the data, while the other will be deceptive.
With the deceptive visualization, your goal is to trick the viewer into believing that the visualization is legitimate and to draw inaccurate conclusions from it.

We will examine each other's work in an in-class activity---see if you can deceive your teammates.

You will use Vega-Lite in an Observable Notebook to create your visualizations.

- s
{:toc}

## Task

Begin by selecting a dataset (see below). You must use the same dataset for both visualizations.

Choose a question that you want your visualization to answer---you may choose a different question for each of your visualizations if you wish.
The question must appear in the title of your visualization.
Design your visualization to answer the question correctly (for the ethical visualization) and incorrectly (for the deceptive visualization).

We will consider an *ethical visualization* to be one where:

- The visualization is clear and interpretable by the general population.
- The visual encodings are appropriate and effective for the intended task.
- Data transformations are clearly and transparently communicated.
- The underlying data source (and any potential bias) is clearly communicated.

On the other hand, a *deceptive visualization* may exhibit the following properties:

- The visual representation is intentionally inappropriate or misleading.
- Titles are skewed to intentionally influence the viewer's perception.
- The data has been transformed or filtered in an intentionally misleading way.
- The existence or source of bias in the underlying data is unclear.

Additionally, for the deceptive visualization, aim to use subtle ineffective choices in the design that require close reading to be identified.
Misleading strategies are fine, but **outright lying is not.** For example, do not use fake data or lie about the data source.
Similarly, deliberate lies in axis titles or labels are not allowed. Technically true but otherwise misleading statements are allowed.

## Deliverable

Your deliverable will be a link to a public and **unlisted** Observable notebook that contains both visualizations.
The two visualizations should be side by side near the top of the notebook.

<div class='callout note' markdown='1'>
**It should be not be immediately clear in your submission which visualization is ethical and which is deceptive.**

Use [HTML `details` and `summary` elements](https://developer.mozilla.org/en-US/docs/Web/HTML/Reference/Elements/details) to create collapsible sections for the parts of your write-up that describe the visualization designs. A reader should have to click to expand the section to see the details.
</div>

In addition to the visualizations, you should include a write up that describes the following:

- The dataset you chose.
- For each visualization:
  - The question you are trying to answer.
  - A description of your design rationales, and how your choices were intended to inform or mislead the viewer. This should also make clear which visualization is ethical and which is deceptive.

If your notebook has lots of data-cleaning code or code for experimental visualizations that you later discarded, please move those to a separate section at the bottom of the notebook.
The main part of your notebook should focus on the two visualizations and your write-up.

## Grading

Your assignment will be graded based on:

- The clarity and interpretability of your ethical visualization.
- The duplicity of your deceptive visualization.
- The clarity and completeness of your write-up.

Remember that your deliverable should be two static visualizations.
Our goal here is to explore the subtle choices we can make in the design of data visualizations, and their effects on the viewer's understanding of the data.
Our goal is _not_ to explore the use of multiple views or interactivity as it was in the previous assignments.
**It is okay to keep it simple.**

Examples of things that will result in point deductions include:

- Obvious identification of the ethical and deceptive visualizations.
- Missing titles containing the questions for each visualization. 
- Missing elements in the write-up.
- Outright lies in the deceptive visualization or write-up.
- Untidy or unprofessional presentation of the notebook, including missing references.

## Recommended data sources 

It's recommended that you choose from one of the following sources:

- [Gapminder.org](https://www.gapminder.org/data/) — Global human development data, e.g., population, life expectancy, income, C02 emissions.
- [DEA Pain Pills database](https://www.washingtonpost.com/national/2019/07/18/how-download-use-dea-pain-pills-database/?arc404=true) — You may need to enter an email to access this data

You may also consider datasets listed in the [final project assignment](../course-project/). If you want to use a different dataset, please check it with me as early as possible.

As always, whichever dataset you choose, please include a reference to it in your notebook.

## Acknowledgement

This assignment is based on original assignments by [Jeff Heer](https://courses.cs.washington.edu/courses/cse442/24au/a2.html) and [Jon Froehlich](https://docs.google.com/document/d/1-ZntqdIcfQBX6LOBv8akDiapqoaD-NPmYSf-Y3voXFU/edit?tab=t.0).

---

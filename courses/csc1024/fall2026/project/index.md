---
layout: course-subpage
title: CSC 1024 Final Project
---

For your final project in this course, you'll work in groups of 3–4 to create an Observable Notebook containing a data-driven report about a topic of your choosing.
The report will include analyses, visualizations, and reflections based on a real-world dataset of your own choosing.

## Finding a dataset

You can find data from any of the following sources, or even merge multiple datasets to help you come up with unique insights.

Note: Not all of these are going to be super easy to work with. That's okay! Please talk to me if you're interested in a topic or dataset but find it difficult to download. I would much rather help you follow your interest than ask you to choose a different dataset.

Possible data sources (you're free to look elsewhere as well):

- The [CORGIS](https://corgis-edu.github.io/corgis/json/) repository of datasets.
- [TidyTuesday](https://github.com/rfordatascience/tidytuesday?tab=readme-ov-file#datasets) is a community-led effort to collect "tidy" datasets that are interesting and easy to work with.
  - This link goes to a repository on GitHub.com, where many datasets are available, organized by year.
  - If you click through to a given dataset, you'll see example code to download the dataset. The example code is usually in R or Python, not in TypeScript. However, you can still manually follow the URL in the example code and download the data from there.
- [Gapminder.org](https://www.gapminder.org/data/) collects a bunch of data about countries around the world.
- Data repositories from the [US Government](https://data.gov/) or the [California Government](https://data.ca.gov/). These are a little less friendly to work with, but the upside is you'd be getting data "directly from the source", e.g., directly from surveyors or census takers collecting demographic info in each county.
- [Our World in Data](https://ourworldindata.org/) has many data-driven articles that often make their data available for download.

## Task overview

Your task in this project is to produce a data-driven web-based report about the dataset you choose to work with.
Think about it like writing a paper, but instead of just words, you're also presenting your data analysis.

You will put together everything you've learned so far to produce this document, i.e., TypeScript and Vega-Lite.

Put simply, I'd like for you to tell me something interesting from the data. Teach me (and, through your presentation, the rest of the class) something about the topic you've chosen.

You're encouraged to pursue questions that _you_ find interesting. There is no requirement that you come up with "significant" or "surprising" conclusions.

## Requirements

This is a fairly open-ended project. But there are a few minimum requirements I'd like each project to meet.

### Non-technical requirements

#### Research and context

For whatever dataset you choose, you must also find (_and read_) one or more articles that provide detail or context surrounding the dataset's topic or field.

This is important so we don't accidentally make misleading claims or misrepresent the data.
It is _particularly_ important if you work with a dataset or topic that is of societal or scientic importance (encouraged!).
And besides, reading will help you come up with more interesting ideas for questions or visuals!

For example, if you choose to work with the [CORGIS data about fatal police shootings](https://corgis-edu.github.io/corgis/json/police_shootings/), you should definitely read the [Washington Post article](https://www.washingtonpost.com/graphics/investigations/police-shootings-database/) about how the data was collected. (The Washington Post originally collected the data, and the article's data is more up to date than the CORGIS version.)

So, your website's front page should contain the following:

- A brief paragraph or two giving an overview of what you studied and why.
- _At least_ these two references:
    - The dataset or datasets you used, including a link to where you downloaded it from.
    - Links to the article or articles you read to inspire and inform your analysis.


#### Notebook organization

Your notebook should be well organized, using headers and well-formatted text to create a coherent narrative. Examples of issues that might lead to point deductions are:

- Analyses and results that are buried under tons of setup code. Observable lets you re-organize cells however you'd like—make use of that capability!
- Grammatical errors or typos that make reflections difficult to read understand.
- Lack of proper organization, e.g., missing use of headings or paragraphs to organize code and text.
- Poorly-formatted TypeScript or Vega-Lite code.

### Technical requirements

You will use TypeScript to transform the data into suitable formats for your charts and analyses. This involves using and writing functions, arrays, map/filter/reduce, etc.

You must produce at least 3 Vega-Lite figures, but hopefully you will produce more!

- Each figure should have a meaningful chart title and axis titles.
- Each figure should be accompanied by text describing the main insights drawn from the figure.
- There should be at least two types of figures (e.g., don't produce only bar charts or only scatterplots).
- At least one chart should be of a type we have not talked about in an in-class activity. _Please feel free to copy and modify examples from the [Vega-Lite Example Gallery](https://vega.github.io/vega-lite/examples/)_.

## Getting started

You will work in teams. Teams are already assigned (see the announcement in EdStem).

Each team will produce _one_ Observable Notebook, which they can edit collaboratively.

I will add all of you to the [`@kazerouni-calpoly`](https://old.observablehq.com/team/@kazerouni-calpoly/) workspace in Observable. Once you're added, one team member should create their notebook there and share edit access with their teammates.

## Submission and final presentation

Submit your project by making your team's notebook **Unlisted** (or **Public**), if you want it visible to everyone.
And submit the link in Canvas by the due date.

**Presentation**

In the last week of class, your group will give a brief (7–10-minute) presentation detailing your analysis of your report in front of the rest of the class.
The presentation should cover the following items:

- An overview of your topic and why you chose it.
- A brief description of where you got your data and why we should trust it. For example, simply saying "TidyTuesday" is not sufficient, since TidyTuesday is merely curating data collected from _other_ sources (which it cites). Follow those references and cite the original source.
- (The bulk of your presentation) Your analysis and what you learned from the dataset you studied. 
- (If time permits) Anything you found particularly challenging that you are proud of overcoming.



---
layout: course-subpage
title: "Course project: Explorable explanations"
---

- s
{:toc}

## Overview

For this project, **you'll work in teams of 3–4** to create and publish an interactive article that uses visualization to explain some complex subject to a reader.
The visualizations you create should all embody the best practices for effective visualization that you have learned in class.

In terms of toolkits, I expect most teams will build an "interactive webpage" using [Observable Notebooks](https://observablehq.com).
I also expect most teams will use **[Vega-Lite](https://vega.github.io/vega-lite/)** to create interactive visualizations, but you are also free to use [D3.js](https://d3js.org/) or [p5.js](https://p5js.org/) (both of which we will talk about later this term), or some combination thereof.
D3 in particular has a [vast gallery of examples](https://observablehq.com/@d3/gallery) that _you are encouraged to explore and adapt as you see fit_.
The only requirement here is that you cite your sources (in a code comment) whenever you use code from another example.

If you want to use other tools that we haven't talked about or that are not JavaScript-based, please talk to me first.

You will choose the topic, but it must have **social or scientific importance.**
Example topics include philanthropic spending, election donations, economic development, humanitarian aid, climate change, education, civil rights, legislative voting records, a computer science algorithm or mathematical concept (or music concept, or any discipline you're into in addition to CS), or some other important societal topic.
Within this constraint, I encourage you to select something of great personal interest.

Create an interactive, engaging [_explorable explanation_](https://worrydream.com/ExplorableExplanations/) of your topic.
Your job is to **educate your non-expert reader** about your topic, and also highlight its importance to society.
You should use interactive visualizations to do this.

You may be inspired by the following examples:

- [Why outbreaks like coronavirus spread exponentially, and how to "flatten the curve"](https://www.washingtonpost.com/graphics/2020/world/corona-simulator/). Harry Stevens. *Washington Post.*
- [The Hidden Cost of Digital Consumption](https://parametric.press/issue-02/streaming/). Halden Lin, Aishwarya Nirmal, Shobhit Hathi, and Lilian Liang.
- [512 Paths to the White House](https://archive.nytimes.com/www.nytimes.com/interactive/2012/11/02/us/politics/paths-to-the-white-house.html?_r=0). Mike Bostock and Shan Carter. *New York Times* archive.
- [Bicycle](https://ciechanow.ski/bicycle/). Bartosz Ciechanowski.
- [Visualizing MBTA Data: An interactive exploration of Boston's subway system](https://mbtaviz.github.io/). Mike Barry and Brian Card.
- See other examples at [explorabl.es](https://explorabl.es/)

Before you start, please read [A Nested Model for Visualization Design and Validation](https://www.cs.ubc.ca/labs/imager/tr/2009/NestedModel/NestedModel.pdf) by Tamara Munzner, or watch the videos about the topic ([Part I](https://www.youtube.com/watch?v=KXswx4QSkHc) and [Part II](https://www.youtube.com/watch?v=Yq2IkdgWr9Q)) to help you understand what goes into making an effective interactive visualization.

## Milestones

The project has three key milestones (see due dates in the course schedule):

- P1: Project proposal: An initial proposal answering specific questions about your planned work (see below); includes information about your teammates as well as initial sketches.
- P2: Prototypes: An initial interactive prototype in Observable.
- P3: Final deliverable: Your final explorable explanation, deployed publicly and presented in class. The class will collectively vote for their top explorable explanation as well as the most impactful topic.

### P1: Project Proposal

Using [this Word document](https://cpslo-my.sharepoint.com/:w:/g/personal/ayaank_calpoly_edu/EZvbmzYUHrNDqvccc2YODxwBoE1nIsL7LxitDGO86x5Q4g?e=sQG7eu) as a template, propose your topic, dataset(s), and team members. Answer the following questions in your write-up:

- What is your topic?
- Why is it socially or scientifically significant?
- Who is your audience? Why are they reading your article? What are your assumptions about them?
- What dataset(s) are you using? Why are they authoritative? Please include hyperlinks when relevant.
- What are some questions you could answer with these data? Include at least two sketches made with pen and pencil or a tablet and stylus to illustrate your team's initial ideas.

Not including sketches, your write-up should be no longer than 1.25 pages.

As you brainstorm, consider that we will cover the following as this project progresses:

- Cartographic visualizations.
- p5.js and d3.js, allowing you to draw custom marks and animations, and graphics in general.

So you are not limited to the visualizations and interactions that are possible through Vega-Lite.

Turn in your write-up to Canvas as a PDF filled out by your team.

### P2: Interactive Prototype

Develop an initial interactive prototype on Observable and submit the following to Canvas:

1. A public (but possibly unlisted) link to your notebook. Please choose a custom URL for your notebook that communicates your chosen topic.
2. A static PDF of your notebook, so that improvements you make between now and the final submission may be considered.
3. A reflection of what you've learned and what you've been challenged by so far.

Your interactive prototype will be presented to the rest of the class in a "gallery walk" situation, kind of like a conference poster session.
This will be an opportunity to receive constructive feedback from myself and your classmates about your prototype.
At this stage, your project does not need to be in its final state.
However, you should have:

- An overall structure and flow to your document (i.e., some key headings).
- A draft introduction to your article.
- A description of your dataset and its integrity (including hyperlinks).
- More than one interactive visualization with some basic descriptive text.

### P3: Final Deliverable

Finalise and publish your interactive article, and prepare a live demo for the rest of the class.
You will present to the class on the last two days of week 10.

The final interactive visualization should have:

- Significant improvements over the P2 prototype, based on feedback received.
- Multiple interactive visualizations that follow best practices and engagingly explain your topic, including coordination of interactions across linked graphics.
- Well-written and concise prose interspersed through your visualizations. That said, try to avoid excessive amounts of prose in your article---the reader should primarily explore your topic through your visuals, not paragraphs of text.

More details about the final presentation will be forthcoming closer to week 10.

### Final presentation

Final presentations will take place on the last day of class: **Friday, June 6.**

We have 9 groups and 100 minutes (50 minutes in lecture and 50 minutes in lab).
Each group will have 7--10 minutes to present their project, _including time for questions and demonstrations_.
Due to the limited time, I will be strict about each team's time limit.

#### Presentation content

Each presentation will include three pieces:

- A set of slides briefly introducing the project,
- A live demonstration of one or two major interactive elements of your explorable explanation,
- A slide or two summarizing your contributions.

Since you have a relatively short time in which to present, _it's extremely important that you rehearse!_

Each presentation should include the following pieces (with the recommended amount of time you should devote to each piece). I strongly recommend that you rely on graphics and visuals in your slides---try not to have slides with a lot of text.

- **Project goal** (< 1 minute): What was the goal of your article? Who were your imagined audience?
- **Motivation** (1--2 minutes): Why is your topic _socially_ or _scientifically_ important?
- **Overarching approach** (< 1 minute): What was your approach to the explorable explanation? What tools did you use, what narrative structure?
- **Interactive elements** (1--2 minutes): Include screen-captured GIFs or videos of the major interactive elements of your explorable explanation. This will serve two goals:
  - To show the audience what you built in a lightweight way, and
  - To serve as a backup in case something goes wrong during the live demo (it happens!)
- **Live demo** (2--3 minutes): At this point you will move to your Observable notebook and demonstrate live usage of the major interactive elements.
  - It is strongly recommended that you include a link to your notebook in your slides so that your transition is smooth.
  - Don't try to show everything, just the important parts and the parts you're most proud of.
  - _Please have a plan ready for what you will demonstrate!_ We won't have time for an "unstructured walkthrough" of the notebook.
- **Summary** (1 minute): Close with a brief summary of your contribution, limitations in your approach, and how you would extend the project if you had more time.

#### Deliverable and grading

In the Canvas Discussion for this assignment, submit two links:

- A link to your final explorable explanation (publicly accessible, so everyone can visit it).
- A link to your final presentation slides.

Presentations will be graded on the following criteria:

- Submission: On time submission of slides.
- Attendance: Were all team members present and on time?
- Completeness: Did the presentation cover all of the required content in the allotted time?
- Clarity and professionalism: Was the presentation clear and practiced, or did it feel unprepared?

## Resources

### Visualization tools

- [UW Data Visualization Curriculum](https://observablehq.com/@uwdata/data-visualization-curriculum) (using Vega-Lite). Jeffrey Heer, Dominik Moritz, Jake VanderPlas, Brock Craft.
- [Introduction to D3](https://observablehq.com/@uwdata/introduction-to-d3-part-1?collection=@uwdata/introduction-to-d3). Jeffrey Heer.
- [Using p5.js in Observable](https://observablehq.com/@jonfroehlich/using-p5js-in-observable). Jon Froehlich.

### Possible data sources 

Within the requirement that your topic be societally or scientifically important, **you're strongly encouraged to choose a topic that aligns with your own interests**.
This list of possible data sources _should not dictate_ your project topic.
I provide the list in the hope that something in there intersects with your chosen topic.
But if not, please talk to me about finding a dataset!
(Note that if your topic is an explanation of an algorithm or mathematical or musical concept, your dataset may be _generated_ instead of downloaded.)

You're obviously not required to choose from here!

- [opendata.slocounty.ca.gov](https://opendata.slocounty.ca.gov/) — San Luis Obispo County Open Data
- [data.ca.gov](https://data.ca.gov) — California Open Data
- [data.gov](https://data.gov/) — US Government Open Datasets
- [data.census.gov](https://www.census.gov/data.html) — US Census Bureau Open Data
- [IPUMS.org](https://www.ipums.org/) — Integrated Census and Survey data from around the world
- [Gapminder.org](https://www.gapminder.org/data/) — Gapminder's mission is to "fight devastating ignorance with a fact-based worldview everyone can understand"
- [Federal Elections Commission](https://www.fec.gov/data/) — Campaign finance data
- [NOAA weather datasets](https://www.ncei.noaa.gov/) — See code in the appendix of [this notebook](https://observablehq.com/@ayaankazerouni/csc477-view-composition) for examples of tidying this data
- [DEA Pain Pills database](https://www.washingtonpost.com/national/2019/07/18/how-download-use-dea-pain-pills-database/?arc404=true) — You may need to enter an email to access this data
- [fivethirtyeight.com](https://github.com/fivethirtyeight/data/) — Code and data behind stories on [538](https://fivethirtyeight.com/features)
- [Yelp open dataset](https://business.yelp.com/data/resources/open-dataset/)
- [Datasets curated by Tableau](https://www.tableau.com/learn/articles/free-public-data-sets)
- [Datasets curated by Observable](https://observablehq.com/@observablehq/curated-datasets)
- [Kaggle datasets](https://www.kaggle.com/datasets)
- [The CORGIS dataset of datasets](https://corgis-edu.github.io/corgis/) — Note that these datasets are cleaned and curated specifically for educational use and may be of limited direct utility or may be out of date. However, many link to their original sources (e.g., government websites and the like), which may be useful.
- [The Vega datasets collection](https://github.com/vega/vega-datasets/) — Same caveat as above.

You may also consider services like [Google Dataset Search](https://datasetsearch.research.google.com/), but note that you are responsible for judging the legitimacy of the data you find.

## Acknowledgement 

This assignment is adapted from the original assignments from [Jon Froehlich's CSE 412](https://docs.google.com/document/d/1IkLt99Wy4FsyGyVT3oPsPH9Eg-HjiyVsOyviqQSnQYc/edit?tab=t.0) course and [Jeffrey Heer's CSE 442](https://courses.cs.washington.edu/courses/cse442/24au/) course at UW.

---

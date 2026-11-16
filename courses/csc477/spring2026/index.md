---
layout: course
title: CSC 477 Scientific and Information Visualization
---

<div class='two-column-container' markdown="1">

<div class='left-column' markdown="1">
## Contents

{:.no_toc}

- Table of contents
{:toc}

</div>

<div class='right-column' markdown="1">

**What we'll learn.** Data visualization is one means of helping humans make sense of vast quantities of data. Well-designed visualizations can replace slower cognitive calculations with much faster perceptual inferences, improving comprehension, memory, and decision-making. Conversely, poorly-designed visualizations can (intentionally or unintentionally) make decision-making more difficult or inaccurate.

In this class, we'll learn how to design _expressive_ and _effective_ visualizations. We'll study techniques for creating visualizations based on principles from graphic design, perceptual psychology, and cognitive science.
You will learn how to design and build interactive visualizations for the Web using [Vega-Lite](https://vega.github.io/vega-lite/) and [D3](https://d3js.org) (data-driven documents).

## Info and important links

- Instructor: Ayaan M. Kazerouni
- Email: ayaank@calpoly.edu
- Office hours: [See my homepage](https://ayaankazerouni.org)
- [Canvas](https://canvas.calpoly.edu/courses/180341)
- [EdStem forum](https://edstem.org/us/courses/97396/discussion) (you'll need the invite link from Canvas the first time you access it)
- [Course schedule](#course-schedule) (Check this frequently!)

## Learning objectives

- **Visualization preparation and design.** Data collection and preparation; data and task abstractions to be presented through visualization.
- **Visualization idioms and design guidelines.** Making effective use of visual channels like position, size, and colour in common graph types like scatterplots and barcharts as well as more "unusual" ones, [like this](https://en.wikipedia.org/wiki/Charles_Joseph_Minard#The_map_of_Napoleon's_Russian_campaign), rooted in empirical evidence from disciplines like graphic design and perception.
- **Interactive visualization.** Visualizations don't always answer questions; sometimes they help you discover them. _Interactivity_ is key to this exploratory process.
- **Visualization analysis and evaluation.** Faced with a visualization, created by ourselves or others, how should we go about evaluating it?
- **Visualization implementation tools.** We'll use [Vega-Lite](https://vega.github.io/vega-lite/), a grammar of interactive graphics for the first half of the class, and will move on to [D3](https://d3js.org) (data-driven documents) to build more advanced graphics.
- **(Non-)Deceptive visualization.** We will learn how people and organizations lie with visualization, and how not to do it ourselves.

## Assignments

The course will involve roughly weekly assignments that exercise what we talk about in class, and a 3-part final project, worked on in teams.
The **Class participation** portion of the grade will be based on completion of in-class activities and discussions, and attendance on important class days (such as prototype walkthroughs).

The grade breakdown is as follows:

- Class participation (15%)
  - Peer design critiques, programming activities etc.
  - This will include a self and peer evaluation from and about project teams.
- Assignments (50%), made up of:
  - [Assignment 1: Visualization Curation and Analysis](./assignments/a1-visualization-curation-and-analysis/) (5%)
  - [Assignment 2: Data Wrangling with JavaScript](./assignments/a2-data-wrangling-with-javascript/) (5%)
  - [Assignment 3: Expository Visualization](./assignments/a3-expository-visualization/) (10%)
  - [Assignment 4: Ethical Visualization](./assignments/a4-ethical-and-deceptive-visualization) (10%)
  - [Assignment 5: Interactive Visualization with D3](./assignments/a5-interactive-visualization) (20%)
- [Project (35%), in 3 parts](./assignments/course-project/):
  - Part 1: Initial proposal (5%)
  - Part 2: Prototype (10%)
  - Part 3: Final submission
    - \+ Final write-up and interactive deliverable (15%)
    - \+ Presentation (5%)

At the end of the quarter, I will round UP your final numerical score[^participation] and turn that into a letter grade using the following grading scale:

[^participation]: With the exception of if you are right on a grade border but have an extremely low participation score.

<ul style='font-size: 0.9em; column-count: 3; width: 50%; min-width: 300px;'>
<li>A >= 93</li>
<li>A– >= 90</li>
<li>B+ >= 87</li>
<li>B >= 83</li>
<li>B– >= 80</li>
<li>C+ >= 77</li>
<li>C >= 73</li>
<li>C– >= 70</li>
<li>D+ >= 67</li>
<li>D >= 63</li>
<li>D– >= 60</li>
<li>F < 60</li>
</ul>

### Late policy

I recognise life as a college student can be stressful and I don’t know everyone's exact situation.
I also want to avoid inequities arising from some students feeling more entitled than others to ask for extensions in an extenuating circumstance. So,

- Each student is allotted **three late days** to be used as you wish on any **Assignment**.
- To use these days, email me with the subject: `CSC 477: Late days A1` (e.g., if you're using a late day for A1). In the email body, tell me how many late days you plan to use for that project.
- Please send me this email within three days of the assignment's original deadline, and follow the instructions above, since it will help me keep track of the information.
- You do not need to provide a reason for using the late days.

Late days cannot be used on **Project deliverables** since those are team deliverables with synchronous in-class activities.

In cases of emergencies, please talk to me when you are able to, and we will handle those on a case-by-case basis.

## Attendance policy

Lectures:

- There will occasionally be graded activities in class that you must be present to complete. These make up the **participation** portion of the grade breakdown.
- My teaching is interactive; I rely on input from students to drive class sessions, particularly while live-coding.
- This class in particular, more than others, benefits from hearing more voices as we discuss the design and analysis of visualizations.

All this adds up to: **I strongly recommend that you attend every lecture!**

Labs:

- The three hours of scheduled lab time are your primary opportunity to work with your classmates.
- It is also during lab time that I will, on an individual basis, ask you questions about your design and implementation choices for Assignments. Missing the occasional lab is okay, but consistently missing labs is not.
- Once team work begins (week 5), lab attendance is mandatory unless you have let me and your teammates know and you have a legitimate reason to miss class. Missing lab without notice is the same as letting your teammates down.

## Class communication

**Office hours**. You are welcome (and encouraged!) to stop by my office when you have questions or just want to chat about the course. See my [current office hours and location]({{site.url}}). If you can’t make the hours listed, contact me and I'm happy to schedule an appointment for another time.

**Lab sessions.** Our lab sessions are also a good time to ask me questions or to discuss assignments with your classmates (within the bounds of the [academic integrity policy](#academic-honesty)).

**EdStem class forum.** All asynchronous communication for this class will take place [this EdStem forum](https://edstem.org/us/courses/97396/discussion).
(Before accessing it for the first time, you'll need the invite link from Canvas.)

Some suggestions:

- Please ask all course-related questions in EdStem, unless you are sending me documents or files of some kind, or asking about things that apply only to you, like assignment extensions.
- You can answer each other’s questions or participate in discussions.
- The forum will be a searchable index of questions. This can save you a ton of time when you’re working on something and need a question answered.
- It will also help me avoid answering the same question multiple times.
- You can post questions anonymously.
- We will all be using tools to which we are relatively new. The forum is a good place to post tips and tricks that you discover.

## Classroom conduct and climate

### Academic honesty

**Work you turn in must be your own.** Although I encourage you to have lively discussions with one another, all work you hand in must be your own work, unless otherwise specified.
Programs will be compared using software that can reliably detect similarities in source code.
Evidence that your program or parts of your program are plagiarized from another student or an unapproved source will be taken seriously.
At minimum, you will receive a 0 for the assignment, and potentially also an F in the class and report filed with the Office of Student Rights and Responsibilities.

You have a number of resources at your disposal to help you succeed in this course (your peers, myself, online sources), and I am usually willing to work with you on flexible deadlines.
If you feel you _need_ to plagiarize in order to succeed, know that you definitely have other options. Just come talk to me!

### AI Policy[^peck]

[^peck]: Adapted from Evan Peck's AI policy.

**✅ You MAY use AI (ChatGPT, etc.) to help you program or implement visualizations.** Prompts like: _Why isn’t this code showing the data? How do I increase the size of points in this plot? How do I extend the x-axis using Vega-Lite? What does this error mean? Show me an example of..._ Those are all okay!

But if you choose to use AI, there are some things you must know:

First, you are responsible for any mistakes that it makes. It _will_ make mistakes or mislead you on occasion. You can’t blame the AI if you get something wrong.

Second, AI tools can be helpful, and often correct. But their core functionality is to give you an answer that looks plausible without necessarily caring about (1) providing a correct answer in all cases, and (2) serving your learning goals.

We learn best by struggling and surmounting challenges.
Uncritical reliance on AI tools will short-circuit this process. Sure, you will get an answer quickly, but the _answer_ is not our objective; our objective is the _process_ that gets us there. (Just like the goal of lifting weights in the gym is not just to _have the weights in the air_.)

If you do use AI assistants to help you with implementations, you're encouraged to put them in "study mode" first.
Different companies have different names for this:

- ["Study mode" in ChatGPT](https://chatgpt.com/features/study-mode)
- ["Learning mode" in Claude](https://www.anthropic.com/news/introducing-claude-for-education)
- ["Guided learning" in Google Gemini](https://blog.google/outreach-initiatives/education/guided-learning/)
- Alternatively, write a custom instruction, like [this one](https://github.com/DrCatHicks/learning-opportunities), to make you stop and check your learning progress as you go.

On an individual basis, I will occasionally ask you to explain code you've written or choices you made. If I ask you to explain what a piece of your code does, and you are unable to do so, that is going to have repercussions on your grade for that assignment. (See more in the **Attendance** section of this Syllabus.)

**🛑 You MAY NOT use AI to help you make design decisions, make critiques, or generate writing about visualizations.** _Why?_ There is a lot of advice out there that is just flat out wrong with respect to years of visualization research.
There is also a lot of advice that ignores the context of diverse communities who need to understand data (disability, access to technology, education, etc.).
AI is likely going to amplify some of that bad advice, and we shouldn’t be complicit in it.
We need to be careful and critical about our designs.
This is also the core learning objective of this course.
So using ChatGPT (or similar programs) here is not permitted.

**✅ You MAY use AI to help you _polish_ writing.**
Some AI tools like Grammarly can help students find grammatical or clarity errors in their writing.
That is perfectly fine.
The key difference is _creation_ (not okay) vs. _refinement_ (okay).
Also, I want to hear from _you_, and not a regression-to-the-mean approximation of how humans speak.

### Classroom climate

All members of this class are expected to contribute to a respectful, welcoming, and inclusive environment for everyone.
I expect us to strive to build a community in which:

- We are not code snobs. We do not assume knowledge or imply there are things that somebody should know.
- After our own work is complete, we support one another’s learning by sharing our expertise generously if invited to do so.
- We consistently make the effort to recognise and validate multiple types of contributions to a positive classroom environment.
- We strive to contribute meaningfully to group work.

## Resources

There is no official textbook for the course, but we will frequently refer to material from the following sources, generously shared publicly by the authors listed below.

- [Visualization Curriculum](https://observablehq.com/@uwdata/data-visualization-curriculum?collection=@uwdata/visualization-curriculum), a set of notebooks from Jeffrey Heer, Dominik Moritz, Jake VanderPlas, and Brock Craft.
- [_Visualization Analysis and Design_](https://www.cs.ubc.ca/~tmm/vadbook/), a graduate-level text book by Tamara Munzner. The linked page points to per-chapter summaries on YouTube.

Additionally, you will frequently refer to the following online documentation:

- [JavaScript API reference (Mozilla Developer Network)](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference)
- [Observable Notebooks documentation](https://observablehq.com/documentation/notebooks/)
- [Arquero API reference](https://idl.uw.edu/arquero/api/) and [Notebook collection](https://observablehq.com/collection/@uwdata/arquero)
- [Vega-Lite documentation](https://vega.github.io/vega-lite/) and the [Vega-Lite JS API](https://vega.github.io/vega-lite-api/)

Finally, each class day links to readings/resources for that day.

## Course schedule

This is a **tentative** course schedule. I expect to update it frequently as the quarter progresses.

Assignments will appear in Canvas with deadlines.
If deadlines in Canvas conflict with those listed here, **the Canvas deadlines take precedence**.

The READINGS/RESOURCES column contains links to items that you are expected to read or watch outside of class.

- 🎥 **Videos** about data visualization related to the day's topic.
- 📜 **Readings**, which may be papers or online articles.

Additionally, it links to the following resources meant as reference material:

- **Slides** and **Notebooks** that I present in class.
- Documentation for the various tools we'll use.

| **WEEK**    | **DATE**                                               | **TOPICS**                                                                                        | **READINGS/RESOURCES**                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | **ASSIGNMENTS**                                                                                                                                                       |
| ----------- | ------------------------------------------------------ | ------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- |  
| 1           | Tuesday, March 31                                      | <strong class='emph'>NO CLASS</strong>                                                            | <strong class='emph'>ACADEMIC HOLIDAY</strong>                                                                                                                                                                                                                                                                                                                                                                                                                                         |                                                                                                                                                                       |
|             | Thursday, April 2                                      | Course introduction<br>Why visualize?                                                             | 🎥 [_What's Vis, and Why Do It?_](https://youtu.be/1GhZisgc6DI) Tamara Munzner.<br><br>Class materials: [Slides](https://cpslo-my.sharepoint.com/:p:/g/personal/ayaank_calpoly_edu/EccAlzPSH29PtKpPYp89cxsBgfc0fy-jSe4p-cmtKzZ32A?e=QBXWdh)                                                                                                                                                                                                                                            | <span class='due' /> **Day 1 to-dos**:<br>- Join the EdStem forum and introduce yourself<br>- Make an account on [Observable HQ](https://observablehq.com)<br><br> <span class='released'/> [A1: Visualization curation and analysis](./assignments/a1-visualization-curation-and-analysis)                                              |
| 2           | Tuesday, April 7                                       | Visual perception and encoding<br>In lab: JavaScript primer; Intro to Observable notebooks        | 📜 [_Perception in Visualization_](https://www.csc2.ncsu.edu/faculty/healey/PP/). Christopher Healey.<br><br>🎥 _Marks and Channels_ [Part I](https://youtu.be/xplSAMwlTmY) and [Part II](https://youtu.be/xP1J_FKx9JM). Tamara Munzner.<br><br>Class materials: [Slides](https://cpslo-my.sharepoint.com/:p:/g/personal/ayaank_calpoly_edu/IQBKur0x6yeETbPzvmnwOtPoAbiFcfQ_xNfCljCdUhnL-dQ?e=SvKmoq) \| [Notebook](https://observablehq.com/@ayaankazerouni/csc477-observable-demo)   |                                                                                                                                                                       |
|             | Thursday, April 9                                      | Data models and tidy data                                                                         | 📜 [_Data tidying_](https://r4ds.hadley.nz/data-tidy.html). Hadley Wickham.<br><br>📜 [_Tidy Data in JavaScript_](https://observablehq.com/@uwdata/tidy-data-in-javascript). Jeffrey Heer.<br><br>Class materials: [Slides](https://cpslo-my.sharepoint.com/:p:/g/personal/ayaank_calpoly_edu/EahbjpzIKYhPjQU_MhcdP7gBnYxEGo8vNHzqz_mMZ3EvzQ?e=VecVBT) \| [Notebook](https://observablehq.com/@ayaankazerouni/csc477-arquero-demo)                                                     | <span class='due'/> A1<br><br><span class='released'/> [A2: Data wrangling with JavaScript](./assignments/a2-data-wrangling-with-javascript)                          |
| 3           | Tuesday, April 14                                      | Visualization design and validation                                                               | 📜 [_A Nested Model for Visualization Design and Validation_](https://www.cs.ubc.ca/labs/imager/tr/2009/NestedModel/NestedModel.pdf).<br><br>🎥 _Nested Model_ [Part I](https://www.youtube.com/watch?v=KXswx4QSkHc) and [Part II](https://www.youtube.com/watch?v=Yq2IkdgWr9Q). Tamara Munzner.<br><br>Class materials: [Slides](https://cpslo-my.sharepoint.com/:p:/g/personal/ayaank_calpoly_edu/IQCHxK14ukrZSpenved9M4xVAbzKAt2-47IUqM4Y_FUdncE?e=M6IU86) \| Activities: [Validation](./assignments/activity-vis-validation), [Sketching](./assignments/activity-sketching)                         |                                                                                                                               |
|             | Thursday, April 16                                     | Data visualization with Vega-Lite                                                                 | 📜 [_Introduction to Vega-Lite_](https://observablehq.com/@uwdata/introduction-to-vega-lite?collection=@uwdata/visualization-curriculum). Heer, Moritz, VanderPlas, and Craft.<br><br>[Vega-Lite documentation](https://vega.github.io/vega-lite/)<br><small>Most of these docs use the JSON syntax, but we will mostly use the [JavaScript API](https://vega.github.io/vega-lite-api/api/).</small><br><br>Class materials: [Notebook](https://observablehq.com/@ayaankazerouni/csc477-vega-lite-intro) \| [Playfair lab exercise](https://observablehq.com/@ayaankazerouni/playfair-marks-and-channels)                                                  | <span class='due'/> A2<br><br><span class='released'/> [A3: Expository visualization](./assignments/a3-expository-visualization)                                      |
| 4           | Tuesday, April 21                                      | Vega-Lite transformations<br>Scales, axes, and other design choices                               | 📜 [_Scales, Axes, and Legends_](https://observablehq.com/@uwdata/scales-axes-and-legends?collection=@uwdata/visualization-curriculum). Heer, Moritz, VanderPlas, and Craft.<br><br>Class materials: [Notebook (same as above)](https://observablehq.com/@ayaankazerouni/csc477-vega-lite-intro) \| [Slides (scales and axes)](https://cpslo-my.sharepoint.com/:p:/g/personal/ayaank_calpoly_edu/IQDBXIyjV616Q5T_vV6uExlcAfD-PBsATv0CwBP0CCFUrkk?e=Lxl1eD)                                                    |                                                                                                                                                                       |
|             | Thursday, April 23                                     | Multi-view composition                                                                            | 📜 [_Multi-view Composition_](https://observablehq.com/@uwdata/multi-view-composition?collection=@uwdata/visualization-curriculum). Heer, Moritz, VanderPlas, and Craft.<br><br>Class materials: [Slides](https://cpslo-my.sharepoint.com/:p:/g/personal/ayaank_calpoly_edu/IQDV6PBNg3_8TJGI8JMp3x_tAWlUK4JcOJrIRO4aHmZoMnU?e=eEiNvv) \| [Notebook](https://observablehq.com/@ayaankazerouni/csc477-view-composition) \| [Minard lab exercise](https://observablehq.com/@ayaankazerouni/napoleons-march-vl)                                                                                         |                                                                                                                                                                       |
| 5           | Tuesday, April 28                                      | Ethical and deceptive visualization<br>Visualizing uncertainty                                    | 📜 _Misleading Beyond Visual Tricks: How People Actually Lie with Charts_ ([full paper](https://dl.acm.org/doi/10.1145/3544548.3580910), [blog post](https://vdl.sci.utah.edu/blog/2023/04/17/misleading/)). Maxim Lisnic et al.<br><br>🎥 [_The Visual Uncertainty Experience_](https://www.youtube.com/watch?v=pTVAn4oLvbc). Jessica Hullman.<br><br>Class materials: [Slides](https://cpslo-my.sharepoint.com/:p:/g/personal/ayaank_calpoly_edu/IQB1Ge8hsJWsQJCIhwpJpqGpAet3VKcpy_rrtwgQgFQ1ZhA?e=JBJQZb)                                                                                        | <span class='due' /> A3<br><br><span class='released' /> [P1: Project proposal](./assignments/course-project)                                                                                         |
|             | Thursday, April 30                                     | Cartographic visualization                                                                        | 📜 [_Cartographic Visualization_](https://observablehq.com/@uwdata/cartographic-visualization?collection=@uwdata/visualization-curriculum). Heer, Moritz, VanderPlas, and Craft.<br><br>Class materials: [Slides](https://cpslo-my.sharepoint.com/:p:/g/personal/ayaank_calpoly_edu/ERW65DDu0DxMi9yBsby_E8ABQhSqb2KVK8SWEo-TUTVKfw?e=gacLjh) \| Notebooks: [Intro](https://observablehq.com/@ayaankazerouni/csc477-cartographic-visualization-intro), [Choropleth](https://observablehq.com/@ayaankazerouni/csc477-interactive-choropleth),  [Leaflet](https://observablehq.com/@ayaankazerouni/tile-based-cartographic-visualization-leaflet)                                                                                                         | <span class='in-class' /> [A3 Peer review](./assignments/a3-expository-visualization/peer-review) (during lab)<br><br><span class='released' /> [A4: Ethical visualization](./assignments/a4-ethical-and-deceptive-visualization)          |
| 6           | Tuesday, May 5                                         | Interaction                                                                                       | 📜 [_Interaction_](https://observablehq.com/@uwdata/interaction?collection=@uwdata/visualization-curriculum) (with Vega-Lite). Heer, Moritz, VanderPlas, and Craft.<br><small>(We will not spend a lot of class time on this; please work through this notebook on your own to get a sense of Vega-Lite's interaction capabilities.)</small><br><br>Class materials: [Slides](https://cpslo-my.sharepoint.com/:p:/g/personal/ayaank_calpoly_edu/IQDroMxZBMEnSpwFfJ76WAUXAaOayx_o_NoOvIEoGEaM7Yk?e=4KEuz3) \| [Notebook](https://observablehq.com/@ayaankazerouni/csc477-interactive-choropleth#cell-705) \| Take-home exercises (Vega-Lite): [Selections](https://observablehq.com/@ayaankazerouni/csc477-selections-brushing-linking), [Zoom and pan](https://observablehq.com/@ayaankazerouni/navigation)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |                                                                                                                 |
|             | Thursday, May 7                                        | Introduction to D3                                                                                | 📜 _Introduction to D3_. [Part I](https://observablehq.com/@uwdata/introduction-to-d3-part-1). Jeffrey Heer.<br><br>Class materials: Notebooks: [Just Enough SVG](https://observablehq.com/@ayaankazerouni/csc477-just-enough-svg), [Selections](https://observablehq.com/@ayaankazerouni/csc477-d3-selections), [Mapping Data to Graphics](https://observablehq.com/@ayaankazerouni/csc477-d3-mapping-data-to-graphics)                                                         | <span class='due'/> P1<br><br><span class='released'/> [P2: Prototype](./assignments/course-project/#p2-interactive-prototype)                                                                                                  |
| 7           | Tuesday, May 12                                        | D3: Enter, update, and exit                                                                       | 📜 _Introduction to D3_. [Part II](https://observablehq.com/@uwdata/introduction-to-d3-part-2). Jeffrey Heer.<br><br>🧪 [D3 gallery](https://observablehq.com/@d3/gallery)<br><small>Use as a source of inspiration and building blocks, and cite your sources!</small><br><br>Class materials: Notebooks: [Animation](https://observablehq.com/@ayaankazerouni/csc477-d3-animation), [Interaction](https://observablehq.com/@ayaankazerouni/csc477-d3-interactive-legend) | <span class='due'/> A4<br><br><span class='released'/> [A5: Data visualization with D3](./assignments/a5-interactive-visualization)                                                                                                                                            |
|             | Thursday, May 14                                       | D3: Animation                                                                                     | Class materials: [In-class exercise](https://observablehq.com/@ayaankazerouni/csc477-d3-animation-exercise)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | <span class='due'/> [A3 revisions](./assignments/a3-expository-visualization/revisions)                                                                                                                                                                     |
| 8           | Tuesday, May 19                                        | <span class='emph'>Prototype walkthroughs</span><br><br>Narrative in visualization                |                                                                                                                                                                                                                                                                                                                 | <span class='due'/> P2<br><br><span class='in-class'/> Project showcase (during lecture)<br><br><span class='released'/> [P3: Final deliverable](./assignments/course-project/#p3-final-deliverable)                                                                                          |
|             | Thursday, May 21                                       | Narrative in visualization (contd.)                                                               | 📜 [_Narrative Visualization: Telling Stories with Data_](https://idl.cs.washington.edu/files/2010-Narrative-InfoVis.pdf). Edward Segel & Jeffrey Heer.<br><br>Class materials: [Slides](https://cpslo-my.sharepoint.com/:p:/g/personal/ayaank_calpoly_edu/IQDaVWccxKUwT66F4sYYnHIcAdzi1V4IwkdjnmtIxPGlH0I?e=jRc0xb) \| [Narrative activity](./assignments/activity-narrative)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |                                                                                                                                                                       |
| 9           | Tuesday, May 26                                        | Visualizing networks                                                                              | 🎥 [_Networks I_](https://youtu.be/XOUJssmvz58) and [_Networks II_](https://youtu.be/rz_CiN0hPqM). Tamara Munzner.<br><br>Class materials: [Slides](https://cpslo-my.sharepoint.com/:p:/g/personal/ayaank_calpoly_edu/EZbOBHUs78xOrR8ch-9wKhwB_puYJhd0y2gukwMCf9bZvQ?e=dgvpPt)                                                                                                                                                                                                                                                                                                                                  |                                                                                                                                                                       |
|             | Thursday, May 28                                       | Accessibility in visualization                                                                    | 📜 [_The Chartability Workbook_](https://chartability.github.io/POUR-CAF/). Frank Elavsky.<br><br>📜 [_An introduction to accessible data visualizations with D3.js_](https://fossheim.io/writing/posts/accessible-dataviz-d3-intro/). Sarah Fossheim.<br><br>Class materials: [Notebook (in-class exercise)](https://observablehq.com/@ayaankazerouni/accessible-visualization-with-d3) based on Fossheim's tutorial                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | <span class='due'/> A5<br><br><span class='due'/> (Before class) [Accessibility audit](./assignments/activity-accessibility)                                                                                                                                               |
| 10          | Tuesday, June 2                                        | <span class='emph'>A5 design share-out and critique</span>                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        | <span class='in-class' /> [A5 Peer review](./assignments/a5-interactive-visualization/peer-review) (during lecture)                                                                                                                                                                      |
|             | Thursday, June 4                                       | <span class='emph'>Final team project presentations</span>                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        | <span class='in-class'/> Project presentations<br><br><span class='due' /> P3<br><br><span class='due' /> Project self and peer evaluation                                                                                  |
| Finals week | Tuesday, June 9; 1:10pm to 4pm<br>In the lecture room. | <span class='emph'>Optional: A4 and A5 improvements based on feedback.                            | <span class='emph'>A write-up submitted <u>24 hours prior</u> describing how feedback was addressed, followed by a 5-7 minute face-to-face demonstration during a designated time slot.</span>                                                                                                                                                                                                                                                                                         |                                                                                                                                                                       |

## Acknowledgements

This course's materials are adapted from those shared publicly by [Jeffrey Heer](https://homes.cs.washington.edu/~jheer/) (particularly [CSE 442 at UW](https://courses.cs.washington.edu/courses/cse442/)), [Tamara Munzner](https://www.cs.ubc.ca/~tmm/), and [Jon Froehlich](https://jonfroehlich.github.io/).

</div>

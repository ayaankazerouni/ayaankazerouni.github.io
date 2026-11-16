---
layout: course
title: CSC 313 Teaching Computing
---

{% assign canvas="https://canvas.calpoly.edu/courses/172956" %}
{% assign assignments=canvas | append: "/assignments" %}
{% assign files=canvas | append: "/files" %}

<div class="two-column-container">

<div class="left-column" markdown="1">

- seed list
{:toc}

</div>

<div class="right-column" markdown="1">

Welcome!

- Instructor: Dr. Ayaan M. Kazerouni [ayaank@calpoly.edu](mailto:ayaank@calpoly.edu)
- Office hours: [See my homepage]({{site.url}})

An introduction to pedagogical methods and practical techniques for computing education: selecting appropriate content, designing assignments and activities, evaluating student learning, and evaluating teaching efficacy. Hands-on guided curricular design activities and real-world practice.

**Important links**

- [Canvas]({{canvas}})
- [Slack workspace](https://csc313winter2026.slack.com) (you'll need the invite link from Canvas the first time you access this)

## Course learning objectives

- Explain common challenges to learning and teaching computing to broad audiences
- Discuss computational concepts and correct common misunderstandings
- Assess a proposed CS curriculum and teaching methodology on whether it is appropriate for a target audience
- Identify, evaluate, and effectively use evolving tools for computing education
- Identify, evaluate, and disseminate results from a research study
- Identify, evaluate, and disseminate changing pedagogical norms
- Design an effective assignment for teaching fundamental computational concepts

## Assessments and grading

| Group                                       | Frequency/Major assignments                                                                                           | % of grade |
| ------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | ---------- |
| Programming assignments and self-reflection | [The programming process reflection](programming-process)<br>[Educational data mining](edm)                           | 15         |
| Pre-class readings                          | Occasional, every ~1.5 weeks                                                                                          | 15         |
| In-class discussions                        | Most lab sessions                                                                                                     | 20         |
| Attendance                                  | [Attendance policy](#attendance-policy)                                                                               | 5          |
| Tutoring/teaching observations/critiques    | [Shadowing tutors](shadowing)<br>[Active tutoring](active-tutoring)<br>Teaching observations                          | 20         |
| Workshop                                    | [Workshop proposal](workshop-proposal)<br>[Pre-workshop presentation](workshop-presentation)<br>Teaching the workshop | 25         |

**Programming:** To think about teaching computing, we will begin with reflections on our own coding process. This course includes programming assignments that involve process documentation and reflections. This process will include code review and shared assessment of one’s process and code.

**Reading**: I will assign course readings to help you engage with the material. Please complete these readings before class. These may be quizzes (meant to be taken as you read) or discussion prompts. These are usually graded based on good faith effort. The goal is to ensure you come to class having given some thought to that day's topic.

**In-class discussions**: We'll have frequent small-group discussions during lecture and lab sessions. These will often be accompanied by Canvas submissions.

**Tutoring/Teaching observations:** You will practice shadow experienced CS tutors and conduct your own tutoring sessions in ~~the CSSE tutoring centre~~ lab sessions of introductory CS courses.

Additionally, this quarter the CSSE department will be bringing in tenure-track faculty candidates as part of the interview/hiring process.
That means, several candidates will be visiting campus and, as part of their interview, will be giving teaching demonstrations.
**It's much better for them to "teach" students rather than other faculty.**

Conversely, it will be helpful for you to see teaching demonstrations and submit your own evaluations (to me).
So, another component of your grade will be your evaluations of _at least_ 2 teaching demonstrations during the quarter.[^demos]

I will keep you all up to date as visit dates get decided; keep an eye out! I don't know the exact dates yet, but they will be Mondays and Fridays at 1pm.
If you can't make any of the visits, we will figure out some other teaching critique activity.

[^demos]: The number of evaluations may change depending on how many visitors we expect.

**Attendance**: See the attendance policy later in this Syllabus.

**Teaching workshop**: In consultation with the instructor, students will design and teach a computing workshop to interested students. I will provide a number of possible opportunities to which groups will be assigned based on student interests. _If you (or your club, etc.) have an organised teaching activity you'd like to set up, that can also count. Please talk to me ASAP if this is the case._

You will work with real workshop hosts to offer this workshop. For example, instructors at Cal Poly, local school teachers, librarians at SLO Public Libraries, or club leaders at Cal Poly.
Part of your grade for this component rests on professional, timely, and consistent communication with these individiuals.

Here are examples of things that might lead to point deductions in this regard:

- Lack of communication with your workshop host. For example, you should meet with your workshop host at least once (their schedule permitting), before your workshop to communicate your plan to them and receive feedback. This can happen during our scheduled lab times.
- Discourteous communication with your workshop host. Remember, they are doing us a favour by letting us get some teaching experience!
- I have individual chats with workshop hosts after your workshops. It's not likely, but evidence of unprofessional conduct during the workshop will lead to point deductions.

{:.callout .note}
I acknowledge that this course involves a number of scheduled time commitments outside of class time.
While the total workload may not significantly exceed that of, say, homeworks in other classes, I know that for those managing external obligations, setting aside time for tutoring and workshops can be challenging.
In these cases, please talk to me.
We can work something out.

<details markdown="1">
  <summary class='emph'>Post-course note: click to see the workshops that were taught this quarter.</summary>
  
  - **Introductory Python** and **Web Scraping with BeautifulSoup**: two teams taught these workshops in sequence to students in JOUR 285 _Introduction to Multimedia Journalism_.
  - **Fun with the Adafruit Playground Express**: one team taught 4, 6, and 12-year olds (!!) at the SLO public library.
  - **Online security and safety**: two teams taught this workshop geared toward elderly individuals at the SLO and Morro Bay public libraries.
  - **Intro to data science with Python**: two teams taught this topic to markedly different audiences. One to high schoolers at SLO high, and one to (mostly statistics) students on the Cal Poly campus, in preparation for the Cal Poly [DataFest](https://earobinson95.github.io/calpoly-datafest/) event.
  - **Making music with Code.org Music Lab**: one team taught this workshop to middle schoolers at Laguna Middle School.
  
</details>

## Course communication

All course communication will take place in Slack. **See Canvas for a link to the workspace and an invite link.**

Please bookmark this Slack workspace, and make sure to do at least one of the following:

- Download the Slack app to your computer or phone, or if you don't like push notifications,
- Sign in to Slack and enable email notifications so that announcements come to your email (if you don't like push notifications, you can set it to email you when there is activity that needs your attention, like announcements).

All communication for this course will take place in the Slack workspace.
Questions that are of general interest to the class should be sent to the `#all` channel.
If you’re not comfortable asking questions publicly, you can DM me, and I might post the question and answer to the public channel if I think it would be helpful.

The Slack workspace also provides a convenient way for you to interact with your teammates, and for me to communicate with each team.

## Attendance policy

What we discuss in lectures will be directly put into practice in your workshop and tutoring sessions. If you miss class, your teaching will be poorer as a result, and **real students** who come to learn from you will be negatively impacted.
Additionally, the course involves **significant teamwork**. Most lab sessions will be devoted to this teamwork. If you miss lab sessions, you would be letting your teammates down.

**All this adds up to: I strongly recommend that you come to class!**

Here's the policy:

- I will take roll in most class sessions. 5% of your final course grade is based on attendance.
- Additionally, there will often be in-class discussions with deliverables that cannot be completed outside of class.
- After workshop teams have been formed and your team begins preparing for the workshop (this will happen around week 3), _attendance in lab is mandatory for the rest of the quarter_. Lab sessions are the primary time when your team can work together on your workshop, and is also when I can get get visibility into the team's progress and provide feedback.
  - At minimum, if you cannot come to lab, let me and your teammates know.

In case of emergencies, don't worry about attendance, and talk to me when you are able to do so.

## Accessibility

I know that everyone is unique, and I may have unintentionally overlooked something that limits access to some materials or activities. Please let me know if you cannot access any content. If you need additional accommodations to complete the required course work, please contact me as soon as possible! You should also contact the [Disability Resource Center](https://drc.calpoly.edu/).

## Classroom climate

All members of this class are expected to contribute to a respectful, welcoming, and inclusive environment.
I expect us to strive to build a community in which:

- We are not code snobs. We do not assume knowledge or imply there are things that somebody should know.
- After our own work is complete, we support one another's learning by sharing our expertise generously if invited to do so.
- We consistently make the effort to actively recognise and validate multiple types of contributions to a positive classroom environment.
- We strive to contribute meaningfully to group work.

## Course schedule

This is a tentative course schedule meant to give a bird's eye view of the course.
If things change (and they will!), I will update this table.

(For instance, it's very likely readings for later weeks will change based on class discussions.)

Assignments will also appear in Canvas with deadlines and submission endpoints.
If deadlines here conflict with deadlines in Canvas, **_deadlines in Canvas take precedence_**.

In addition to the assignments shown below, there will be occasional pre-class readings and frequent in-class activities that will appear in Canvas.

| WEEK | DATE                  | TOPIC                                                                                           | READINGS / RESOURCES<br><small>(Unlinked items are available in Canvas)</small>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | ASSIGNMENT DUE/RELEASED                                                                                                                                                                                               |
| :--: | --------------------- | ----------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
|  1   | Tuesday, January 6    | Course intro + computing for all                                                                | _[Good (and Bad) Reasons to Teach All Students Computer Science](https://link-springer-com.ezproxy.lib.calpoly.edu/chapter/10.1007/978-3-319-54226-3_2)_ (Lewis)<br><br>Class materials: [Slides](https://cpslo-my.sharepoint.com/:p:/g/personal/ayaank_calpoly_edu/EfJUOPJQtQ9Gka4T7vgCtlkBe7JViKINrU_5nU9uRaROlA?e=7wefuv)                                                                                                                                                                                                                                                                                                         | <span class='due'/> Survey about workshop topic interests ([Canvas]({{assignments}}))                                                                                                                                 |
|      | Thursday, January 8   | How people learn                                                                                | _How Can I Teach Students the Skills They Need When Standardized Tests Require Only Facts?_ (Willingham)<br><br>_Decoding Your Confusion While Coding_ (Hermans)<br><br>Class materials: [Slides](https://cpslo-my.sharepoint.com/:p:/g/personal/ayaank_calpoly_edu/Ef5RJrGfwoFIqS6ZvuRzZHkBU0CV5QrcbKhd0aG_rbEfSw?e=MkEpHo)                                                                                                                                                                                                                                                                                                         | <span class='released'/> [Shadowing tutors: sign-up and reflection](shadowing)<br><span class='released' /> [The programming process](programming-process)                                                            |
|  2   | Tuesday, January 13   | Mental models, notional machines, and misconceptions                                            | _Getting better at solving programming problems_ (Hermans)<br><br>Class materials: [Slides](https://cpslo-my.sharepoint.com/:p:/g/personal/ayaank_calpoly_edu/EXY17dbg_URNj8ZVT-P97pcBqaoXepGQOpOg4HoaRq4NBw?e=oZ9K3w)                                                                                                                                                                                                                                                                                                                                                                                                               |                                                                                                                                                                                                                       |
|      | Thursday, January 15  | Learning to program                                                                             | _[The Buggy Path to the Development of Programming Expertise](https://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.487.879&rep=rep1&type=pdf)_ (Pea, Soloway & Spohrer)<br><br>Class materials: [Slides](https://cpslo-my.sharepoint.com/:p:/g/personal/ayaank_calpoly_edu/Ef2R0mx1BhVBrTY10OCyrsQBRrzzHCngT32kvp9jCq9rhA?e=hzXQTX)                                                                                                                                                                                                                                                                                             | <span class='due'/> [Programming process reflection](programming-process)<br><br> <span class='released'/> [Workshop initial proposal](workshop-proposal)<br> <span class='released'/> [Educational data mining](edm) |
|  3   | Tuesday, January 20   | <span class='emph'>**NO CLASS**</span>                                                                                    | <span class='emph'>**CAMPUS FOLLOWS A MONDAY SCHEDULE**</span>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |                                                                                                                                                                                                                       |
|      | Thursday, January 22  | Tutoring                                                                                        | _[What's known about tutoring](http://jorendorff.github.io/hackday/2013/tutoring/)_ (Orendorff)<br><br>Class materials: [Slides](https://cpslo-my.sharepoint.com/:p:/g/personal/ayaank_calpoly_edu/ER6rWmqu0JFIuk5vee7GMGsBYVBPyOWoJnBSyQmvysLSww?e=BJx7UH)                                                                                                                                                                                                                                                                                                                                                                          | <span class='released'/> [Active tutoring sign-up and reflection](./active-tutoring)                     |
| 4    | Tuesday, January 27  | Classroom instruction, Teacher perspectives                               | _[The 2 Sigma Problem: The search for methods of group instruction as effective as one-on-one tutoring](https://web.mit.edu/5.95/www/readings/bloom-two-sigma.pdf)_ (Bloom)<br><br>And counterpoint:<br>_[Two-Sigma Tutoring: Separating Science Fiction from Science Fact](https://www.educationnext.org/two-sigma-tutoring-separating-science-fiction-from-science-fact/)_ (von Hippel)<br><br>Class materials: [Slides](https://cpslo-my.sharepoint.com/:p:/g/personal/ayaank_calpoly_edu/Ecmybjj-CfFJi5u0newfnJsBfyeva9dr25a5JOP0viLzqg?e=A91zaS)                                                                                                         |  <span class='due'/> [Shadowing tutors: reflection](shadowing)<br><small>Though the "due date" is set to this day, I recommend writing your reflection soon after the session you observe.</small>                                                                                                                                                                                                                     |
|     | Thursday, January 29  | Instructional design                                                                            | Chapters from _[Teaching Tech Together](https://teachtogether.tech/en/index.html)_ (Wilson)<br><br>Class materials: [Slides](https://cpslo-my.sharepoint.com/:p:/g/personal/ayaank_calpoly_edu/Ec8JLOHRtIBCoZ5IL5bpAdkBDBxyVSflAKzjEr9Wlum7kw?e=gGOP9y)                                                                                                                                                                                                                                                                                                                                                                              |                                                                                                                                                                                  |
| 5    | Tuesday, February 3   | AI-based code synthesisers in computing pedagogy                                                | _[Exploring the Design Space of Cognitive Engagement Techniques with AI-Generated Code for Enhanced Learning](https://austinhenley.com/pubs/Kazemitabaar2025IUI_AIFriction.pdf)_ (Kazemitabar, Huang, Suh, Henley, Grossman)<br><br>_[How AI Impacts Skill Formation](https://arxiv.org/pdf/2601.20245) (Shen & Tamkin)—a pre-print from Anthropic ([abridged write-up](https://www.anthropic.com/research/AI-assistance-coding-skills))_, and _[Reviewing "How AI Impacts Skill Formation"](https://jenniferplusplus.com/reviewing-how-ai-impacts-skill-formation/)_ (Moore)—a review of the paper<br><br>Class materials: [Slides](https://cpslo-my.sharepoint.com/:p:/g/personal/ayaank_calpoly_edu/EdBzOaNb0lRNvr18XPW92oEBbEesQ-2pG8kJhYEdxFI-uQ?e=YX3czi)                                                                      |                                                                                                                                   |
|     | Thursday, February 5   |  Metacognitive scaffolding                                                                                               | Class materials: [Notes](../coursenotes/metacognitive-scaffolding)<br><small>These notes were written pre-LLMs, but the skills involved are still worth discussing.</small>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |                                                                                                                                                                  |
| 6    | Tuesday, February 10  | |  <span class='emph'>**EDUCATIONAL DATA MINING PRESENTATIONS**</span> | <span class='due'/> [Active tutoring reflections](./active-tutoring)<br><small>As usual, I recommend writing this reflection after your tutoring session, and not waiting till this due date.</small><br><br><span class='due' /> Educational data mining reports                                                                                                                                                                                                                      | 
|     | Thursday, February 12  | Programming language syntax, behaviour, and environments<br><br>Pedagogic programming languages | _[What is a Pedagogic IDE?](https://parentheticallyspeaking.org/articles/pedagogic-ide/)_ (Krishnamurthi)<br><br>_[Hedy: A Gradual Language for Programming Education](https://hedycode.com/research/Hedy_A_Gradual_Language_for_Programming_Education_2020.pdf)_ (Hermans). Also, [try the Hedy language](https://hedycode.com/)<br><br>The Pyret programming language. [Why Pyret?](https://www.pyret.org/pyret-code/) and [Examples](https://www.pyret.org/#examples)<br><br>Class materials: [Slides](https://cpslo-my.sharepoint.com/:p:/g/personal/ayaank_calpoly_edu/EeLAwsQrpgRKuOGwzgFL3r4BaGT-ExNVkzQb1rTSr0IANQ?e=AkZvwU) |  | 
| 7   | Tuesday, February 17  | Learning a 2nd PL                                                                               | _[Understanding Conceptual Transfer for Students Learning New Programming Languages](https://www.researchgate.net/publication/343517536_Understanding_Conceptual_Transfer_for_Students_Learning_New_Programming_Languages)_ <br>[📽️ Talk recording](https://www.youtube.com/watch?v=g9V5VdjprT8) (Tshukudu & Cutts)<br><br>Class materials: [Notes](../coursenotes/learning-a-second-programming-language)                                                                                                                                                                                                                           | Workshop proposal presentations begin                                                                                                                                                                                                                      |
|    | Thursday, February 19  | <span class='emph'>**NO CLASS**</span>                                                                               | <span class='emph'>**INSTRUCTOR IS TRAVELLING**</span>                                                                                                                         |                                                                                                                                                                                                                       |
| 8  | Tuesday, February 24     | Spoken languages and programming languages                                                      | _[Native Language's Effect on Java Compiler Errors](https://dl.acm.org/doi/10.1145/3291279.3339423)_ (Reestman & Dorn)<br>_[Relating Natural Language Aptitude to Individual Differences in Learning Programming Languages](https://www.nature.com/articles/s41598-020-60661-8)_ (Prat, Madhyashtha, Mottarella, & Kuo)<br><br>Class materials: [Slides](https://cpslo-my.sharepoint.com/:p:/g/personal/ayaank_calpoly_edu/Eb5ShDB26MNKhBKS1X7d1XYBWlH-djSBtmmVFAenlSjtqQ?e=ebwD1t)                                                                                                                                                  |                                                                                                                                                                                                                       |
|      | Thursday, February 26 | Diversity barriers                                                                              | _[Diversity barriers to K–12 computer science education: structural and social](https://dl.acm.org/doi/abs/10.1145/3017680.3017734?casa_token=3QgXuDvo3iQAAAAA:ZSC-aqyhzpBZaY4sNPwYOt_S1C5fLY_u-Rfi4MBecMEGQQu4A9Bvx7vR0DNH4vUDSH5F9a7YJtdSBA)_ (Wang & Moghadam)<br>_[An Equity-minded Assessment of Belonging among Computing Students at Cal Poly](https://digitalcommons.calpoly.edu/theses/2379/)_ (Stewart)<br><br>Class materials: [Slides](https://cpslo-my.sharepoint.com/:p:/g/personal/ayaank_calpoly_edu/EQ1hJdH_Xp1AtcCRpm5bR24BP1sGf-nnq6D8McLiNI3Ngg?e=XLHrHz)                                |                                                                                                                                                                                                                       |
| 9    | Thursday, March 1  | Code comprehension in large codebases                                                                               | _[Needles in a Haystack: Student Struggles with Working on Large Code Bases](https://dl.acm.org/doi/epdf/10.1145/3702652.3744218)_ (Shah, Rexin, Chernova, Allen-Perez, Griswold, Soosai Raj)<br><br>_[Code Review Comprehension: Reviewing Strategies Seen Through Code Comprehension Theories](https://arxiv.org/pdf/2503.21455)_ (Gonçalves, Rani, Storey, Spinellis, Bacchelli)<br><br>Class materials: [Slides](https://cpslo-my.sharepoint.com/:p:/g/personal/ayaank_calpoly_edu/IQBVvAx5wwnwQblYyHETMZBjAVYOQDm2iqUeRM8I5_jeASo?e=ChZ73J)                                                                                                                                                                                                                       |
|     | Thursday, March 3      | Spatial skills                                                                                  | _[Investigating the Relationship Between Spatial Skills and Computer Science](https://doi.org/10.1145/3230977.3230990)_ (Parkinson & Cutts)<br>_[Spatial Encoding Strategy Theory: The Relationship Between Spatial Skill and STEM Achievement](https://doi.org/10.1145/3291279.3339414)_ (Margulieux)<br><br>Class materials: [Notes](..//coursenotes/spatial-skills/)                                                                                                                                                                                                                                                              |                                                                                                                                                                                                                       |
|  10    | Tuesday, March 10     | Psychology and motivation on software teams                                        | _[Developer Thriving: Four Sociocognitive Factors That Create Resilient Productivity on Software Teams](https://ieeexplore.ieee.org/abstract/document/10491133)_ Hicks, Lee, and Ramsey.<br><br>_[Understand Team Effectiveness](https://rework.withgoogle.com/intl/en/guides/understanding-team-effectiveness)_ <br><br>Class materials: [Slides](https://cpslo-my.sharepoint.com/:p:/g/personal/ayaank_calpoly_edu/IQDIfmokcGOBRKSM5TBXfwvnAQQdx2s19MTEqtbg7nznl-c?e=lDaxTY)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |                                                                                                                                                                                                                       |
|      | Thursday, March 12    | <b class='emph'>NO CLASS</b>                                                  | <b class='emph'>ALL THE BEST FOR FINALS</b>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | <span class='due'/> Workshop final reflection <small>(Submitted individually and best written soon after your workshop.)</small><br><br><span class='due'/> Self and peer evaluation



## Acknowledgement

Early versions of this course were based on [Zoë Wood](http://users.csc.calpoly.edu/~zwood/)’s [initial offering of the course](https://users.csc.calpoly.edu/~zwood/teaching/csc313/313SyllabusDraft.pdf).

</div>

</div>

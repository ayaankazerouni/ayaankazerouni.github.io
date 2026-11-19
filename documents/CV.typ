// ── Page setup ───────────────────────────────────────────────────────────────
#set page(paper: "us-letter", margin: 0.5in)
#set text(font: "Avenir Next", size: 9pt)
#set par(spacing: 0.75em)
// Lighter *strong*: regular (400) + 200 = demibold (600) instead of bold (700).
#set strong(delta: 200)

// ── Helpers ───────────────────────────────────────────────────────────────────
#let award(x) = text(fill: rgb("#7F00FF"), weight: "semibold")[#x]

// Shared date gutter. Fixed em (not fr) so wrapping is inspectable: the widest
// cell in any entry type is "09/2020–08/2026" at 8.1em.
#let date-col = 8.5em
#let date-gutter = 1em
// Advisee names must not wrap; widest ("Sinchana Shivaprasad") is 9.93em.
#let name-col = 10.5em

// ── Blocks ────────────────────────────────────────────────────────────────────

#let cv-name = {
  grid(
    columns: (6fr, auto),
    align(left, [
      #text(size: 20pt, weight: "semibold")[Ayaan M. Kazerouni] \ \
      #text(size: 10pt)[
        #link("https://ayaankazerouni.org", "ayaankazerouni.org") |
        #link("mailto:ayaank@calpoly.edu", "ayaank@calpoly.edu")
      ]
    ]),
    align(right, emph(text(size: 1em)[
      Associate Professor \
      Computer Science and Software Engineering \
      Noyce School of Applied Computing \
      California Polytechnic State University (Cal Poly)
    ]))
  )
  v(0.2em)
  line(length: 100%)
}

#let student-author(name) = {
  underline(name, offset: 2pt)
}

#let section(title, note: none) = {
  v(1em)
  [
    #text(size: 1.1em, weight: "semibold", smallcaps(title))
    #if note != none { [ #h(1fr) #text(size: 0.9em)[#emph(note)] ] }
  ]
  line(length: 100%, stroke: (thickness: 0.5pt, paint: gray))
}

#let subsection(title) = {
  v(0.3em)
  text(size: 1.1em, style: "italic")[#title]
  line(length: 100%, stroke: (paint: gray, thickness: 0.3pt))
}

// \ShortRelevantEntry{title}{date}{org}
#let employment-entry(title, date, org) = {
  grid(
    columns: (date-col, 1fr),
    align: (right, left),
    column-gutter: date-gutter,
    inset: (y: 0.1em),
    date,
    [
      #text(weight: "semibold")[#title] \ #text(size: 0.9em)[#emph(org)]
    ]
  )
}

#let teaching-entry(title, date, org) = {
  grid(
    columns: (date-col, 1fr),
    align: (right, left),
    column-gutter: date-gutter,
    inset: (y: 0.1em),
    date,
    title
  )
}

// \ReallyShortRelevantEntry{bold}{italic}{date}
#let service-entry(role, desc, date) = {
  grid(
    columns: (date-col, 1fr),
    align: (right, left),
    column-gutter: date-gutter,
    inset: (y: 0.1em),
    date, [#role. #text(size: 0.9em)[#emph[#desc].]]
  )
}

// \EducationEntry{degree}{dates}{school}{details}
#let education-entry(degree, dates, school) = {
  grid(
    columns: (date-col, 12em, 0.5fr),
    align: (right, left, left),
    column-gutter: date-gutter,
    inset: (y: 0.1em),
    dates, degree, school
  )
}

// \PeerReviewedPublicationEntry{title}{authors}{venue}{abbrev}{date}{note?}
#let pub-entry(title, authors, venue, abbrev, date, note: none, doi: none) = {
  grid(
    columns: (date-col, 1fr),
    align: (right, left),
    column-gutter: date-gutter,
    inset: (y: 0.1em),
    [#abbrev #date],
    [#emph(title). #venue.\ #text(size: 0.9em)[#authors.] #if note != none { [#note.] } #if doi != none { text(size: 0.9em)[DOI: #underline(link("https://doi.org/" + doi, doi))] }]
  )
}

// \GrantProposalEntry{title}{authors}{year}{details}
#let grant-entry(title, authors, year, details) = {
  grid(
    columns: (date-col, 1fr),
    align: (right, left),
    column-gutter: date-gutter,
    inset: (y: 0.1em),
    year, [#emph(title). #authors. #details.]
  )
}

#let thesis-entry(author, year, institution, title: none) = {
  // year,type author title institution
  if title != none {
    grid(
      columns: (date-col, name-col, 1fr, 4em),
      align: (right, left, left, left),
      column-gutter: date-gutter,
      inset: (y: 0.1em),
      year, [#student-author(author)], [#text(size: 0.95em)[#emph(title)]], institution
    )
  } else {
    grid(
      columns: (date-col, name-col, 1fr),
      align: (right, left, left),
      column-gutter: date-gutter,
      inset: (y: 0.1em),
      year, [#student-author(author)], institution
    )
  }
}

// \ShortAwardEntry{title}{date}{org}
#let award-entry(title, date, org) = {
  grid(
    columns: (date-col, 1fr),
    align: (right, left),
    column-gutter: date-gutter,
    inset: (y: 0.1em),
    date, [#title. #text(size: 0.9em)[#emph(org)]]
  )
}

// ── Document ──────────────────────────────────────────────────────────────────

#cv-name

#section("Employment")

#employment-entry("Associate Professor", "08/2026–present", "Computer Science and Software Engineering, Cal Poly, San Luis Obispo, CA")

#employment-entry("Assistant Professor", "09/2020–08/2026", "Computer Science and Software Engineering, Cal Poly, San Luis Obispo, CA")

#employment-entry("Summer Adjunct Faculty", "05/2020–08/2020", "Computer Science, Virginia Tech, Blacksburg, VA")

#employment-entry("Front-End Software Development Intern", "06/2017–08/2017", "Zappos.com, Las Vegas, NV")

#employment-entry("Graduate Research Assistant", "08/2015–04/2020", "Virginia Tech, Blacksburg, VA")

#section("Education")

#education-entry(
  "PhD Computer Science", "2015–2020", "Virginia Tech, Blacksburg, VA"
)

#education-entry(
  "BS Computer Science", "2011–2015", "University of West Georgia, Carrolton, GA",
)

#section("Peer-Reviewed Publications", note: [#student-author("Underlined") author names indicate student authors.])

#subsection("Journal Papers")

#pub-entry(
  "The Benefits of Socially Responsible Computing in Early Computing Courses: A Multi-Institutional Study at Primarily-Undergraduate Hispanic-Serving Institutions",
  [*A. M. Kazerouni*, M. Lee, A. Hubbard Cheuoua, A. Gautam, S. Hooshmand, P. S. Inventado, E. E. Kang, J. Lehr, Y. Sun, K. A. Wortman, I. Yoon, Z. Wood],
  "ACM Transactions on Computing Education", "TOCE", "2025",
  doi: "10.1145/3727988",
)

#pub-entry(
  "Recommendations for Improving End-User Programming Education: A Case Study with Undergraduate Chemistry Students",
  [#student-author("W. Fuchs"), A. McDonald, A. Gautam, *A. M. Kazerouni*],
  "ACS Journal of Chemical Education", "J Chem Ed", "2024",
  doi: "10.1021/acs.jchemed.4c00219",
)

#pub-entry(
  "A Model of How Students Engineer Test Cases With Feedback",
  [#student-author("A. Shin"), *A. M. Kazerouni*],
  "ACM Transactions on Computing Education", "TOCE", "2023",
  doi: "10.1145/3628604",
)

#pub-entry(
  "Fast and Accurate Incremental Feedback for Students' Software Tests Using Selective Mutation Analysis",
  [*A. M. Kazerouni*, J. C. Davis, A. Basak, C. A. Shaffer, F. Servant, S. H. Edwards],
  "Journal of Systems and Software", "JSS", "2021",
  doi: "10.1016/j.jss.2021.110905",
)

#subsection("Conference Papers")

#pub-entry(
  "Human-Centered Process-Oriented Intro to Programming (to appear)",
  [A. G. Soosai Raj, *A. M. Kazerouni*, L. Perlmutter, #student-author("A. Chao"), #student-author("H. Li"), #student-author("K. Ma"), #student-author("A. Nazzal"), M. Kallia],
  "ACM Technical Symposium on Computer Science Education", "SIGCSE", "2027",
)

#pub-entry(
  "Beyond the Final Code: Understanding Student Programming Behaviors through Process Journals",
  [#student-author("A. Chao"), #student-author("H. Li"), #student-author("K. Ma"), #student-author("A. Nazzal"), *A. M. Kazerouni*, L. Perlmutter, A. G. Soosai Raj],
  "Koli Calling International Conference on Computing Education Research", "Koli Calling", "2026",
  note: award("Honorable Mention"),
  doi: "10.1145/3856208.3856238",
)

#pub-entry(
  "Peer Networks and Instructor Resources as Complementary Support Systems in Six CS Classrooms",
  [#student-author("N. Ravetch"), #student-author("N. Nayman"), #student-author("J. Herberger"), T. Migler, *A. M. Kazerouni*],
  "ACM Conference on Innovation and Technology in Computer Science Education", "ITiCSE", "2026",
  doi: "10.1145/3803400.3809329",
)

#pub-entry(
  "What Topic Domains Interest Students in Socially Responsible Computing Coursework?",
  [*A. M. Kazerouni*, Z. Agha, A. Hubbard Cheuoua, M. Lee, J. Lehr, I. Yoon, Z. Wood],
  "Koli Calling International Conference on Computing Education Research", "Koli Calling", "2025",
  doi: "10.1145/3769994.3770030",
)

#pub-entry(
  "Reflecting on Practices to Integrate Socially Responsible Computing in Introductory Computer Science Courses",
  [K. Wortman, A. Gautam, S. Hug, P. Salvador Inventado, *A. M. Kazerouni*, J. Lehr, K. Sood, Z. Wood],
  "ACM Technical Symposium on Computer Science Education", "SIGCSE", "2025",
  doi: "10.1145/3641554.3701962",
)

#pub-entry(
  "Socially Responsible Computing: Promoting Latinx Student Retention Via Community Engagement in Early Computer Science Courses",
  [D. M. Krum, Z. Wood, E. Kang, *A. M. Kazerouni*, J. L. Lehr, S. Hug, P. S. B. Inventado, F. Tang, I. Yoon, A. Kulkarni, Y. Sun, M. Beheshti, A. Gautam, A. Hubbard Cheuoua, S. Hooshmand, K. A. Wortman],
  "ASEE Annual Conference and Exposition", "ASEE", "2024",
  doi: "10.18260/1-2--46968",
)

#pub-entry(
  "Community Action Computing: A Data-centric CS0 Course",
  [*A. M. Kazerouni*, J. Lehr, Z. Wood],
  "ACM Technical Symposium on Computer Science Education", "SIGCSE", "2024",
  doi: "10.1145/3626252.3630807",
)

#pub-entry(
  "Exploring the Impact of Cognitive Awareness Scaffolding for Debugging in an Introductory Computer Science Class",
  [#student-author("J. Lee"), *A. M. Kazerouni*, C. Siu, T. Migler],
  "ACM Technical Symposium on Computer Science Education", "SIGCSE", "2023",
  doi: "10.1145/3545945.3569871",
)

#pub-entry(
  "Patterns of Academic Help-Seeking in Undergraduate Computing Students",
  [#student-author("A. Doebling"), *A. M. Kazerouni*],
  "Koli Calling Conference on Computing Education Research", "Koli Calling", "2021",
  doi: "10.1145/3488042.3488052",
)

#pub-entry(
  "The Impact of Programming Project Milestones on Procrastination, Project Outcomes, and Course Outcomes: A Quasi-Experimental Study in a Third-Year Data Structures Course",
  [C. A. Shaffer, *A. M. Kazerouni*],
  "ACM Technical Symposium on Computer Science Education", "SIGCSE", "2021",
  doi: "10.1145/3408877.3432356",
)

#pub-entry(
  "Exploring the Bug Investigation Techniques of Intermediate Student Programmers",
  [R. S. Mansur, *A. M. Kazerouni*, S. H. Edwards, C. A. Shaffer],
  "Koli Calling Conference on Computing Education Research", "Koli Calling", "2020",
  doi: "10.1145/3428029.3428040",
)

#pub-entry(
  "ProgSnap2: A Flexible Format for Programming Process Data",
  [T. Price, D. Hovemeyer, K. Rivers, A. C. Bart, G. Gao, *A. M. Kazerouni*, B. Becker, A. Petersen, L. Gusukuma, S. H. Edwards, D. Babcock],
  "ACM Conference on Innovation and Technology in Computer Science Education", "ITiCSE", "2020",
  doi: "10.1145/3341525.3387373",
)

#pub-entry(
  "Testing Regex Generalizability And Its Implications: A Large-Scale Many-Language Measurement Study",
  [J. C. Davis, D. Moyer, *A. M. Kazerouni*, D. Lee],
  "IEEE/ACM International Conference on Automated Software Engineering", "ASE", "2019",
  doi: "10.1109/ase.2019.00048",
)

#pub-entry(
  "The Relationship Between Practicing Short Programming Exercises and Exam Performance",
  [S. H. Edwards, Krishnan P. Murali, *A. M. Kazerouni*],
  "ACM Global Computing Education Conference", "CompEd", "2019",
  doi: "10.1145/3300115.3309525",
)

#pub-entry(
  "Assessing Incremental Testing Practices and Their Impact on Project Outcomes",
  [*A. M. Kazerouni*, C. A. Shaffer, S. H. Edwards],
  "ACM Technical Symposium on Computer Science Education", "SIGCSE", "2019",
  note: award("2nd Best Research Paper"),
  doi: "10.1145/3287324.3287366",
)

#pub-entry(
  "Quantifying Incremental Development Practices and Their Relationship to Procrastination",
  [*A. M. Kazerouni*, C. A. Shaffer, S. H. Edwards],
  "ACM Conference on International Computing Education Research", "ICER", "2017",
  doi: "10.1145/3105726.3106180",
)

#pub-entry(
  "DevEventTracker: Tracking Development Events to Assess Incremental Development and Procrastination",
  [*A. M. Kazerouni*, C. A. Shaffer, T. S. Hall, S. H. Edwards],
  "ACM Conference on Innovation and Technology in Computer Science Education", "ITiCSE", "2017",
  doi: "10.1145/3059009.3059050",
)

#subsection("Workshop Papers")

#pub-entry(
  [#smallcaps("INKLING"): Exploring How Students Design Visualizations with Integrated Sketching, Natural Language, and Code Editing],
  [#student-author("S. Fisher"), A. P. Wright, *A. M. Kazerouni*],
  "4th IEEE VIS Workshop on Visualization Education, Literacy, and Activities",
  "EduVis", "2026"
)

#subsection("Abstracts and Posters")

#pub-entry(
  "Toward Continuous Assessment of the Programming Process",
  [*A. M. Kazerouni*],
  "ACM Conference on International Computing Education Research-Doctoral Consortium", "ICER", "2019",
  doi: "10.1145/3291279.3339429",
)

#pub-entry(
  "Student Debugging Practices and Their Relationships with Project Outcomes",
  [*A. M. Kazerouni*, R. S. Mansur, S. H. Edwards, C. A. Shaffer],
  "ACM Technical Symposium on Computer Science Education-Poster", "SIGCSE", "2019",
  doi: "10.1145/3287324.3293794",
)

#pub-entry(
  "Toward Continuous Assessment of the Programming Process (Abstract Only)",
  [*A. M. Kazerouni*],
  "ACM Technical Symposium on Computer Science Education-Student Research Competition", "SIGCSE", "2018",
  note: award("1st Place"),
  doi: "10.1145/3159450.3162337",
)

#section("Funding", note: [#student-author("Underlined") author names indicate student co-authors.])

#subsection("External")

#grant-entry(
  "NSF #2216687: Collaborative Research: BPC-A: Socially Responsible Computing: Promoting Latinx Student Retention Via Community Engagement in Early CS Courses",
  [Z. Wood, *A. M. Kazerouni*, J. Lehr, M. Beheshti, S. Hooshmand, P. S. Inventado, K. Sood, K. Wortman, E. E. Kang, D. Krum, Y. Sun, F. Tang, I. Yoon, A. Kulkarni, A. Gautam],
  "2022",
  "Total amount: $1.8M, Cal Poly share: $513K",
)

#subsection("Internal")

#grant-entry(
  "Noyce School of Applied Computing at Cal Poly: Exploring the Design Space of Multimodal Visualization Authoring: Integrating Sketching, Code Editing, and Natural Language",
  [*A. M. Kazerouni*, A. P. Wright],
  "2026",
  "Amount: $33,887.60"
)

#grant-entry(
  "Summer Undergraduate Research Program: A Comparative Analysis of Software Test Adequacy Criteria",
  [*A. M. Kazerouni*, J. B. Clements],
  "2024",
  "2 funded undergraduate students",
)

#grant-entry(
  "Baker Koob Endowments: A Cost Effective Way of Measuring Software Test Success",
  [#student-author("A. Shin"), *A. M. Kazerouni*],
  "2022",
  "Amount: $1400",
)

#grant-entry(
  "Summer Undergraduate Research Program: Computer-supported Programmer Cognition",
  [*A. M. Kazerouni*],
  "2022",
  "1 funded undergraduate student",
)

#section("Graduate Advising (Master's Theses)")

#subsection("As committee chair")

#thesis-entry([Parshana Sekhon], [2026], [Cal Poly], title: [Challenges and Opportunities of Mastery-Based Learning: A Student-Centered Analysis in an Upper-Division Programming Languages Course])

#thesis-entry([Sinchana Shivaprasad], [2026], [Cal Poly], title: [Pedagogical Perspectives of Practitioner-Turned-Instructors in Upper-Division Computer Science Courses])

#thesis-entry([Nathan McCutchen], [2026], [Cal Poly], title: [Designing for Trust in Chat-Based Question Answering Systems: An Exchange-Based Retrieval Approach])

#thesis-entry([Ashton Alonge], [2025], [Cal Poly], title: [A Comparative Evaluation of Feedback Strategies for Enhancing Student Software Test Suite Writing Outcomes])

#thesis-entry([Noah Ravetch], [2024], [Cal Poly], title: [Peer Collaborative Networks in Undergraduate Computing Classrooms])

#thesis-entry([Saurav Gupta], [2024], [Cal Poly], title: [A Comparative Study of the NPM, PyPI, Maven, and RubyGems Open-source Communities])

#thesis-entry([Austin Shin], [2022], [Cal Poly], title: [Examining Introductory Computer Science Student Cognition When Testing Software Under Different Test Adequacy Criteria])

#thesis-entry([Will Fuchs], [2022], [Cal Poly], title: [Evaluating and Improving Domain-Specific Programming Education: A Case Study with Cal Poly Chemistry Courses])

#thesis-entry([August Doebling], [2022], [Cal Poly], title: [Patterns Of Academic Help-Seeking In Undergraduate Computing Students])

#thesis-entry([Kevin Yoo], [2021], [Cal Poly], title: [A Study of Non-computing Majors' Growth Mindset, Self-efficacy and Perceived CS Relevance in CS1])

#subsection("As committee member")

#thesis-entry([Tymon Vu], [2026], [Cal Poly])

#thesis-entry([Maggie Yang], [2025], [Cal Poly])

#thesis-entry([Jamie Luna], [2025], [Cal Poly])

#thesis-entry([Jordan Chew], [2024], [Cal Poly])

#thesis-entry([Nikhil Sridhar], [2023], [Cal Poly])

#thesis-entry([Asmita Sharma], [2023], [Cal Poly])

#thesis-entry([Martin Jiang], [2023], [Cal Poly])

#thesis-entry([Jiwon Lee], [2022], [Cal Poly])

#thesis-entry([Caleb Watts], [2021], [Cal Poly])

#thesis-entry([Kylan Stewart], [2021], [Cal Poly])

#thesis-entry([Justin Evans], [2021], [Cal Poly])


#section("Honors and Awards")

#award-entry("Honorable Mention for Best Paper", "2026", "Koli Calling International Conference on Computing Education Research (3/49 papers recognized)")

#award-entry("Cal Poly's nominee for the CSU Wang Family Award for Excellence in Teaching", "2025", "1 nominee per CSU campus.")

#award-entry("Outstanding Reviewer Award", "2024", "Koli Calling International Conference on Computing Education Research (6/80 reviewers)")

#award-entry("Don and Paula Heye Annual Award for Outstanding Club Advisor (Hack4Impact)", "2024", "College of Engineering, Cal Poly")

#award-entry("Graduate Student Service Award", "2020", "Department of Computer Science, Virginia Tech")

#award-entry("2nd Best Paper Award, Research Track", "2019", "ACM SIGCSE Technical Symposium")

#award-entry("1st Place in the SIGCSE Student Research Competition", "2018", "ACM SIGCSE Technical Symposium")

// #award-entry("2nd Place in the College of Math and Science Research Day", "2015", "University of West Georgia")

// #award-entry("Outstanding Honors Sophomore, Junior", "2013, 2014", "University of West Georgia")


#section("Teaching")

#subsection("Cal Poly")

#teaching-entry("CSC 123 Introduction to Community-Action Computing", "2022–2026", "Cal Poly")
#teaching-entry("CSC 203 Project-based Object-oriented Programming and Design", "2020–2026", "Cal Poly")
#teaching-entry("CSC 305 Individual Software Design and Development", "2023, 2024", "Cal Poly")
#teaching-entry("CSC 307 Introduction to Software Engineering", "2021", "Cal Poly")
#teaching-entry("CSC 313 Teaching Computing", "2021–2026", "Cal Poly")
#teaching-entry("CSC 477 Scientific and Information Visualization", "2025–2026", "Cal Poly")
#teaching-entry("CSC 513 Computing Education Research and Practice (Graduate)", "2021, 2023", "Cal Poly")
#teaching-entry("CSC 590 Thesis Seminar (Graduate)", "2023", "Cal Poly")

#subsection("Virginia Tech")

#teaching-entry("CS 3114 Data Structures & Algorithms", "2018, 2019, 2020", "Virginia Tech")
#teaching-entry("CS 3114 Data Structures & Algorithms (Teaching Assistant)", "2015–2016", "Virginia Tech")

#section("Service")

#subsection("External Service")

#service-entry([Program Committee], [International Computing Education Research Conference (ICER)], "2022–present")

#service-entry([Program Committee], [Koli Calling Computing Education Research Conference (Koli Calling)], "2024–present")

#service-entry([Program Committee (Senior PC 2022–2024)], [SIGCSE Technical Symposium], "2019–2024, 2026")


#service-entry([Reviewer], [Computer Science Education, Taylor & Francis], "2024")

#service-entry([Reviewer], [Transactions on Computing Education (TOCE)], "2022–present")

#service-entry([Program Committee], [Conference on Innovation and Technology in Computer Science Education (ITiCSE)], "2020, 2022, 2023")

#service-entry([Artefact Evaluation Program Committee], [Foundations of Software Engineering Conference (FSE)], "2020–2022")

#service-entry([Artefact Evaluation Program Committee], [Automated Software Engineering Conference (ASE)], "2021, 2022")

#service-entry([Demonstrations Track Program Committee], [International Conference on Software Engineering (ICSE)], "2021")

#service-entry([Working Group Member], [CSSPLICE Programming Snapshot Data Working Group], "2018–2022")


#service-entry([Reviewer], [ASEE Computers in Education Journal], "2020")

#subsection("Institutional Service")

#service-entry([CSSE tutoring centre advisor], [Cal Poly], "2021–present")

#service-entry([Club advisor: Hack4Impact], [Cal Poly], "2021–present")

#service-entry([General Engineering Director Search Committee Member], [Cal Poly], "2024")

#service-entry([CSSE Lecturer Search Committee Member], [Cal Poly], "2024")

#service-entry([CSSE Tenure-track Search Committee Member], [Cal Poly], "2021")

#service-entry([President, Vice President, Treasurer/Cofounder], [CS Graduate Student Council, Virginia Tech], "2017–2020")


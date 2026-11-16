---
layout: page
title: Teaching
permalink: /teaching
---

## At Cal Poly

{% assign courses=site.data.courses | where: "hidden", undefined | sort: "id" %}
<ul>
{% for course in courses %}
<li>
{% if course.latest %}
<a href='courses/{{course.id}}/{{course.latest}}'>{{ course.name }}</a>
{% else %}
{{ course.name }}
{% endif %}
{% if course.note %}
(<small>{{course.note}}</small>)
{% endif %}
</li>
{% endfor %}
</ul>

## At Virginia Tech
* CS 3114 Data Structures & Algorithms (<small>Followed the [OpenDSA CS3 Textbook](https://opendsa-server.cs.vt.edu/ODSA/Books/CS3/html/).)

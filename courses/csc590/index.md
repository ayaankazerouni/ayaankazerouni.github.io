---
layout: course
title: CSC 590
---

{% assign id=page.dir | split: '/' | last | trim %}
{% assign course = site.data.courses | where: "id", id | last %}

<meta http-equiv="Refresh" content="0, URL={{course.latest}}"/>

Redirecting you to the most recent offering.

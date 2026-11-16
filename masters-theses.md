---
layout: page
title: Master's Theses
permalink: /masters-theses
---

Theses written by my advisees. Click on items to see their abstracts.

<script type="text/javascript" src="/assets/js/artifact-expand.js"></script>

{% assign theses=site.data.theses | sort: "date" | reverse %}
<div class="artifact-list">
  {% for item in theses %}
    {% include artifact.html item=item thesis=true %}
  {% endfor %}
</div>

---
layout: page
title: Other projects 
permalink: /other
---

Some things I've made for fun or work.

<div class="project-grid">
{% for p in site.data.projects %}
  <article class="project">
    <a href="{{ p.links[0].url | relative_url }}">
      <img src="{{ '/assets/images/projects/' | append: p.image | relative_url }}" alt="{{ p.alt }}" loading="lazy" />
    </a>
    <h3><a href="{{ p.links[0].url | relative_url }}">{{ p.name }}</a></h3>
    <p>
      {{ p.description }}
      <span class="project-links">{% for l in p.links %}<a href="{{ l.url | relative_url }}">{{ l.text }}</a>{% unless forloop.last %} · {% endunless %}{% endfor %}</span>
    </p>
  </article>
{% endfor %}
</div>

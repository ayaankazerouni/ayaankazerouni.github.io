---
layout: page
title: Blog
permalink: /blog
---

<style>
.writing {
  display: grid;
  grid-column-gap: 7px;
  grid-row-gap: 2.5vh;
  grid-template-columns: 3fr 1fr;
  margin: auto;
  font-size: 0.95em;

  a {
    text-decoration-thickness: 1pt;
  }
}
</style>

{% assign posts = site.pages
  | where_exp: "p", "p.url contains '/blog/' and p.url != page.url and p.url != '/blog/feed.xml'"
  | sort: "date"
  | reverse %}

[RSS]({{site.feed_url}})

<div class='writing'>
  {% for post in posts %}
  {% if post.unlisted != true %}
  <div><a href="{{post.url}}">{{post.title}}</a></div>
  <time class='emph'>{{post.date | date: "%b %d, %Y"}}</time>
  {% endif %}
  {% endfor %}
</div>

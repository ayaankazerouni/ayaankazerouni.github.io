---
layout: page
title: Publications
permalink: /publications
---

{:.blurb}
Papers and posters I have authored or co-authored, in reverse-chronological order.
I try to keep a sometimes-updated description of them by [research project](/research).
Many of the articles are accompanied by [abridged summaries](/blog). 

{:.blurb}
Click on a topic to filter the list and expand an item to see its abstracts.

<script type="text/javascript" src="/assets/js/artifact-expand.js" defer></script>

{%- comment -%} Topics used by at most this many papers are folded into "other". {%- endcomment -%}
{%- assign other_threshold = 1 -%}
{%- assign all_topics = site.data.pubs | map: "topics" | compact | join: "|" | split: "|" -%}
{%- assign unique_topics = all_topics | uniq | sort -%}
{%- assign other_slugs = "|" -%}
{%- assign common_topics = "" | split: "" -%}
{%- assign other_names = "" | split: "" -%}
{%- for topic in unique_topics -%}
  {%- if topic == "" -%}{%- continue -%}{%- endif -%}
  {%- assign n = all_topics | where_exp: "t", "t == topic" | size -%}
  {%- if n <= other_threshold -%}
    {%- assign slug = topic | slugify -%}
    {%- assign other_slugs = other_slugs | append: slug | append: "|" -%}
  {%- else -%}
    {%- assign common_topics = common_topics | push: topic -%}
  {%- endif -%}
{%- endfor -%}
{%- assign recent_pubs = site.data.pubs | sort: "date" | reverse -%}
{%- for pub in recent_pubs -%}
  {%- for topic in pub.topics -%}
    {%- assign slug = topic | slugify -%}
    {%- assign needle = "|" | append: slug | append: "|" -%}
    {%- if other_slugs contains needle -%}{%- assign other_names = other_names | push: topic -%}{%- endif -%}
  {%- endfor -%}
{%- endfor -%}
{%- comment -%} A folded topic with several papers is pushed once per paper; keep its first (newest) mention. {%- endcomment -%}
{%- assign other_names = other_names | uniq -%}
{%- comment -%}
  Order topics by tier, then recency. A topic is "primary" for a paper if it is the paper's first
  topic. Each key is: tier ("1" if the topic is primary for any paper, else "0"), the dates of
  its primary papers, then the dates of all its papers, newest first. Comparing keys therefore
  compares the newest paper, then the next-newest, and so on. "!" sorts below any digit, so
  when one list is a prefix of another, the topic with more papers wins.
{%- endcomment -%}
{%- assign keyed = "" | split: "" -%}
{%- for topic in common_topics -%}
  {%- assign primary_key = "" -%}
  {%- assign all_key = "" -%}
  {%- for pub in recent_pubs -%}
    {%- if pub.topics contains topic -%}
      {%- assign all_key = all_key | append: pub.date | append: "," -%}
      {%- if pub.topics.first == topic -%}{%- assign primary_key = primary_key | append: pub.date | append: "," -%}{%- endif -%}
    {%- endif -%}
  {%- endfor -%}
  {%- assign tier = "0" -%}
  {%- if primary_key != "" -%}{%- assign tier = "1" -%}{%- endif -%}
  {%- assign entry = tier | append: primary_key | append: "!" | append: all_key | append: "!" | append: topic -%}
  {%- assign keyed = keyed | push: entry -%}
{%- endfor -%}
{%- assign common_topics = "" | split: "" -%}
{%- assign keyed = keyed | sort | reverse -%}
{%- for entry in keyed -%}
  {%- assign name = entry | split: "!" | last -%}
  {%- assign common_topics = common_topics | push: name -%}
{%- endfor -%}
{%- assign untagged = site.data.pubs | where_exp: "p", "p.topics == nil or p.topics == empty" | size -%}

<nav class="topic-filter" aria-label="Filter publications by topic">
  <a href="{{ page.url }}" data-topic="">all</a>
  {%- for topic in common_topics %}
  <a href="?topic={{ topic | slugify }}" data-topic="{{ topic | slugify }}">{{ topic }}</a>
  {%- endfor %}
  {%- if other_slugs != "|" or untagged > 0 %}
  <a href="?topic=other" data-topic="other">other{% if other_names.size > 0 %}<span class="collapsed-topics"> {{ other_names | slice: 0, 3 | join: ", " }}{% if other_names.size > 3 %}, &hellip;{% endif %}</span>{% endif %}</a>
  {%- endif %}
</nav>

<div class="artifact-list">
{% assign pubs=site.data.pubs | sort: "date" | reverse %}
{% for item in pubs %}
  {% include artifact.html item=item other_slugs=other_slugs %}
{% endfor %}
</div>


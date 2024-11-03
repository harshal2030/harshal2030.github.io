---
layout: page
permalink: /knowledge/
title: Knowledge
---

<div>
{% for post in site.categories.Knowledge %}
<article class="post-item">
  <h2 class="post-title"><a href="{{ site.baseurl }}{{ post.url }}" class="post-link">{{ post.title }}</a></h2>
  <p>{{ post.excerpt }}</p>
  <div class="post-footer">
    <a href="{{ site.baseurl }}{{ post.url }}">
      <button class="outline-btn"><span>Read More</span></button>
    </a>

    <p>{{ post.date | date: "%B %e, %Y" }}</p>
  </div>
</article>
{% endfor %}
</div>

---
layout: page
permalink: /categories/
title: Categories
---


<div id="archives">
{% for category in site.categories %}
  <div class="archive-group">
    {% capture category_name %}{{ category | first }}{% endcapture %}
    <div id="#{{ category_name | slugize }}"></div>
    <p></p>
    
    <h3 class="category-head">{{ category_name }}</h3>
    <a name="{{ category_name | slugize }}"></a>
    {% for post in site.categories[category_name] %}
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
{% endfor %}
</div>
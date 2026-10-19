---
layout: archive
title: "Travel and Art"
permalink: /travelart/
author_profile: false
---

{% comment %} Photos and videos are listed in _data/travelart.yml.
Web-sized copies in /images/thumbs and /images/large come from scripts/travelart-images.sh {% endcomment %}
<div class="polaroid-gallery">
{% for item in site.data.travelart %}
  {% if item.video %}
  <figure class="polaroid polaroid--video">
    <video src="{{ item.video | relative_url }}"{% if item.poster %}{% assign name = item.poster | split: '/' | last | split: '.' | first %} poster="{{ '/images/thumbs/' | append: name | append: '.jpg' | relative_url }}"{% endif %} controls muted playsinline preload="{% if item.poster %}none{% else %}metadata{% endif %}" aria-label="{{ item.caption | escape }}"></video>
    <figcaption>{{ item.caption }}</figcaption>
  </figure>
  {% else %}
  {% assign name = item.image | split: '/' | last | split: '.' | first %}
  <figure class="polaroid">
    <a href="{{ '/images/large/' | append: name | append: '.jpg' | relative_url }}" title="{{ item.caption | escape }}"><img src="{{ '/images/thumbs/' | append: name | append: '.jpg' | relative_url }}" alt="{{ item.caption | escape }}" loading="lazy" decoding="async"></a>
    <figcaption>{{ item.caption }}</figcaption>
  </figure>
  {% endif %}
{% endfor %}
</div>

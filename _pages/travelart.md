---
layout: archive
title: "Travel and Art"
permalink: /travelart/
author_profile: false
---

{% comment %} Photos and videos are listed in _data/travelart.yml {% endcomment %}
<div class="polaroid-gallery">
{% for item in site.data.travelart %}
  {% if item.video %}
  <figure class="polaroid polaroid--video">
    <video src="{{ item.video | relative_url }}"{% if item.poster %} poster="{{ item.poster | relative_url }}"{% endif %} controls muted loop playsinline preload="{% if item.poster %}none{% else %}metadata{% endif %}" aria-label="{{ item.caption | escape }}"></video>
    <figcaption>{{ item.caption }}</figcaption>
  </figure>
  {% else %}
  <figure class="polaroid">
    <a href="{{ item.image | relative_url }}" title="{{ item.caption | escape }}"><img src="{{ item.image | relative_url }}" alt="{{ item.caption | escape }}" loading="lazy" decoding="async"></a>
    <figcaption>{{ item.caption }}</figcaption>
  </figure>
  {% endif %}
{% endfor %}
</div>

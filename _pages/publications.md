---
layout: archive
title: "Publications"
permalink: /publications/
author_profile: true
---

{% include base_path %}

<p>Visit my <a href="https://scholar.google.com/citations?hl=en&user=u8eMQLgAAAAJ">Google Scholar profile</a> for the most up-to-date list.</p>

{% assign pubs_by_year = site.publications | group_by_exp: "post", "post.date | date: '%Y'" | sort: "name" | reverse %}

<nav class="pub-year-nav">
  <a href="#all">All</a>
  {% for year in pubs_by_year %}<a href="#y{{ year.name }}">{{ year.name }}</a>{% endfor %}
</nav>

<div id="all" class="pub-year-groups">
  {% for year in pubs_by_year %}
    <section id="y{{ year.name }}" class="pub-year-group">
      <h2 class="pub-year-group__year">{{ year.name }}</h2>
      <div class="pub-year-group__list">
        {% assign year_pubs = year.items | sort: "date" | reverse %}
        {% for pub in year_pubs %}
          <article class="pub-entry">
            <h3 class="pub-entry__title">{{ pub.title }}</h3>
            {% if pub.authors %}<p class="pub-entry__authors">{{ pub.authors }}</p>{% endif %}
            {% if pub.venue %}<p class="pub-entry__venue"><em>{{ pub.venue }}</em></p>{% endif %}
            <p class="pub-entry__links">
              {% if pub.paperurl %}<a href="{{ pub.paperurl }}">Paper</a>{% endif %}
              {% if pub.arxivurl %}<a href="{{ pub.arxivurl }}">arXiv</a>{% endif %}
              {% if pub.codeurl %}<a href="{{ pub.codeurl }}">Code</a>{% endif %}
            </p>
          </article>
        {% endfor %}
      </div>
    </section>
  {% endfor %}
</div>

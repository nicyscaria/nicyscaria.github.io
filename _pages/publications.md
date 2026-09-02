---
layout: archive
title: "Publications"
permalink: /publications/
author_profile: false
---

{% include base_path %}

<p>Visit my <a href="https://scholar.google.com/citations?hl=en&user=u8eMQLgAAAAJ">Google Scholar profile</a> for the most up-to-date list.</p>

{% assign linked_pubs = site.publications | where_exp: "p", "p.paperurl or p.arxivurl or p.codeurl" %}
{% assign pubs_by_year = linked_pubs | group_by_exp: "post", "post.date | date: '%Y'" | sort: "name" | reverse %}

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
            {% if pub.venue or pub.award %}
              <p class="pub-entry__venue">
                {% if pub.venue %}<em>{{ pub.venue }}</em>{% endif %}
                {% if pub.award %}<span class="pub-entry__award pub-entry__award--{{ pub.award | downcase }}">{{ pub.award }}</span>{% endif %}
              </p>
            {% endif %}
            {% if pub.paperurl or pub.arxivurl or pub.codeurl %}
              <p class="pub-entry__links">
                {% if pub.paperurl %}<a href="{{ pub.paperurl }}"><i class="fas fa-link" aria-hidden="true"></i> Paper</a>{% endif %}
                {% if pub.arxivurl %}<a href="{{ pub.arxivurl }}"><i class="fas fa-link" aria-hidden="true"></i> arXiv</a>{% endif %}
                {% if pub.codeurl %}<a href="{{ pub.codeurl }}"><i class="fab fa-github" aria-hidden="true"></i> Code</a>{% endif %}
              </p>
            {% endif %}
          </article>
        {% endfor %}
      </div>
    </section>
  {% endfor %}
</div>

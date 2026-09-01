---
layout: archive
title: "Publications"
permalink: /publications/
author_profile: true
---

Visit my <u><a href="https://scholar.google.com/citations?hl=en&user=u8eMQLgAAAAJ">Google Scholar profile</a></u> for the most up-to-date list of publications.

## Research Focus

My research centers on **Reliable Language Model Systems for Educational Assessment and Personalized Adaptive Learning**. I work at the intersection of Natural Language Processing, Large Language Models, Knowledge Representation, and Cognitive Neuroscience, developing intelligent systems that combine domain reasoning with adaptive learning capabilities.

### Recent Publications

My current research focus includes:
- **Automated Educational Question Generation**: Evaluating LLM capabilities in generating high-quality assessment questions at different cognitive levels
- **Physics Reasoning in Language Models**: Multi-dimensional analysis of small language models from an educational perspective  
- **Concept-Based Learning**: Leveraging structured knowledge representations for improved learning outcomes
- **Personalized Adaptive Learning**: Multi-agent systems for customized educational experiences

---

{% include base_path %}

## Selected Publications

{% for post in site.publications reversed %}
  {% include archive-single.html %}
{% endfor %}

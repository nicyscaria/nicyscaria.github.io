---
layout: archive
title: "Research"
permalink: /research/
author_profile: true
---

{% if site.talkmap_link == true %}

<p style="text-decoration:underline;"><a href="/research.md">See a map of all the places I've given a talk!</a></p>

{% endif %}


### ✅ Assessment of Large Language Models’ Ability to Generate Relevant and High-Quality Questions at Different Bloom’s Skill Levels
We examined the ability of five state-of-the-art LLMs to generate relevant and high-quality questions of different cognitive levels, as defined by Bloom's taxonomy. We prompted each model with the same instructions and different contexts to generate 510 questions. Two human experts used a ten-item rubric to assess the linguistic and pedagogical relevance and quality of the questions. Our findings suggest that LLMs can generate relevant and high-quality educational questions of different cognitive levels, making them useful for creating assessments.

![Alt text](/images/table.png){: .align-center width="800px"}
<div align="center">Performance of different large language models on different evaluation metrics</div>


### 🚙 Lateral Control of an Autonomous Vehicle
The electric power steering of the Suzuki Ignis ([Robo-Taxi](https://tataelxsi.com/storage/solutions/February2021/J0jsi8pIMUsEC3CINghu.pdf)) was automatically controlled with an adaptive PID controller designed in MATLAB/SIMULINK using MicroAutoBox II. An Adaptive Model Predictive Controller was used for motion planning. 


<video width="960" height="540" controls>
  <source src="/images/video1.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>
<div align="center">A simulation of the vehicle exhibiting autonomous control in CARLA</div>
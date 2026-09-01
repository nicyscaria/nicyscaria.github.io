---
layout: archive
title: "Research"
permalink: /research/
author_profile: true
---

Check [publications](https://scholar.google.com/citations?user=u8eMQLgAAAAJ&hl=en) for the up-to-date information

### Research Areas

Reliable LM Agents; Task Alignment; Reasoning Evaluation and Verification; LLM-as-a-Judge and Automated Verifiers; Neurosymbolic Methods for Grounding and Priors; Small and Modular LMs; NLP for Education.

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

### Ongoing Research Projects

**Precondition-based Memory for Continual Learning in Agentic Systems**

This work addresses the limits of similarity-based memory in language model agents, where past experience is retrieved because it resembles the current situation rather than because it applies to it. Each entry carries an explicit condition for when it holds, so the agent can retrieve nothing when nothing applies, drop entries that no longer hold, and merge overlapping ones. The approach is studied on coding and robotics tasks.

**Causal Scaffolding for Logical Reasoning: A Three-Stage Pipeline for Improved Formal Problem Solving**

This work addresses the formalization challenges in Large Language Models by introducing explicit causal structure representations as intermediates between natural language problems and formal logic, enabling more accurate translation to First-Order Logic and symbolic solver integration for multi-hop reasoning tasks.

**Improving Physics Reasoning in Small Language Models through Step-by-Step Symbolic Verification**

This work addresses the reasoning deficiencies in Small Language Models by implementing symbolic systems and step-by-step verifiers to validate and improve the quality of generated reasoning chains in physics problem-solving.
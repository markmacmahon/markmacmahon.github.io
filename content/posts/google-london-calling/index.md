+++
title = 'Google London Calling'
date = 2026-03-14T10:00:00Z
slug = 'google-london-calling'
draft = false
description = "Two days inside Google Cloud's AI Innovators Expedition. Agents, multimodal, governance, and what the next platform shift actually looks like from the inside."
[sitemap]
  priority = 0.8
[params]
  series_number = 12
  coming_soon = true
  song_title = 'London Calling'
  song_artist = 'The Clash'
  song_year = '1979'
  song_url = 'https://open.spotify.com/track/124Y9LPRCAz3q2OP0iCvcJ'
+++

Two days at Google Cloud's AI Innovators Expedition in London. March 11-12, 2026. Bonhill Street.

I spent most of the event putting finishing touches on [Nexo](https://nexo.luzia.com) - the partner runtime I have been building over the past month. Three tabs open throughout: Claude Code for the partner dashboard, Codex for the webhook examples on Google Cloud Platform, Terraform for the AWS infrastructure. nexo.luzia.com went live during the event week.

## We Pitched Nexo

{{< post-image src="00-mark-pitching-nexo.jpeg" alt="Mark MacMahon pitching Luzia Nexo at Google Cloud AI Innovators Expedition" caption="Luzia - Client's Voice: Previous Agent Experience. Day 1 morning." width="640px" >}}

Day 1 morning. The room was asked who wanted to share what they were building with Google AI. I walked up and presented Nexo - what it is, how it runs on Google's stack, and why agent distribution is the missing layer.

{{< post-image src="27-mark-coding-new-way-to-cloud.jpeg" alt="Mark MacMahon coding Nexo at Google Cloud office - The new way to cloud" caption="Finishing Nexo between sessions." width="640px" >}}

## What We Learned

### Agent Building Standards

{{< post-image src="06-agent-standards-adk-a2a-ap2-ucp.jpeg" alt="Google Cloud agent building standards - ADK, A2A, AP2, UCP" caption="Four protocols shaping the agentic ecosystem." width="640px" >}}

Google announced four protocols that map directly to what we are building with Nexo:

- **ADK** (Agent Development Kit) - open framework for multi-agent solutions. We are migrating all Nexo examples to ADK.
- **[A2A](https://developers.googleblog.com/en/a2a-a-new-era-of-agent-interoperability/)** (Agent-to-Agent) - interoperability between agents. This validates Nexo as the distribution layer. A2A lets agents coordinate. Nexo gives them somewhere to go.
- **AP2** (Agents Payment Protocol) - agentic payments. Enables food, shopping, and travel verticals.
- **UCP** (Universal Commerce Protocol) - agentic commerce. Enables end-to-end commerce flows through partner characters.

Google is solving interoperability. Nexo is solving distribution. They are complementary, not competing.

### Agent Development Kit

{{< post-image src="02-agent-development-kit.jpeg" alt="Google Agent Development Kit presentation" caption="ADK - framework and SDK for multi-agent solutions." width="640px" >}}

Open framework for multi-agent solutions. Multi-agent orchestration, local dev UI for visualization and tracing, human-in-the-loop support, and model-agnostic - any model, not just Gemini. We are migrating all Nexo partner examples to ADK.

### GenMedia on Vertex AI

{{< post-image src="01-genmedia-vertex-ai.jpeg" alt="GenMedia on Vertex AI presentation" caption="The full generative media suite under one platform." width="640px" >}}

The full generative media suite: Veo 3.1 for video generation, Imagen 4 for image generation, Lyria 2 for music, Chirp for speech, and Gemini 3.1 Pro for multimodal understanding with a 1M token context window.

These are capabilities partners can surface through their Nexo characters. A travel character generating destination videos. A fitness character creating workout visuals. A language tutor using speech-to-text. GenMedia is the capability layer. Nexo is the distribution channel.

### Agent Memory

{{< post-image src="26-agent-memory-context-windows.jpeg" alt="Beyond context windows - bringing memory to agents" caption="Beyond context windows - persistent memory for agents." width="640px" >}}

"Beyond context windows, bringing memory to agents." Agent Engine Sessions for short-term conversation memory and Agent Engine Memory Bank for long-term persistence. This is what Nexo's consented profile context already does. Google building this into their platform validates our approach.

### Gemini as the Unified AI Layer

{{< post-image src="03-gemini-unified-ai.jpeg" alt="Gemini - Google's unified AI to power agents" caption="Gemini as the central AI layer." width="640px" >}}

Gemini positioned as the central AI layer connecting text, code, audio, video, images, search, actions, planning, and training.

## Notable Sessions

{{< post-image src="05-clement-farabet-deepmind.jpeg" alt="Clement Farabet, VP AI Engineering, Google DeepMind" caption="Clement Farabet, VP AI Engineering, Google DeepMind." width="640px" >}}

[Clement Farabet](https://en.wikipedia.org/wiki/Clement_Farabet), VP AI Engineering at Google DeepMind. Previously VP AI Infrastructure at NVIDIA.

{{< post-image src="10-freepik-joaquin-cuenca.jpeg" alt="Joaquin Cuenca, CEO of Freepik, presenting on multimodality" caption="Joaquin Cuenca, CEO of Freepik, on the power of multimodality." width="640px" >}}

[Joaquin Cuenca](https://www.linkedin.com/in/joaquincuenca/), CEO & Co-founder of Freepik. How they pivoted to using AI for their stock photo platform.

{{< post-image src="15-ai-chip-design.jpeg" alt="AI for Chip Design presentation" caption="AI for Chip Design - Google using AI to build the hardware that runs AI." width="640px" >}}

{{< post-image src="25-system-architecture-agents.jpeg" alt="System Architecture of Agents in Google Cloud" caption="System architecture of agents in Google Cloud." width="640px" >}}

{{< post-image src="28-identity-governance.jpeg" alt="Identity and governance for agents" caption="Identity and governance." width="640px" >}}

## Where Nexo Goes From Here

The Nexo demos are deliberately broad. I was testing every use case to push the boundaries, not to polish individual verticals. Some are superficial wrappers around LLMs and RAG, just to anchor the possibilities and simulate what the experience could feel like.

Now we can tease out what fits. Pick the verticals that work, go deep, and build them properly. Google is pushing A2A across verticals. We can build on that - voice, image, video, agent-to-agent - and showcase real solutions through Nexo that make both platforms look good. Their interoperability layer gets distribution. Our distribution layer gets cutting-edge capabilities.

All of this without changing the core of Luzia. Nexo sits alongside it. Partners plug in, users get richer experiences, and the core product stays largely untouched.

{{< post-image src="29-bonhill-street-exterior.jpeg" alt="Bonhill Street, London" caption="Bonhill Street, London." width="480px" >}}

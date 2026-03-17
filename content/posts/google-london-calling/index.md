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
  coming_soon = false
  song_title = 'London Calling'
  song_artist = 'The Clash'
  song_year = '1979'
  song_url = 'https://open.spotify.com/track/124Y9LPRCAz3q2OP0iCvcJ'
+++

March 11-12, 2026. Bonhill Street, London.

{{< gallery >}}
{{< gallery-item src="29-bonhill-street-exterior.jpeg" alt="Google Cloud office, Bonhill Street, London" caption="Google Cloud, Bonhill Street, London." >}}
{{< gallery-item src="00-mark-pitching-nexo.jpeg" alt="Mark MacMahon presenting at Google Cloud AI Innovators Expedition" caption="Day 1 morning." >}}
{{< /gallery >}}

Google invited around thirty companies to London for two days on agents, multimodal AI, and governance. The room included [Wallapop](https://wallapop.com), [Typeform](https://typeform.com), [JobandTalent](https://jobandtalent.com), [Fever](https://feverup.com), [Freepik](https://freepik.com), [RavenPack](https://ravenpack.com), [eDreams](https://edreams.com), and [Luzia](https://luzia.com). Two days of presentations, hands-on sessions, and an agent-building competition.

Day 1 morning I presented what we are working on at Luzia - Nexo, a way for external agents to connect into our platform and reach our users. This was the soft launch. Between sessions I was coding and deploying it live, adapting what I was building to what I was hearing. Plenty of bugs and glitches that I was fixing as I found them, but that is fine at this stage.

## What I Learnt

### Agent Building Standards

{{< gallery >}}
{{< gallery-item src="06-agent-standards-adk-a2a-ap2-ucp.jpeg" alt="Google Cloud agent building standards - ADK, A2A, AP2, UCP" caption="Four protocols shaping the agentic ecosystem." >}}
{{< gallery-item src="02-agent-development-kit.jpeg" alt="Google Agent Development Kit presentation" caption="ADK - framework and SDK for multi-agent solutions." >}}
{{< gallery-item src="01-genmedia-vertex-ai.jpeg" alt="GenMedia on Vertex AI presentation" caption="GenMedia on Vertex AI." >}}
{{< gallery-item src="03-gemini-unified-ai.jpeg" alt="Gemini - Google's unified AI to power agents" caption="Gemini as the central AI layer." >}}
{{< gallery-item src="26-agent-memory-context-windows.jpeg" alt="Beyond context windows - bringing memory to agents" caption="Beyond context windows." >}}
{{< /gallery >}}

Google announced four protocols relevant to what we are building:

- **[A2A](https://developers.googleblog.com/en/a2a-a-new-era-of-agent-interoperability/)** (Agent-to-Agent) - interoperability between agents. A2A lets agents find and coordinate with each other.
- **[ADK](https://google.github.io/adk-docs/)** (Agent Development Kit) - open framework for multi-agent solutions. Multi-agent orchestration, local dev UI, human-in-the-loop, model-agnostic.
- **AP2** (Agents Payment Protocol) - agentic payments across food, shopping, and travel.
- **UCP** (Universal Commerce Protocol) - end-to-end agentic commerce.

Google is solving how agents talk to each other. We are working on where they go. The two fit together.

### GenMedia on Vertex AI

The full generative media suite on [Vertex AI](https://cloud.google.com/vertex-ai):

- **[Veo](https://deepmind.google/technologies/veo/) 3.1** - video generation
- **[Imagen](https://deepmind.google/technologies/imagen/) 4** - image generation
- **[Lyria](https://deepmind.google/technologies/lyria/) 2** - music generation
- **[Chirp](https://cloud.google.com/text-to-speech)** - speech-to-text and text-to-speech
- **Gemini 3.1 Pro** - multimodal understanding with a 1M token context window

Interesting capabilities to experiment with - video, image, speech - and see what works inside a conversational AI product.

### Agent Memory

"Beyond context windows, bringing memory to agents."

- **Agent Engine Sessions** - short-term conversation memory
- **Agent Engine Memory Bank** - long-term persistent memory

Good to see Google building this into their platform.

## Notable Sessions

{{< gallery >}}
{{< gallery-item src="05-clement-farabet-deepmind.jpeg" alt="Clement Farabet, VP AI Engineering, Google DeepMind" caption="Clement Farabet, VP AI Engineering, Google DeepMind." >}}
{{< gallery-item src="10-freepik-joaquin-cuenca.jpeg" alt="Joaquin Cuenca, CEO of Freepik" caption="Joaquin Cuenca, CEO of Freepik." >}}
{{< gallery-item src="15-ai-chip-design.jpeg" alt="AI for Chip Design presentation" caption="AI for Chip Design." >}}
{{< gallery-item src="25-system-architecture-agents.jpeg" alt="System Architecture of Agents in Google Cloud" caption="System architecture of agents." >}}
{{< gallery-item src="28-identity-governance.jpeg" alt="Identity and governance for agents" caption="Identity and governance." >}}
{{< /gallery >}}

[Clement Farabet](https://en.wikipedia.org/wiki/Clement_Farabet), VP AI Engineering at Google DeepMind. Previously VP AI Infrastructure at NVIDIA. [Sergio Guadarrama](https://scholar.google.com/citations?user=0ORsAH4AAAAJ), Principal Research at Google DeepMind, on applied AI from research to product. [Joaquin Cuenca](https://www.linkedin.com/in/joaquincuenca/), CEO & Co-founder of Freepik, on how they pivoted to using AI for their stock photo platform.

## Developer Tooling

This is where I think Google is playing wait and see, and I understand why. There is a lot of innovation happening right now with [Claude Code](https://docs.anthropic.com/en/docs/claude-code), [Codex](https://openai.com/index/introducing-codex/), and to a certain extent [Cursor](https://cursor.com). The space is moving fast and Google has a lot of competing products in flight - the [Windsurf acquisition](https://blog.google/technology/google-labs/windsurf/), changes to [Firebase](https://firebase.google.com/), Gemini CLI, Antigravity.

A few observations from using Gemini for coding:

- **Token limits are a real problem.** Every time I have used Gemini for coding I run out of tokens within 15-20 minutes, and there is no friction-free upgrade path. You just hit a wall.
- **Gemini is genuinely impressive for UI work.** For frontend and visual tasks it is a step above what I have seen in other tools. I have [history](/posts/fck-you-gemini/) with Gemini, but credit where it is due.
- **Antigravity does not feel differentiated.** It looks like another skin on top of VS Code. I think Google would be better off investing at a higher abstraction level - something closer to [Cowork](https://claude.com/product/cowork) - because a lot of developers are moving back into the terminal. The IDE space feels fragile right now.

If I were at Google right now, I would consider abandoning Gemini CLI and putting weight behind something like [OpenCode](https://opencode.ai/), which is model-agnostic and has a lot of innovation behind it. Developers want to choose their models and their workflows. Building another proprietary CLI is swimming against that current.

Google is pushing a lot of different flywheels at the moment. The agent and multimodal work is strong. The developer tooling feels like it has not found its focus yet.

While everyone else was building agents for the competition, I was in the back row building the thing I had just pitched. Different kind of hackathon.

Thanks to [Jorge Gil Pena](https://www.linkedin.com/in/jorgegilpena/), a good friend who works at Google Cloud, for the invite.

{{< post-image src="27-mark-coding-new-way-to-cloud.jpeg" alt="Mark MacMahon coding at Google Cloud office" caption="The back row." width="480px" >}}

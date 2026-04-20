+++
title = 'Google London Calling'
date = 2026-03-26T10:00:00Z
slug = 'google-london-calling'
draft = false
description = "Two days inside Google Cloud's AI Innovators Expedition."
[sitemap]
  priority = 0.8
[params]
  series_number = 12
  coming_soon = false
  og_image = '/posts/google-london-calling/00-mark-pitching-nexo.jpeg'
  song_title = 'London Calling'
  song_artist = 'The Clash'
  song_year = '1979'
  song_url = 'https://open.spotify.com/track/124Y9LPRCAz3q2OP0iCvcJ'
+++

This post took longer to publish than it should have. A week of agentic coding in London and I needed a bit of a break.

{{< gallery >}}
{{< gallery-item src="29-bonhill-street-exterior.jpeg" alt="Google Cloud office, Bonhill Street, London" caption="Google Cloud, Bonhill Street, London." >}}
{{< gallery-item src="00-mark-pitching-nexo.jpeg" alt="Mark MacMahon presenting at Google Cloud AI Innovators Expedition" caption="Day 1 morning." >}}
{{< /gallery >}}

Google invited around thirty companies to London for two days on agents, multimodal AI, and governance. The room included [Wallapop](https://wallapop.com), [Typeform](https://typeform.com), [JobandTalent](https://jobandtalent.com), [Fever](https://feverup.com), [Freepik](https://freepik.com), [RavenPack](https://ravenpack.com), [eDreams](https://edreams.com), and [Luzia](https://luzia.com). Two days of presentations, hands-on sessions, and an agent-building competition.

Day 1 morning I presented what we are working on at Luzia - Nexo, a way for external agents to connect into our platform and reach our users. This was the soft launch. Between sessions I was coding and deploying it live, adapting what I was building to what I was hearing. Plenty of bugs and glitches that I was fixing as I found them, but that is fine at this stage. The lure of coding with a team of agents had me with my laptop open in the Uber on the way to meet my sister for dinner.

## What I Learnt

{{< gallery >}}
{{< gallery-item src="06-agent-standards-adk-a2a-ap2-ucp.jpeg" alt="Google Cloud agent building standards - ADK, A2A, AP2, UCP" caption="Agent building standards." >}}
{{< gallery-item src="02-agent-development-kit.jpeg" alt="Google Agent Development Kit presentation" caption="ADK." >}}
{{< gallery-item src="01-genmedia-vertex-ai.jpeg" alt="GenMedia on Vertex AI presentation" caption="GenMedia on Vertex AI." >}}
{{< gallery-item src="05-clement-farabet-deepmind.jpeg" alt="Clement Farabet, VP AI Engineering, Google DeepMind" caption="Clement Farabet, Google DeepMind." >}}
{{< gallery-item src="10-freepik-joaquin-cuenca.jpeg" alt="Joaquin Cuenca, CEO of Freepik" caption="Joaquin Cuenca, Freepik." >}}
{{< gallery-item src="03-gemini-unified-ai.jpeg" alt="Gemini - Google's unified AI to power agents" caption="Gemini." >}}
{{< gallery-item src="26-agent-memory-context-windows.jpeg" alt="Beyond context windows - bringing memory to agents" caption="Agent memory." >}}
{{< gallery-item src="25-system-architecture-agents.jpeg" alt="System Architecture of Agents in Google Cloud" caption="Agent architecture." >}}
{{< gallery-item src="15-ai-chip-design.jpeg" alt="AI for Chip Design presentation" caption="AI for chip design." >}}
{{< gallery-item src="28-identity-governance.jpeg" alt="Identity and governance for agents" caption="Identity and governance." >}}
{{< /gallery >}}

The sessions that stuck with me: [A2A](https://developers.googleblog.com/en/a2a-a-new-era-of-agent-interoperability/) (Agent-to-Agent) and [ADK](https://google.github.io/adk-docs/) (Agent Development Kit) are the two protocols I think will matter most. A2A defines how agents find and coordinate with each other. ADK gives you an open, model-agnostic framework to build them. There were also sessions on agentic payments (AP2) and commerce (UCP) - early days, but the direction is clear.

[Clement Farabet](https://en.wikipedia.org/wiki/Clement_Farabet), VP AI Engineering at Google DeepMind and previously at NVIDIA, gave a talk that reminded me how much raw research firepower sits behind these products. [Joaquin Cuenca](https://www.linkedin.com/in/joaquincuenca/), CEO of Freepik, was interesting on how a stock photo company pivots when AI can generate the images. [Sergio Guadarrama](https://scholar.google.com/citations?user=0ORsAH4AAAAJ), Principal Research at Google DeepMind, on getting AI from research into product.

The [GenMedia](https://cloud.google.com/vertex-ai) suite is impressive on paper - [Veo](https://deepmind.google/technologies/veo/) for video, [Imagen](https://deepmind.google/technologies/imagen/) for image, [Lyria](https://deepmind.google/technologies/lyria/) for music, [Chirp](https://cloud.google.com/text-to-speech) for speech, all under one platform. We will be running some proof of concepts at Luzia to see what actually works.

## Developer Tooling

The agent and multimodal sessions were strong. The developer tooling sessions were where I had more questions than answers. Google has a lot of competing products in flight - the [Windsurf acquisition](https://blog.google/technology/google-labs/windsurf/), changes to [Firebase](https://firebase.google.com/), Gemini CLI, Antigravity - and the space is moving fast with [Claude Code](https://docs.anthropic.com/en/docs/claude-code), [Codex](https://openai.com/index/introducing-codex/), and [Cursor](https://cursor.com). I think Google is playing wait and see, and with this many options they can afford to.

From what I have seen, Gemini is genuinely impressive for UI work - I have [history](/posts/fck-you-gemini/) with it, but credit where it is due. The usage limits are still a problem though. Every time I have used it for coding I hit the plan ceiling within 15-20 minutes, and there is no smooth way to upgrade mid-session. Antigravity does not feel differentiated yet - another skin on VS Code when a lot of developers are moving back into the terminal. If I were at Google I would put weight behind something model-agnostic like [OpenCode](https://opencode.ai/) and invest at a higher abstraction level, something closer to [Cowork](https://claude.com/product/cowork). With the Windsurf acquisition, they probably are.

Google has a lot of really good content on AI-assisted coding. One of the people I follow most closely on this is [Addy Osmani](https://addyosmani.com/), an engineering leader at Google. He won Ireland's [Young Scientist](https://en.wikipedia.org/wiki/Adnan_Osmani) competition in 2003 - the same competition [Patrick Collison](https://en.wikipedia.org/wiki/Patrick_Collison) won two years later before co-founding Stripe. Worth reading if you are thinking about where developer tooling is going.

While everyone else was building agents for the competition, I was in the back row building the thing I had just pitched. Different kind of hackathon.

Thanks to [Jorge Gil Pena](https://www.linkedin.com/in/jorgegilpena/), a friend who works at Google Cloud, for the invite.

{{< post-image src="27-mark-coding-new-way-to-cloud.jpeg" alt="Mark MacMahon coding at Google Cloud office" caption="The back row." width="480px" >}}

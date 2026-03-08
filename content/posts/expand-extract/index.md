+++
title = 'Expand. Extract.'
date = 2026-03-03T10:00:00Z
slug = 'expand-extract'
draft = false
description = 'How to expand into AI without drowning in possibility.'
[sitemap]
  priority = 0.8
[params]
  series_number = 3
  og_image = '/posts/expand-extract/ai-stairway.png'
  song_title = 'Where Is My Mind?'
  song_artist = 'Pixies'
  song_year = '1988'
  song_url = 'https://open.spotify.com/track/0KzAbK6nItSqNh8q70tb0K'
+++

Vibe coding has made one thing dangerously easy: confusing output with progress.

Right now there is no shortage of impressive AI demos, fast prototypes, and bold claims.
There is a shortage of teams that can turn those experiments into reliable products.

Most AI innovation dies in that gap.
Not because the models are weak.
Because extraction discipline is weak.

Half-baked prototypes create false confidence.
They look convincing until they meet production reality: messy architecture, missing tests, vague requirements, unclear ownership, real users, real cost.

I learned this directly during long solo months [building with AI agents](/posts/f-you-gemini/).
Bad architecture surfaced quickly.
Vague thinking got punished.
Impatience produced hallucinations.

AI did not remove the need for discipline.
It multiplied the consequences of lacking it.

## How We Work at Luzia

At [Luzia](https://luzia.com), we committed to a January roadmap and kept delivery moving.

I joined at the end of November 2025. My arrival gave [Alvaro](https://higes.substack.com/) more room to focus on research and innovation while I took on delivery and architecture. In February, I hired a backend technical lead, which gave me room to run experimentation loops without dropping delivery commitments.

While delivering the January plan, agentic coding with Claude Code, Codex, and agent teams opened possibilities we had not foreseen, and Alvaro and I developed two new products while the roadmap continued in motion.

I also brought in hard-earned habits from the [previous year building with agents](/posts/contextrocket/): explicit prompting discipline, tighter verification loops, clearer code boundaries, and tool-specific playbooks. We applied those patterns at team level to make the engineering organisation more AI-driven, not just individual developers.

With the OpenClaw hype in early February, it was natural for us to test it quickly in a real workflow, also because it was close to capabilities we wanted to build at Luzia.

### The OpenClaw Experiment

We set up a dedicated Slack channel and deployed specialist agents across growth, product, engineering, data, design, and branding. A coordinator agent ran daily standups and routed handoffs. We gave deliberate tool access boundaries: Amplitude for analytics, GitHub for code, Notion for docs, and G Suite for coordination.

{{< post-image src="open-claw-slack.png" alt="OpenClaw coordinator and specialist agents running standup workflow in Slack at Luzia" caption="OpenClaw coordinator and growth agent running standup at Luzia." >}}

One insight stood out early: our product manager, [Natalia Solano Gutierrez](https://www.linkedin.com/in/natalia-solano-gutierrez-660a3133/), was able to get answers from OpenClaw that were harder to extract directly from Amplitude. The agent became an interface to analytics, not just an automation layer.

Then one morning, the coordinator briefed me on a GraphQL migration plan that had never been discussed anywhere in the company. Completely fabricated. Delivered with total confidence.

Genuine insight and confident hallucination arriving in the same channel, often in the same breath. Every output still needed verification against source systems before it could become a decision.

We also ran a more radical test: using OpenClaw to manage the lifecycle of one of Luzia's characters, from codebase extraction to iOS and Android proof-of-concept output.

Agents create a feeling of expanded capability. You move into areas you would not normally touch. You experiment with things that were previously too expensive to try. That is genuinely powerful.

It is also genuinely dangerous.

The agent does not know when to stop expanding. That is the human judgment layer.

### The Cost

We are open with AI-token budgets at Luzia to encourage experimentation. In February, developer AI tooling costs spiked and we had to reset budget guardrails.

Uncontrolled expansion creates cost pressure, which forces explicit decisions about what to keep, scale, or cut. We were already using [Pensero](https://pensero.ai/) to correlate token usage with developer output and product value, so we could evaluate the expansion cycle on signal, not anecdotes.

Then the questions came naturally. What do we keep? What do we cut? Which workflows become production paths, and which stay experimental? How do we structure the codebase so agents can work within it reliably?

Those questions only made sense because we expanded first.

## The Pattern

After nearly three decades across platform shifts, one pattern keeps surviving contact with reality.

Expand. Extract.

Not as a slogan. As operating discipline.

[Dan North](https://dannorth.net/) has a pattern he calls [Spike and Stabilise](https://dannorth.net/blog/on-craftsmanship/). The idea is simple: don't decide upfront whether you're writing production code or a throwaway experiment. Ship the spike. Get real feedback. Then, once you know it's valuable, stabilise - invest in tests, architecture, edge cases. Get it into a state anyone can confidently change.

I think about it as expand and extract. It applies far beyond code.

{{< post-image src="expand-extract.png" alt="The Expand-Extract Cycle" >}}

**Expand**: explore possibilities. Test interaction models. Try things that might not work. Let complexity grow temporarily. This is where innovation happens.

**Extract**: consolidate what works. Remove what doesn't. Create structure from chaos. This is where reliability happens.

The cycle is not expand *or* extract. It is expand *then* extract *then* expand again.

The critical skill is knowing which phase you are in. The temptation is to keep pushing forward because expansion feels like momentum. That impatience creates noise, cost, and decision chaos when the system actually needs extraction. The extract phase is not a slowdown or a failure state. It is the deliberate pause where you add guardrails, validate what matters, and make the next expansion sustainable.

Most teams fail in one of two ways:

They under-expand and call it focus.
They over-expand and call it innovation.

Both are avoidance. Under-expansion avoids uncertainty. Over-expansion avoids commitment.

## A Staircase, Not an Elevator

This is how organisations actually adopt AI. Not the conference version. The inside-the-building version.

{{< post-image src="ai-stairway.png" alt="AI Capability Staircase" >}}

**Stage 1: Ad-hoc Personal AI.** Individual engineers using ChatGPT, Claude, Copilot. No coordination. Private relationships with tools. Most companies are still here, even the ones that think they are further along. The risk is not that people are using AI. The risk is that nobody knows how they are using it, what they are feeding into it, or what decisions are being shaped by it.

**Stage 2: Team-Level AI Practices.** Shared workflows. Prompt libraries. Team-level tooling decisions. The shift from "I use AI" to "we use AI." This is where teams start developing shared judgement about which tools to trust for which tasks. Without this stage, every engineer reinvents the wheel - and makes the same mistakes independently.

**Stage 3: AI-Adaptive Codebase.** The codebase itself structured for agent consumption. Good boundaries. Clear contracts. Testable modules. Structured product requirements. Most teams skip this stage - then wonder why agents produce inconsistent results. An agent is only as good as the codebase it operates on. If your architecture is unclear to a human, it will be incomprehensible to an agent. This is also where teams start distinguishing between deterministic problems and non-deterministic ones - and making deliberate choices about where AI belongs at runtime versus where it belongs only in the build process.

**Stage 4: AI-Native Product Teams.** Product development assumes AI participation. Sprint planning includes AI capacity. Architecture decisions account for agent capabilities. This is where AI stops being a tool and becomes a team member - with all the coordination, trust calibration, and oversight that implies.

**Stage 5: AI Learning Organisation.** The organisation learns and adapts through AI feedback loops. Not just tooling adoption but structural adaptation. The org chart, the hiring profile, the definition of seniority, the way you measure productivity - all of it shifts. This is the stage nobody has fully reached yet, but the teams that get closest will define the next era.

Each stage requires the previous one. You cannot build an AI Learning Organisation without AI-Native Product Teams, which require an AI-Adaptive Codebase, which requires Team-Level Practices, which require individuals who actually know how to use the tools.

I call this the elevator illusion: companies trying to jump from Stage 1 to Stage 4. "We'll just deploy agents across the org." It is like trying to take an elevator in a building that only has stairs. The stages are sequential because each one builds the organisational muscle the next one depends on. Skip a stage and you build on a foundation that cannot hold.

What made OpenClaw interesting for us was that it let us test higher stages of the staircase without committing the whole organisation. We could orchestrate specialist agents across functions - growth, product, data, design - and see what coordination at Stage 4 actually feels like, while the broader team was still climbing through Stage 2 and Stage 3. The character lifecycle experiment was a direct test of this: could we use OpenClaw to extract a product from the main codebase, manage it as an independent unit, and take it from codebase extraction through to iOS and Android proof-of-concept? That is Stage 4 thinking applied to a real product problem. It gave us a preview of what becomes possible when you get the earlier stages right - and a sharp reminder of what breaks when you haven't.

The expand-extract cycle is how you climb. Expand into the next stage. Extract what works. Consolidate. Then expand again.

## The Real Constraint

The old constraint was compute.

The current constraint is coherence.

In [Uno. Dos. Tres. Catorce.](/posts/uno-dos-tres-catorce/), I wrote about [i-Chara](https://i-chara.com) in 2004 - a personal agent system designed around mediated disclosure. The surface has changed. The extraction discipline has not. Twenty years apart, same pattern: expand into what the technology makes possible, then extract the architecture that makes it reliable.

The teams that win this cycle will not be the teams that experimented most. They will be the teams that extracted the right architecture from their experiments.

Expand widely. Extract decisively. Expand again.

The cycle does not just reshape your codebase. It eventually reshapes your org chart.

My event-level thoughts from Madrid are captured separately in [ClawCon Madrid](/posts/clawcon-madrid/).

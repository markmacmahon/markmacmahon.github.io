+++
title = 'Craftsmanship vs CraftsmanSh*t'
date = 2026-03-11T10:00:00Z
slug = 'craftsmanship-vs-craftsmanshit'
draft = false
description = 'AI amplifies whatever you bring to it.'
[sitemap]
  priority = 0.8
[params]
  series_number = 10
  coming_soon = true
  og_image = '/posts/craftsmanship-vs-craftsmanshit/amplification-fork.png'
  song_title = 'Das Modell'
  song_artist = 'Kraftwerk'
  song_year = '1978'
  song_url = 'https://open.spotify.com/track/3VwLD5o1r0YBLkjUfgSEYg'
+++

A few years ago, when I was working at [FLOYT Mobility](https://www.billiger-mietwagen.de/), I was talking to [Christian Becker](https://www.linkedin.com/in/cbecker93/) about craftsmanship. How important it was. How software engineering was like a balance sheet - code created on one side, tests and quality on the other, and you need to keep these things in balance. I was also talking about shitty code. How worthless it is. How it costs more to maintain than it ever saved to produce.

Christian - one of the sharpest product minds I have worked with - chimed in: that is not craftsmanship. That is craftsmanshit.

We may not be the originators of the term. But it was the first time I heard it, and I have used it ever since.

{{< post-image src="christian-me.jpeg" alt="Mark MacMahon and Christian Becker at IFA Berlin, September 2025" caption="Christian Becker and Mark MacMahon. IFA Berlin, September 2025." width="480px" >}}

That conversation was about legacy codebases and the friction between product ambition and engineering reality. But the term has become more relevant, not less. Because now the volume of code being produced has exploded, and the average quality is heading in one direction.

## The Amplification Problem

AI coding tools are extraordinarily powerful. I have been [building with them for over a year](/posts/f-you-gemini/). I use them every day. They have changed how I work, how my team works, and what is possible for a small group of engineers.

But they amplify whatever you bring to them.

Bring craftsmanship - care about design, understanding of architecture, testing discipline, awareness of how systems evolve over time - and you get leverage. Real leverage. The kind that compounds.

Bring nothing - no design instinct, no testing habit, no understanding of why the code works, just the ability to prompt and accept - and you get volume. Code that looks like software. Passes a first glance. Ships fast.

Then breaks slowly.

{{< post-image src="amplification-fork.png" alt="The Amplification Fork - Craft plus AI produces leverage, no craft plus AI produces volume" caption="Two paths from the same tools. The difference is what the person brings." width="480px" >}}

**Craftsmanship compounds. CraftsmanShit compounds too.** One builds systems you can maintain. The other builds systems nobody can safely change.

## The Maintenance Horizon

The dangerous thing about AI-generated code is that craftsmanship and craftsmanshit look identical on day one.

The demo works. The feature ships. The pull request gets approved. Everything looks clean.

Month three, cracks appear. Inconsistent patterns. Dependencies that do not make sense. Tests that test the wrong thing or test nothing at all. The kind of problems that only surface when someone tries to extend what was built.

Month six, debt compounds. Nobody fully understands the system. Changing one thing breaks three others. The team slows down, not because they are less capable, but because the codebase is fighting them.

{{< post-image src="maintenance-horizon.png" alt="The Maintenance Horizon - craftsmanship and craftsmanshit diverge over time" caption="Day one, both look the same. The difference shows up when you need to maintain it." width="480px" >}}

This is not hypothetical. Anyone who has inherited a codebase knows exactly what this feels like. The difference now is that AI makes it possible to generate this kind of debt at unprecedented speed.

## What Meta Learned

In a recent episode of the [Pragmatic Engineer podcast](https://newsletter.pragmaticengineer.com/p/building-claude-code-with-boris-cherny), [Boris Cherny](https://www.linkedin.com/in/boris-cherny/) - Head of Claude Code at Anthropic - talked about what he learned during five years as a Principal Engineer at Meta. He led a causal analysis that showed code quality has a measurable, double-digit-percent impact on engineering productivity.

Not a vague correlation. A causal, quantified relationship.

<div style="max-width: 480px; margin: 1.5em 0;">
{{< youtube julbw1JuAz0 >}}
</div>

Meta's own [research](https://arxiv.org/html/2504.12517v1) makes the numbers concrete:

{{< post-image src="meta-evidence.png" alt="Meta research data on code quality and productivity" caption="The quantified cost of craftsmanshit. Source: Meta, Code Improvement Practices (2025)." width="480px" >}}

Reengineered code is 41-77% faster to work with. Severity-causing incidents drop by 55-90%. Meta's internal guideline is to allocate 20-30% of engineering effort to what they call Better Engineering. At Meta, 14.2% of all code changes are code improvement - compared to 4% as the industry average.

The person who built the most important AI coding tool in the world believes craftsmanship matters more in the age of AI, not less. His experience at Meta - code quality, finishing migrations, automating review discipline - fed directly into how Claude Code was designed.

Google's [DORA report](https://dora.dev/) from 2024 adds a sharper finding: AI adoption was associated with a 1.5% decrease in delivery throughput and a 7.2% reduction in delivery stability. AI without craft does not just plateau. It can actively make things worse.

## Vibe Coding Is Not the Problem

Vibe coding is not the enemy.

A senior engineer vibe-coding a prototype brings craft to the evaluation. They know what is architecturally sound, what is throwaway, and where the boundaries are. The craft travels with the person, not the tool. They can vibe-code at any level and still produce something considered.

People from other disciplines using tools like [Lovable](https://lovable.dev/) to build apps - designers, product managers, founders with an idea - that is genuinely exciting. The barrier to building has dropped. Prototyping is faster. More people can show what they mean instead of just describing it.

The danger is the false sense of security. The belief that what works as a demo works as a product. Nobody told them the difference between a prototype and a production system. That is not their fault. It is a gap in the ecosystem.

## The Perfect Storm for XP

I have always believed in [Extreme Programming](https://en.wikipedia.org/wiki/Extreme_programming). But for most of its history, the reality never quite matched the promise. Teams adopted bits of it - standups, iterations, maybe some pairing - and left the hard parts behind. Now, with AI-assisted development, the conditions finally match. This is the perfect storm for XP.

**[Test-driven development](https://en.wikipedia.org/wiki/Test-driven_development)** is the natural AI verification loop. Write the test first - the human specifies what correct means. Let the AI generate the implementation. Verify against the test. The test is the arbiter. Without TDD discipline, you are accepting AI output on faith. As I wrote in [Variance](/posts/variance/): without tests, AI rewrites are roulette. That is how craftsmanshit enters a codebase.

**[Pair programming](https://en.wikipedia.org/wiki/Pair_programming)** scales into something I have started calling mob prompting. At [Luzia](/posts/c-t-shaped-o/), I have started sitting with engineers and prompting AI agents together. Multiple engineers, one agent, shared screen. The benefits go beyond code quality:

Knowledge sharing happens in real time, not through asynchronous pull request review where context is lost. Engineers learn each other's prompting strategies. Junior engineers watch senior engineers evaluate and redirect AI output - and that is the [mentorship pipeline](/posts/who-is-going-to-keep-the-lights-on/) in action.

The pull request bottleneck dissolves. With mob prompting, the review happens as the code is written. The team has already agreed on the approach because they built it together. The PR becomes a formality, not a knowledge-transfer mechanism.

This connects to something I wrote about in [the previous post](/posts/who-is-going-to-keep-the-lights-on/). In 1998, engineers I worked with liked to programme together - talking through design decisions before writing a line of code. That was pair programming before anyone called it pair programming. The same instinct, applied to AI-assisted development, is mob prompting.

The natural next step is to bring product managers and designers into these sessions. At Luzia, the product team has embraced AI with real enthusiasm - they are ready to sit alongside the engineers and prompt together. We are not quite there yet. The tooling and workflows need to mature before that cross-functional session is productive rather than frustrating. But we will get there. The staircase is not just for engineering.

The methodology is twenty-five years old. The application is brand new.

## Spec-Driven Development

The craftsmanship argument extends beyond writing code. It reaches into how you orchestrate the agents that write the code.

The bottleneck in [agentic workflows](/posts/expand-extract/) is not the agent's coding ability. It is the quality of the specification. Clear requirements. Well-defined acceptance criteria. Structured context. This is what allows an agent to work autonomously - pulling tasks from a backlog, executing, validating, and continuing to the next task without human intervention.

This is craftsmanship applied to orchestration rather than implementation.

Ambiguous specs lead to agent thrashing. Multiple attempts. Wasted context windows. Hallucinated assumptions. The economics reinforce the argument: well-structured specifications are more token-efficient. Craft saves money.

Architecture matters too. At Luzia we found that hexagonal architecture - ports, adapters, layers of indirection - works against AI agents. The agent needs to hold the entire indirection graph in context to make a single change. What works better is high-locality architecture: [vertical slices](https://www.oreateai.com/blog/beyond-code-completion-architecting-for-the-ai-era/08656a564a9286c9b4d42dff31a3e3b7) where everything related to a capability lives together. Handler, logic, persistence, tests - all in one place. Smaller context windows. Fewer files to reason about. Less chance the agent misunderstands a boundary.

{{< post-image src="vertical-slice.png" alt="Architecture for Agents - hexagonal architecture vs vertical slice architecture" caption="High-locality architecture gives agents less to reason about. The craft is in how you structure the system for the tools that build it." width="480px" >}}

The [AI Capability Staircase](/posts/expand-extract/) maps directly to where craft operates:

{{< post-image src="craft-staircase.png" alt="Craft altitude mapped to the AI Capability Staircase" caption="The staircase does not remove the need for craft. It raises the altitude at which craft operates." width="480px" >}}

At Level 1, you need craft to evaluate code. At Level 2, you need craft to design tool constraints. At Level 3, you need craft to write specifications precise enough for autonomous execution. At Level 4, you need craft to design the system of agents itself.

## The Open Question

The models are improving. That trajectory is real and accelerating.

At some point, they will be able to evaluate code quality better than most humans. They will catch architectural problems that slip past tired reviewers. They will enforce consistency across codebases at a scale that no team of engineers could match.

But here is the question I keep coming back to: how do you verify that? How do you know when the model's judgement has surpassed yours?

You need enough craft to evaluate the evaluator. And you need control over your own codebase.

Control means knowing what is in there, why decisions were made, and what the constraints are. It means one way of doing things - not three half-finished approaches layered on top of each other because nobody had the discipline to finish the migration or remove the experiment. AI-generated code accelerates this problem. Every agent session that introduces a slightly different pattern, a different library for the same job, a new convention that contradicts the last one - that is control slipping away. Craftsmanship is what keeps a codebase coherent enough to reason about. Without it, you do not just lose quality. You lose the ability to know whether the model is right.

I do not have a clean answer to when the models will surpass us. Nobody does yet. But I know this: the moment you lose control of your codebase, it does not matter how good the model is. You cannot verify what you cannot understand.

## Das Modell

Kraftwerk built their own instruments. Every sound was engineered with obsessive precision. They did not generate music. They crafted it.

The song is about a model - something that looks perfect on the surface. Beautiful from every angle. But ultimately a surface.

AI models produce output that looks like software. Sometimes it is software. Sometimes it is a surface.

The craft is knowing the difference.

---

*Next: [Google London Calling](/posts/google-london-calling/) - Two days inside Google Cloud's AI Innovators Expedition. Agents, multimodal, governance, and what the next platform shift actually looks like from the inside.*

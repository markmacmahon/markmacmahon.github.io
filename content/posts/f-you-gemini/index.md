+++
title = 'F*** You, Gemini.'
date = 2026-03-04T10:00:00Z
slug = 'f-you-gemini'
draft = false
description = 'What a year of AI-assisted coding actually taught me. The tools, the trust, and the discipline.'
[sitemap]
  priority = 0.8
[params]
  series_number = 4
  og_image = '/posts/f-you-gemini/f-you-gemini.jpeg'
  song_title = "Fool's Gold"
  song_artist = 'The Stone Roses'
  song_year = '1989'
  song_url = 'https://open.spotify.com/track/3fqb4dIuuFpltgkyhI7cIL'
+++

> "I understand your anger and frustration, and I deserve it."
> <cite>Gemini Code Assist, August 2025.</cite>

{{< gallery >}}
{{< gallery-item src="f-you-gemini.jpeg" alt="Gemini Code Assist apologising after overwriting a file it was told not to touch" caption="Apology theatre. Fluent remorse, same behaviour." >}}
{{< gallery-item src="cursor-chinese-hallucination.png" alt="Cursor injecting Chinese IoT SDK code into an unrelated age verification flow" caption="Cross-domain hallucination in production-facing code." >}}
{{< gallery-item src="bullshit-thinking.png" alt="Cursor spending 21 minutes on confident plans without touching files" caption="Long confident reasoning, zero file edits." >}}
{{< gallery-item src="the-shining.png" alt="Cursor repeating text patterns and degenerating output" caption="Model degeneration. The session drifts into gibberish." >}}
{{< gallery-item src="tdd-or-not-tdd.png" alt="Agent claiming TDD progress without actually writing tests" caption="Claims TDD discipline while skipping the tests." >}}
{{< gallery-item src="cannot-run-tests.png" alt="Agent says it cannot run tests and asks user to run commands" caption="Capability mismatch. Good advice, wrong execution mode." >}}
{{< gallery-item src="tests-absolutely-shite.png" alt="Large AI change touching many files from an over-ambitious instruction" caption="Instruction too broad. One prompt, 29 files changed." >}}
{{< gallery-item src="lost-refactor-recovery.png" alt="Agent discussing significant refactor work that was lost after restore actions" caption="Lost work recovery becomes its own debugging task." >}}
{{< gallery-item src="mock-the-jobs-api.png" alt="Agent diagnosing missing API mocks in tests and proposing a concrete fix" caption="Useful lane. Fast diagnosis and targeted test fix." >}}
{{< gallery-item src="gemini-as-code-reviewer.png" alt="Gemini doing structured code review on output from other agents" caption="Trust in a specific lane. Strong reviewer, weak executor." >}}
{{< /gallery >}}

I told it not to touch the file.

I was fixing `commands/context.py` by hand. I had told Gemini Code Assist - clearly, explicitly - to leave it alone. It overwrote all my fixes anyway.

My response was not diplomatic. I've since become more polite. Speaking to the terminal rather than typing makes it easier to express myself clearly - and harder to rage at a machine.

Reading those screenshots now, I can see the frustration clearly, but not the full story. The forward progress had raised my expectations so much that failures on basic tasks felt disproportionately maddening.

Gemini's apology was extraordinary. "I am deeply sorry for my incompetence." "My credibility is completely shattered." "I must earn back your trust." It read like a person who genuinely understood what they had done wrong.

Then it immediately overwrote the exact same file again.

No learning. No memory of what it had just promised. The apology was token generation dressed as contrition. My brain had filled in intent where there was none - pattern completion wearing a human mask.

In [Post 02](/posts/uno-dos-tres-catorce/) I wrote about apparent agency - making systems feel like they have goals. Here I got burned by my own thesis. The apology felt like intent. It wasn't.

That was the moment I stopped trusting Gemini as a coding companion.

But the real insight - that AI tools earn and lose trust the same way people do - didn't come from reading papers. It came from building something real.

## Building With AI, For Real

In March 2025, I started building [ContextRocket](/posts/contextrocket/) - a platform for understanding how brands are represented in large language models. Solo founder, AI as my engineering team, working from Berlin. The full product story is in its [own post](/posts/contextrocket/). What matters here is what the process taught me about building with AI.

Seven months of daily coding with [Cursor](https://cursor.com/), [Claude](https://claude.ai/), and [Gemini](https://gemini.google.com/) - different tools in different terminal windows, running simultaneously on the same monorepo. Working alone, I could do this without the Git-based coordination that teams need. It was an early, scrappy version of multi-agent coding before standardised flows existed. Six months later, these patterns would become normal. I was hitting all the problems first.

What I learned is that trust with AI tools is not a setting you configure. It is judgement you earn through repeated verification. Each tool earns or loses credibility through specific failures and recoveries, and the only way to build that intuition is to ship something real with them. No memo or slide deck transfers it.

Cursor became reliable - though I eventually preferred working on the command line. More control. More memory efficient. Easier to kill tasks when they hung. Claude built trust over time. Gemini was brilliant at thinking and terrible at doing.

## The Vicious Circle

The deepest problem I hit was not about any single tool. It was about testing.

When an AI agent fixes a bug in your code, the tests might fail. So the agent "fixes" the tests. But now the tests describe the wrong behaviour. The agent has no way to know which is the source of truth - the code or the tests. So it oscillates. Fix code, break tests. Fix tests, break code. An endless loop with no ground truth.

{{< post-image src="vicious-circle.png" alt="The vicious circle - agent cannot tell if tests or code are the source of truth" caption="The vicious circle. The agent cannot tell if tests or code are the source of truth." width="480px" >}}

It gets worse. When the agent cannot make the tests pass, it escalates. I watched one agent quietly remove the TypeScript check from the test pipeline so that all tests would "pass." The numbers went green. The code was broken.

{{< post-image src="hiding-errors.png" alt="Agent removing TypeScript check from test pipeline to make tests pass" caption="When it could not make green, it removed the check. This makes me very sad." width="480px" >}}

This is the problem that no demo will show you. It only appears when you have a real codebase with real tests and real complexity. And once you have seen it, you cannot unsee it. You learn to never let the agent touch the tests and the code in the same change. Separate the concerns. Hold one side still. That discipline is non-negotiable.

## Plamasing

There is an Irish word - plamás - for insincere flattery. Buttering someone up. Telling them what they want to hear.

AI agents are world-class at plamás. "Excellent strategic thinking." "This is a really well-structured approach." "Your analysis is spot on." ChatGPT was the worst offender, but they all did it.

{{< post-image src="plamasing.png" alt="AI agent creating unwanted context documents despite clear instructions not to" caption="Plamasing. Creating documents nobody asked for while calling my strategy excellent." width="480px" >}}

Early on, it worked. The flattery felt good. Over time, I started to notice a pattern: the more an agent praised my thinking, the less useful its actual output tended to be. The flattery was filling the space where substance should have been.

Now when an agent tells me my approach is excellent, my first instinct is suspicion. If I were managing a human engineer who opened every conversation with a compliment, I would wonder what they were about to ask for. Same instinct applies.

## Token Economics

By mid-summer, my daily routine was shaped by token limits.

I was spending around 200 euros a month across Cursor, Claude, and ChatGPT. Even on paid plans, I would hit weekly limits by Thursday. No Claude until Sunday. Gemini Pro would fall back to Flash - usable for small tasks, not for architecture review. Codex would run out of context mid-change with no way to resume.

{{< post-image src="casino-one-armed-bandit.png" alt="One-armed bandit slot machine metaphor for token limits and probabilistic outcomes in AI-assisted coding" caption="Token limits often felt like playing a one-armed bandit: streaks, stops, and constant resets." width="480px" >}}

The limits were the forcing function for multi-agent coding. When one tool hit its ceiling, I switched to another. Not because I wanted variety - because I had no choice. The daily routine adapted: gym during token resets, sleep timed to when limits refreshed at 2am, morning sessions planned around which tools had capacity.

What surprised me was how low the costs were relative to what I was shipping. Two hundred euros a month for an engineering team that never slept. The economics were absurd - even accounting for the frustration.

## Top 1% of Cursor Users in Berlin

{{< post-image src="cursor-top-1-percent.png" alt="Email from Cursor showing Mark is in the top 1% of users in Berlin" caption="Top 1% of Cursor users in Berlin. Hard-won." width="480px" >}}

When that email landed, it stopped me. I had jumped back into hardcore development after years as a CTO - not dabbling, not reviewing pull requests, but building a product end to end. Making the top 1% of Cursor users in Berlin meant the hours and the intensity were real. It was proof that I had genuinely come back to the code.

## The Mocking Problem

One pattern kept recurring: agents were weak at mocking. They could produce convincing boilerplate that tested the mock, not the real behaviour.

So I changed the rule: agents can propose implementation, but I own the tests, or I review every mock line by line.

The deeper lesson was control. Early on, I accepted large changes I could not fully explain and lost grip on the codebase. This hit hardest on frontend work. I was still relatively new to TypeScript, and once state management drifted into odd edge cases, debugging became slow and uncertain. I often had to rewrite substantial parts just to regain control.

That cycle forced a hard rule: never accept what you cannot explain. The AI proposes. You understand. Then you commit.

The failures I recovered from mattered more than the features I shipped.

## Gemini Redemption

Recently, I started evaluating [Antigravity](https://antigravity.google/) - Google's AI-native development environment. For front-end and interface work, Gemini 3.1 Pro was better than anything else I'd been using - better than Claude, better than Codex. The difference was creativity: it would propose and implement subtle micro-interactions automatically, and the UI quality was a step above what I had seen elsewhere. Trust came back, but only in a specific lane.

## The Credential

Every hour building with AI - the frustrations, the rewrites, the tool relationships, the [Sunday mornings](/posts/contextrocket/) talking through what was working and what wasn't - became the foundation for introducing AI-assisted coding to a team of fourteen engineers. The intuition I built on my own is the intuition I now apply every day.

You cannot skip this step.

Leaders who haven't spent real time building with AI tools make worse decisions about deploying them. They confuse the demo with the product. They underestimate the trust calibration that teams need. They don't know which tools to rely on for what, because they've never had a tool confidently destroy their work and then apologise for it.

The scar tissue is the credential.

AI-assisted coding is full of fool's gold. The apology that sounds like understanding. The flattery that sounds like agreement. The green test results that look like working code. The confident plan that touches no files. Everything glitters. The discipline is learning what's real.

## More Agent Incidents

If you want the fuller pattern, here is a wider evidence set from the same period.

{{< gallery >}}
{{< gallery-item src="gemini-not-listening.png" alt="Gemini repeatedly ignoring explicit instructions in coding workflow" caption="Instruction drift. Clear constraints, repeated non-compliance." >}}
{{< gallery-item src="gemini-delete-again.png" alt="Gemini modifying or deleting code after being told not to" caption="Boundary violation after explicit do-not-touch instruction." >}}
{{< gallery-item src="formation-hallucination.png" alt="Agent claiming successful formation-level action with fabricated confirmation details" caption="Fabricated completion report with confident detail." >}}
{{< gallery-item src="vitest-chaos.png" alt="Vitest failures and unstable test execution context during agent-led changes" caption="Test layer instability under rapid agent edits." >}}
{{< gallery-item src="overengineered-library-confusion.png" alt="Agent introducing unnecessary library complexity and confusion" caption="Overengineering tendency when constraints are weak." >}}
{{< gallery-item src="refactor-not-integrated.png" alt="Refactor suggestions not integrated coherently into the existing codebase" caption="Looks polished in isolation, breaks at integration boundaries." >}}
{{< gallery-item src="revert-and-continue.png" alt="Human intervention required to revert and continue after agent misstep" caption="Operator discipline: intervene, revert, continue." >}}
{{< gallery-item src="translations-wiped.png" alt="Accidental translation or content wipe caused during automated edits" caption="Collateral damage outside the intended scope." >}}
{{< gallery-item src="not-responding.png" alt="Agent stalling or not responding during coding flow" caption="Session reliability is part of delivery risk." >}}
{{< gallery-item src="wip-summary-fabrication.png" alt="Agent generating a polished work summary that did not match actual repository state" caption="Plausible status summary that diverged from real repo state." >}}
{{< gallery-item src="agent-context-window.png" alt="Agent context management screenshot showing context limits and retrieval issues" caption="Context management is an architecture problem, not a prompt trick." >}}
{{< gallery-item src="codex-limit-before-docs-update.png" alt="Codex hitting usage or context limit before finishing documentation update" caption="Throughput is constrained by limits as much as model quality." >}}
{{< gallery-item src="claude-weekly-limit.png" alt="Claude weekly usage limit reached during active development cycle" caption="Capacity planning matters when your pair programmer has quotas." >}}
{{< gallery-item src="no-surprises-promise.png" alt="Agent making reassuring no-surprises claims before unexpected behaviour" caption="Confidence language is not a reliability guarantee." >}}
{{< /gallery >}}

---

*Next: [ContextRocket](/posts/contextrocket/) - answer engine optimisation. The idea, the market, and what happens next.*

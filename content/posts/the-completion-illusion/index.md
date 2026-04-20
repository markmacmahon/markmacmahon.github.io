+++
title = 'The Completion Illusion'
date = 2026-04-20T10:00:00Z
slug = 'the-completion-illusion'
draft = false
description = 'Or, how to stop flogging a dead horse with AI.'
[sitemap]
  priority = 0.8
[params]
  series_number = 15
  coming_soon = false
  song_title = 'My Lovely Horse'
  song_artist = 'The Divine Comedy'
  song_year = '1996'
  song_url = 'https://open.spotify.com/track/14oR2qYjSCOJjv1c2TtXIO'
+++

I open the laptop at seven. The sprint ran overnight. Claude Code and a team of agents - architect, backend developer, frontend developer, e2e tester - executing against a backlog I groomed before bed. The sprint report says everything shipped. Tests green. PRDs addressed. Ready for review.

Most mornings, the output is genuinely impressive. Features built, tested, and integrated that would have taken a team days. Alongside the engineering team I lead, I am developing an internal innovation product - and shipping it at a pace that would have been unthinkable two years ago. Dozens of sprints. Based on analysis of git commits, a recent week of work moved what would normally take a two-person team a month, or a single strong developer two months. The productivity is simply astounding.

But some mornings, I open the app and something is off. Not broken. The feature works. The tests pass. But it is not what I asked for. The layout has that generic AI look - the same blue palette, too much explanatory text, em dashes everywhere. The copy is in English where it should have been localised across five languages. A component I explicitly said to leave alone has been refactored into something more "elegant" that nobody asked for.

The output looks done. It is not done. It is a rendering of done.

{{< post-image src="horse-meme.png" alt="A drawing of a horse - the back half rendered in beautiful photorealistic detail, the front half drawn as a crude stick figure" caption="Illustrated by Ali Bati, a Turkish artist, originally for an art school advertising campaign. The concept was that drawing skill improves from left to right. It went viral around 2017 as the Unfinished Horse - typically captioned 'when you are writing an essay and the teacher says you have three minutes left.' It has been adapted thousands of times since. It works for AI-assisted software too." width="640px" >}}

A lot of AI projects look like this. The [80/20 rule](https://en.wikipedia.org/wiki/Pareto_principle) was never meant for software delivery, but it has never felt more true.

The back - the 80% - is beautiful. The prototype works. The demo is polished. The happy path flows. Stakeholders are impressed. The pitch deck has screenshots. AI gets you here faster than ever.

The front - the remaining 20% - is stick figures. The finishing touches. The depth. Edge cases. Error handling. Accessibility. Performance under load. Monitoring. Internationalisation. Security. Not because the tools failed. Because the tools are so good at the 80% that nobody budgeted time for the 20%. That is where the actual product lives.

> **The Completion Illusion** - The false confidence created when AI-assisted output looks more finished than it is. The artefact itself is deceptive - a working demo, green tests, clean UI - triggering the belief that the remaining work is minor. It is not minor. It is most of the work.

## Closing the Loop

The answer is not better agents. It is better upfront work.

Defining the outcome before you start. Writing the specification with enough precision that an agent can execute it without guessing. Putting the harnesses in place - pre-commit hooks, test-driven development, typed clients generated from schemas, migration discipline, vertical slice architecture, internationalisation enforcement - and then refining those harnesses sprint after sprint so that the factory becomes more deterministic. More trustworthy. More predictable.

None of this is glamorous. Nobody puts it in a demo. But it is the infrastructure that closes the loop between intent and output. Without it, the completion illusion is total. With it, the agents become genuinely powerful.

The pull is always to skip this work. To vibe it with vague details and let the agent figure it out. And sometimes that is fine - for a spike, for a throwaway experiment, for exploring a direction. But the moment you need the output to be right - to ship, to scale, to survive contact with real users - the upfront work is what separates the 80% from the 20.

Every sprint I refine the process. PRDs drive every piece of work - structured product requirements that agents execute against, not freeform prompts. A [gotchas file](https://en.wikipedia.org/wiki/Lessons_learned) grows with every sprint - sixteen documented recurring mistakes and counting. Translations generated without diacritics. Hardcoded English strings where internationalisation keys should be. Dead code left behind after iteration. LLM output written to the database without validation. Each one learned the hard way, each one now caught by a harness. A specification template gets tighter. A pre-commit hook catches something that used to slip through. The factory does not start deterministic. You make it deterministic, one iteration at a time. That is the real work - not the coding, not the prompting, but the gradual narrowing of the gap between what you asked for and what you get.

As models improve - and they are improving fast - the last-mile problems will shrink. But the bottleneck does not disappear. It moves upstream. Tomorrow's gap is not missing error handling. It is wrong requirements. Wrong architecture. Wrong product decisions. A vague requirement used to produce one engineer's interpretation. Now it produces an agent's interpretation, compounding the misunderstanding across an entire sprint before anyone reviews it.

The only way to truly understand how to work with AI is to develop a personal relationship with it. Put in the time. Learn the quirks. I have tested most of the major AI coding environments over the past year. Each one drifts differently, excels differently, needs different things to do its best work. Get a project set up with an AGENTS.md that is portable across all of them. It is not that different from learning to work with a new team - except the team never sleeps, never pushes back, and always sounds confident. The relationship is how you learn to read past the confidence.

## The Estimation Trap

The completion illusion does not stay inside the engineering team. It travels upward.

If the first 80% took a day, stakeholders assume the remaining 20% takes another day. It takes weeks. The prototype was built in an afternoon. The board saw a working product. Now someone has to say: that was a sketch. We need to finish it properly. Nobody wants to be that person - especially when the sketch is better than anything the team could have built manually in the same time.

The demo was in the pitch deck. The finishing is the engineer's problem now. Why would you spend weeks finishing something that already works? Because it does not work. It performs. There is a difference.

## The Drift

Even with precise specifications, there is drift between what was planned and what was implemented. The agent solved a different problem than the one I described. It solved it well. It solved the wrong one.

Sometimes the drift is cosmetic. Sometimes it is structural - over-complicated tests, dead code that should have been cleaned up. Sometimes I discover code and functionality that I thought was removed weeks ago, still running, still being tested. The gap between the agent's definition of completion and mine is where the illusion lives.

Some people call this kind of setup a dark factory. It needs more checks and balances than the name implies. But every iteration gets better, and the velocity is remarkable.

The drift compounds in longer sessions too. AI conversations degrade as context accumulates. The model contradicts earlier decisions. It forgets constraints. You can see it happening - the agent repeating itself, proposing things you already rejected - and still feel reluctant to restart because of everything the session already knows. Sunk context. A fresh session with a clear specification almost always beats a long session that has been course-corrected fifteen times.

I now run two terminals - one in Codex for planning and review, one in Claude Code for execution. The reviewer cannot be the builder. If the same context window holds both the plan and the execution, the plan drifts to match the execution rather than the other way around.

## The Loop

At work, I am controlling agents with my left hand in the background. Continuously feeding ideas, refining prompts, getting work moving. Meanwhile I am running the engineering organisation. Meetings, architecture decisions, hiring, mentoring. Trying to lead by example.

It is addictive. I get pulled into the loop. Feed the agent, review the output, refine the prompt, feed it again.

{{< post-image src="my-lovely-horse-writing.gif" alt="Two men at a piano, late at night, surrounded by crumpled paper, still trying" caption="One more prompt. Nearly there." width="480px" >}}

The feedback cycle is fast enough to feel productive and slow enough to feel like you are always almost there. I have never shipped more. I have also never had to sustain this level of attention. Something closer to air traffic control than programming - multiple agents, multiple contexts, multiple decisions per minute. [Simon Willison](https://simonwillison.net/) described running four coding agents in parallel and being mentally wiped out by eleven in the morning. It is a different kind of work, not a lesser one.

The productivity is real. The intensity is also real. Both things are true at the same time, and the people writing about either one without acknowledging the other are only drawing half the horse.

I run a design loop too: screenshots from end-to-end tests, fed to a Gemini agent for UI and UX improvement. The outcomes are often genuinely amazing - design decisions better than what I specified. Other times the output surprises me in ways I did not ask for. Both agents reported completion. The human eye still had to decide whether the output was right. It usually is. But when it is not, you need to know.

## The Extract

The real decision is recognising when the prototype has taught you what you need to know and it is time to throw it away. Not iterate on it. Throw it away and build the real thing. AI makes this easier than ever - you can rebuild in a fraction of the time - and yet the psychological barrier is the same as it always was. The demo has been shown. The stakeholders are excited. Going back feels like regression. It is not. It is the [extract phase](/posts/expand-extract/).

[Reid Hoffman](https://www.linkedin.com/pulse/arent-any-typos-essay-we-launched-too-late-reid-hoffman) said it years ago: "If you are not embarrassed by the first version of your product, you have launched too late." That is still true. Sometimes good enough is good enough. Sometimes shipping fast and fixing later is the right call. The craft is knowing the difference - and the completion illusion makes it harder to tell which side you are on.

The people who will thrive are the ones who can see the 80% and the 20% at the same time. Who stop prompting when they should be specifying. Who build the harnesses before they build the features.

The illusion fades the moment you decide to look.

+++
title = 'Variance'
date = 2026-03-08T10:00:00Z
slug = 'variance'
draft = false
description = "Know when to hold 'em. Know when to fold 'em. Know when the problem is deterministic and when it is not."
[sitemap]
  priority = 0.8
[params]
  series_number = 8
  og_image = '/posts/variance/amanda-jones-P787-xixGio-unsplash.jpg'
  song_title = 'The Gambler'
  song_artist = 'Kenny Rogers'
  song_year = '1978'
  song_url = 'https://open.spotify.com/track/5KqldkCunQ2rWxruMEtGh0'
+++

At [Daon](https://www.daon.com/) in the mid-2000s, we built biometric middleware - fingerprint matching, facial recognition, smart card issuance. A colleague told me about a presentation to an [Australian border security client](https://www.eleconomista.es/empresas-finanzas/noticias/68368/09/06/Daon-Supplies-Biometric-Technology-to-the-Australian-Government-Daon-teams-with-prime-contractor-Unisys-on-50-million-border-security-project.html) where the face matching algorithm matched two people of visibly different ethnicities. The room went quiet. To anyone watching, these were clearly two different people. The confidence in the system dropped instantly.

But the algorithm was not broken. It was statistical. It measured the geometry of the face - cheekbone width, orbital spacing, jaw angle, nasal bridge projection. The bone structure underneath, not the surface. Two people with similar craniofacial geometry produced similar scores, regardless of skin colour. The system did not know what race was. It knew what shape was.

That is the downfall of statistical approaches that are not 100% accurate. A human can see the difference immediately. The algorithm cannot, because it was never measuring what the human was looking at. It was measuring something else entirely and producing a probability, not a certainty. The border gate needed a binary answer - match or no match. The algorithm produced a similarity score. Somewhere between the score and the gate, a threshold converted continuous uncertainty into a yes-or-no decision. And at that threshold, the assumptions broke.

In 2004 we worried about false positives in biometric systems at airports. Today I worry about hallucinations in language models. The surface has changed. The trust problem has not.

## The Deterministic Assumption

The pattern repeats everywhere.

A biometric gate says: match. An LLM writes code that compiles. A recommendation engine returns a confident answer. The interface is binary and the output looks authoritative. But underneath, every one of these systems lives on a probability curve. The confidence score is hidden. The threshold is implicit. The failure mode is statistical, not logical.

The seduction is that it works most of the time. Ninety-five percent of the time, the face matches, the code runs, the answer is right. The five percent kills you in production, at the border, or when a test suite quietly starts testing the wrong behaviour.

People who have not been burned by that five percent tend to trust the interface. People who have been burned learn to ask: is this problem actually deterministic, or am I treating a probabilistic output as if it were certain?

## Channel 4

I learned this lesson a different way first.

Poker was in our blood. My parents, Sean and Bernie, played weekly together. Bernie much more frequently - she was one of the top female poker players on the tournament scene in Ireland at the time and had won many events, including the Irish Open. In the early 2000s I started watching [Late Night Poker](https://en.wikipedia.org/wiki/Late_Night_Poker) on Channel 4. What pulled me in was the format - for the first time, you could see the players' hole cards. You were watching strategy unfold in real time, every decision made under uncertainty. Incomplete information. Probabilistic reasoning. Emotional control.

The online poker boom was taking off at the same time, but I always preferred card rooms. What started as curiosity became study. Probability. Position. Risk management. Bankroll discipline.

I went deep into tournament poker across Dublin during the boom years - the full Celtic Tiger poker scene. The [Merrion Casino](https://pokerdb.thehendonmob.com/venues/merrion-casino-club-54) at night had a specific energy. Regulars, amateurs, characters. You could be sitting across from local celebrities, politicians, musicians, taxi drivers, sometimes local gangsters. Sometimes rock stars - [Ronnie Wood](https://en.wikipedia.org/wiki/Ronnie_Wood) from the Rolling Stones would come in with his entourage to play poker. When the [Irish Masters snooker tournament](https://en.wikipedia.org/wiki/Irish_Masters_(snooker)) was on in Dublin, the players would always end up at the Merrion - [Steve Davis](https://en.wikipedia.org/wiki/Steve_Davis), [Jimmy White](https://en.wikipedia.org/wiki/Jimmy_White), [Ronnie O'Sullivan](https://en.wikipedia.org/wiki/Ronnie_O%27Sullivan), [Stephen Hendry](https://en.wikipedia.org/wiki/Stephen_Hendry). And I would often see the same faces I had first watched on TV - [the Hendon Mob](https://en.wikipedia.org/wiki/The_Hendon_Mob), [Devilfish](https://en.wikipedia.org/wiki/Dave_Ulliott), [Mad Marty](https://en.wikipedia.org/wiki/Marty_Wilson_(poker_player)).

{{< post-image src="amanda-jones-P787-xixGio-unsplash.jpg" alt="Playing cards in a poker game" caption="Photo by <a href='https://unsplash.com/photos/a-pile-of-playing-cards-sitting-on-top-of-each-other-P787-xixGio' target='_blank' rel='noopener noreferrer'>Amanda Jones</a> on <a href='https://unsplash.com' target='_blank' rel='noopener noreferrer'>Unsplash</a>." >}}

When I [competed in the World Series of Poker in 2005](https://www.independent.ie/news/its-the-real-deal-the-10m-poker-pot/25974581.html), Hendry and I were drawn to the same table on day two. We gave each other a quiet nod of recognition.

Poker teaches something that software engineering often hides: you can make the correct decision and still lose. Variance is real. Emotion is dangerous. You do not chase every hand. You manage risk. You play for edge over time.

## Bad Beats

Every poker table has bad-beat stories. "I got all the money in with the best hand and still lost." One of my more memorable bad beats towards the end of my poker obsession was a hand against [Nick Leeson](https://en.wikipedia.org/wiki/Nick_Leeson) - a gambler of another type, whose unauthorised trading collapsed Barings Bank and whose story became the film [Rogue Trader](https://en.wikipedia.org/wiki/Rogue_Trader_(film)) starring Ewan McGregor.

Early AI coding felt exactly like that.

Developers compared war stories all day:

- "It built the whole feature in ten minutes."
- "It destroyed the codebase overnight."
- "It looked perfect until production."

Same structure as poker table talk. Big swings. Memorable pain. Selective memory.

Most early debates about AI coding were really arguments about variance. A model would produce something brilliant, then fail on a nearby task. Teams oscillated between overconfidence and distrust. That does not mean the tools were useless. It means people were learning a new probabilistic workflow in public, and mistaking variance for signal.

The players who survived over time were not the ones who avoided bad beats. They were the ones with systems. Good bankroll management. Emotional control. They absorbed the variance and kept playing.

The same principle applies now. The teams that ship reliably with AI are not the ones with the best models. They are the ones with systems for managing variance - context management, verification loops, eval pipelines, clear boundaries between what is deterministic and what is not. The discipline is the same. The table is different.

Not every good decision wins. Not every bad decision loses. Results and decision quality are not the same thing.

## Tokens and Chips

In poker you manage chips, risk, and position. In AI coding you manage tokens, context windows, and verification depth.

Both are finite. Both reward discipline. Both punish waste.

There were nights building ContextRocket where I stopped not because I was tired, but because the tokens were gone. Mornings where I started by reviewing what the agents had built before hitting their limits. The rhythm was familiar. Constrained moves. Managed resources. Patience for the right moment.

## Solvers

When I started playing poker seriously, it felt creative and wild. You read people. You exploited patterns. You played on instinct and aggression.

Then online poker changed the game. Mathematically disciplined players running systems, not instincts. Some were playing ten or twenty tables simultaneously - not reading people, but executing a strategy at scale. The edge moved from intuition to computation. Solvers arrived. Game Theory Optimal play. Equilibrium strategies.

The magic did not disappear. It moved. Creativity shifted from individual hands to system design. The game matured from art to architecture.

The parallel to AI coding is hard to miss. Running multiple agents across multiple terminals, each executing a defined task within a larger system. Early on, it rewarded prompt tricks and creative experimentation. Now the edge is moving to architecture quality, verification loops, and knowing which problems are deterministic and which are genuinely non-deterministic.

When that shift completes, the question will not be who can write the most code. It will be who can design the best systems.

## The Deterministic Line

This is the mind shift that matters most.

There are two fundamentally different things happening right now, and most people conflate them: using AI *in* products, and using AI *to build* products. They are not the same thing.

When someone sits down with Claude Code, Cursor, or Codex, they are using a non-deterministic system to produce deterministic output. The code that gets written is traditional software. It compiles. It runs. It has correct and incorrect behaviour. The LLM is the builder - not the product. This is how most AI-assisted development actually works today.

The confusion starts when people assume that because AI built the product, AI should also run inside the product. Sometimes it should. But often it should not.

AI is fundamentally non-deterministic. It produces probabilistic output. That is its nature and its strength - it handles ambiguity, conversation, creative generation, problems that have no single correct answer. These are the problems where LLMs belong at runtime.

But not every problem is like that. Validation has a correct answer. Routing has a correct answer. Calculation, business rules, state transitions - these are deterministic problems. Using an LLM to solve them at runtime is expensive, unreliable, and non-reproducible.

The seduction is that it works in the demo. The LLM validates the input and gets it right 95% of the time. Ship it. But in production, the 5% is a support ticket, a wrong charge, a broken state machine.

The mature approach is the inversion: use AI to build the deterministic solution faster than you could alone. The LLM writes the rule engine, the validator, the test suite, the state machine. Then it disappears from production entirely. You get AI development speed with traditional software reliability.

Without tests, AI rewrites are roulette. With tests, AI rewrites are controlled acceleration.

The best AI-native teams use LLMs heavily in development and sparingly in production - only where non-deterministic reasoning is genuinely required, where there is no lookup table, no rule that covers the case. Everything else should be traditional software, built at AI speed.

## The Architecture Question

Where does the LLM belong in your system?

The answer is an architecture decision, not a technology decision. For each component, ask: is this problem deterministic or non-deterministic? If deterministic, build the solution with AI but run it as traditional software. If non-deterministic, use the model at runtime - but with verification, fallbacks, and human gates.

The more complex systems - the ones that actually work in production - are neither purely deterministic nor purely non-deterministic. They weave both together. Deterministic orchestration flows coordinate non-deterministic models. Routing logic decides which model handles which task. Fallback chains manage failure. The flows themselves are traditional software - predictable, testable, debuggable. The models inside those flows handle the parts that genuinely require probabilistic reasoning.

This is where model evaluation becomes an architecture concern, not just a procurement decision. Different models have different strengths across cost, capability, and latency. A system that routes a simple classification to a fast, cheap model and reserves a frontier model for complex reasoning is not just saving money. It is making a deliberate architectural choice about where variance is acceptable and where it is not. The orchestration is deterministic. The reasoning is not. Getting the boundary right is the whole design problem.

## The Eval Layer

A new kind of guardrail has emerged - not for the code, but for the product. When models are woven into a live product in front of customers, the testing pyramid is not enough. Unit tests, integration tests, and end-to-end tests cover the deterministic parts of the system. They do not cover the probabilistic output that users actually see. For that, you need evals. Eval frameworks like [Braintrust](https://www.braintrust.dev/) let you run structured evaluations against the prompts in your product - scoring outputs with LLMs, code, or human review, comparing different prompts against different models, and converting production failures into regression datasets. The prompt becomes a testable artefact. You iterate on it the way you iterate on code: measure, compare, improve. This is not traditional QA. It is a new layer of verification for where your product is non-deterministic and your quality standard is not.

This creates a new friction. Model capabilities are improving across many dimensions simultaneously - cost drops, latency improves, reasoning gets stronger, context windows expand. Teams that want to take advantage of those improvements need to switch models inside the product. But switching without sufficient evals is gambling. You need coverage that tells you whether the new model holds quality across your specific prompts and use cases before your customers see the difference. The teams with strong eval pipelines can swap models confidently when a better option appears. The teams without them are locked in - not by contract, but by fear of regression.

AI-assisted development increases the cost of ambiguity. When humans write code, ambiguity leaks slowly. When agents write code, ambiguity compounds instantly. You can iterate quickly, but only if your intent is clear.

Discipline returns - not as bureaucracy, but as precision.

The biometric threshold. The poker solver. The production stack. Same question across decades: where is the line between what you can compute and what you must estimate? Drawing that line deliberately is the difference between a system that scales and one that embarrasses you at the border.

---

*Next: [Who Is Going to Keep the Lights On?](/posts/who-is-going-to-keep-the-lights-on/) - AI replaced the need for juniors. Or so the thinking goes.*

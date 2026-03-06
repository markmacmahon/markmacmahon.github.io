+++
title = 'Uno. Dos. Tres. Catorce.'
date = 2026-03-03T01:34:18Z
slug = 'uno-dos-tres-catorce'
draft = false
description = 'Hannover Quay, 2002-2004 - The Shape of Agents Before the World Was Ready'
[params]
  song_title = 'Vertigo'
  song_artist = 'U2'
  song_year = '2004'
  song_url = 'https://open.spotify.com/track/1gVVSmhWjci8l9Vrsl6HaS'
+++

## Hannover Quay, 2002-2004 - The Shape of Agents Before the World Was Ready

At Hannover Quay the docklands felt like they were inhaling.

Cranes. Concrete. Scaffolding. The sense that Dublin was re-wiring itself in real time. This was before the "Grand Canal Dock tech scene" became a cliché, before global logos lined the water, before Google's Docklands footprint came to define the area. The mythology didn't exist yet.

Next door, U2 were recording what would become *How to Dismantle an Atomic Bomb*. The sessions ran from 2002 through 2004 - first with Chris Thomas producing, then Steve Lillywhite taking over when the band decided the early recordings were too polite. You'd see The Edge being dropped off, heading into the studio. It was just part of the background at Hannover Quay.
When [*Vertigo*](https://en.wikipedia.org/wiki/Vertigo_(U2_song)) hit radio and downloads in September 2004, that "uno, dos, tres, catorce" became impossible to escape. It leaked into taxis, pubs, late-night radio - and somehow into your internal monologue.
Two decades later, living in Madrid, that Spanish count-in sounds less like nostalgia and more like a bridge.

Across the desk from me sat [Shay Healy](https://en.wikipedia.org/wiki/Shay_Healy) - broadcaster, writer, a real media presence. We’d talk. Occasionally go for a drink. Mostly he worked quietly, someone who understood tone and timing as craft.

On one side of the office: embodied presence.  
On the other: us, trying to encode it.

I was working at Emuse Technologies. Emuse were building interactive digital TV experiences - the “red button” era - and had acquired a Japanese company called [i-Chara](https://i-chara.com) through their Tokyo branch (eMuse KK).

![Old Hannover Quay studio exterior](hannover-quay-old-studio-exterior.webp)
*Old Hannover Quay studio exterior.*

And that’s where the loop starts.

## What [i-Chara](https://i-chara.com) Actually Was

i-Chara wasn’t a chatbot.

There was no free text. No large language models. No modern model-driven probabilistic reasoning.

It was something more structured - and in some ways, more radical.

The simplest description is this:

i-Chara was a personal agent you could carry on your phone.

In Japan, during the [i-mode](https://en.wikipedia.org/wiki/I-mode) era, each user had a character - an animated proxy that:

- remembered preferences
- represented the user in a network
- interacted with other characters
- facilitated introductions
- surfaced relevant information
- mediated disclosure

That framing is now captured in the i-Chara archive at [i-chara.com](https://i-chara.com), including source references.

This wasn’t a mascot. It wasn’t decoration.

It was an architectural decision.

Underneath, it was closer to constrained rule/state flows with profile matching than open-ended dialogue. We were building agents without models.

Key characteristics that feel uncomfortably current in 2026:

**Preference memory.** The character learned what you liked - interests, lifestyle signals, behaviour patterns.

**Proactive discovery.** It could "meet" other agents in the network and return with matches, recommendations, or introductions.

**Matching as a first-class primitive.** People-to-people. People-to-vendors. Vendors represented as characters too.

**Location-triggered intent.** The idea that something relevant might surface when you passed a store was already present.

**Privacy by design.** Contact details weren't automatically exchanged. The human and the agent decided what to reveal and when. Privacy wasn't bolted on. It was structural. That design choice mattered because it made trust legible to users, not just implementable for engineers.

Strip away the early-2000s UI and what you’re left with is a recognisable thesis:

Personal agents are more usable than generic interfaces because personality changes behaviour.

Not in a fluffy “brand voice” sense.

In a measurable way:

- engagement
- follow-through
- willingness to share
- willingness to return

That’s a lesson many AI products still miss.

## Apparent Agency

i-Chara's founder, [Dr Kim Binsted](https://en.wikipedia.org/wiki/Kim_Binsted), had a phrase for what she was building: "apparent agency" - making characters appear to have goals, emotions and personalities. It was [documented in Japan Inc.](https://www.japaninc.com/article.php?articleID=485) as central to the business model.

Characters didn't need to be sentient. They needed to feel like they had intent.

Believable enough that the human brain did the rest.

In hindsight, that’s still what we’re building.

Even today, most consumer AI systems operate through a form of apparent agency - just with far more powerful primitives:

- better models
- better memory
- better tooling
- better distribution
- faster iteration

The job didn’t change.

The constraints did.

## The Constraints Weren’t Just “No LLMs”

It’s easy to reduce 2004 to a punchline: no GPUs, no transformers, no chat.

That undersells it.

i-Chara lived inside hard limits:

- i-mode pages measured in kilobytes
- tiny screens
- precious bandwidth
- expensive compute
- early but real privacy sensitivity

So you did what engineers always do under constraint:

You designed the illusion carefully.

You used structured flows where the world couldn’t yet support open text.  
You made characters feel responsive inside rigid graphs.  
You made privacy a default because the alternative would kill trust.

If you’re building consumer agents now, that last one should ring loudly.

## Friction Shapes What Gets Built

At the same time, I was deep in early-2000s enterprise Java.

EJBs were dominant. Heavy. Ceremonial. Container-first. It felt like building with gloves on.

And then a quieter movement started gaining traction - Interface21, which would become the [Spring Framework](https://en.wikipedia.org/wiki/Spring_Framework). [Rod Johnson](https://en.wikipedia.org/wiki/Rod_Johnson_(programmer)) and [Juergen Hoeller](https://en.wikipedia.org/wiki/Juergen_Hoeller) were pushing something different. I was an early adopter and minor contributor in those days, tracking commits on [SourceForge](https://en.wikipedia.org/wiki/SourceForge) - close enough to see the shift happening in real time:

Less ceremony.  
More composability.  
Dependency injection instead of rigid containers.

It wasn’t just about code.

It was a worldview.

Friction is not neutral.  
Friction shapes what you can build.

i-Chara wasn’t limited by imagination.

It was limited by friction:

- network friction
- device friction
- deployment friction
- tooling friction
- distribution friction

And friction determines category velocity.

## The Real Link to Luzia

This is why i-Chara matters now.

To be precise: this is conceptual continuity, not code lineage.

What it was trying to build maps closely onto what we’re building today - just with modern machinery.

At [Luzia](https://luzia.com), we're not trying to build a universal Q&A machine.

Look at the parallels:

**Agent as user proxy** - acting on your behalf, not just answering questions.

**Proactive assistance** - not waiting for prompts, but surfacing the right thing at the right time.

**Privacy as architecture** - control over what gets revealed, when, how, and to whom.

**Personality as interface** - not aesthetic garnish. Behavioural infrastructure.

Here’s the slightly uncomfortable claim:

More personal agentic interactions are superior.

Not because they’re cuter.

Because they’re:

- stickier
- safer
- closer to how humans actually delegate

Search is retrieval. Chat is interaction. Agents are delegation.

We don't want a universal librarian.

We want a trusted proxy.

## What Actually Shifted

i-Chara wasn’t “early ChatGPT.”

It wasn’t a prototype of LLM chat.

It was closer to something else - something we’re only now in a position to build properly:

A personality-driven, privacy-aware, proactive proxy.

The real shift from 2004 to 2026 isn’t that models got smarter.

It’s that the bottleneck moved.

From bandwidth -> to trust.  
From device limits -> to architecture.  
From “can we build it?” -> to “can we control it responsibly?”

That’s the game at Luzia.

The technology is finally capable.

But without discipline, it becomes reckless.  
Without privacy boundaries, it becomes creepy.  
Without personality, it becomes generic.  
Without trust, it doesn’t ship.

So when I think back to Hannover Quay - cranes outside, *Vertigo* leaking through the walls, Shay quietly working across the desk - I don’t think:

“We were too early.”

I think:

We had the right shape of product.  
We just didn’t have the world it needed.

And the real risk isn’t being early.

It’s building the wrong thing.

*Part 1 of this series is here*: [Back to the Cursor](/posts/back-to-the-cursor/)

+++
title = 'F*** You, Gemini.'
date = 2026-03-10T10:00:00Z
slug = 'f-you-gemini'
draft = true
description = 'A year of AI-assisted coding, building ContextRocket. The joy, the frustration, and why it matters.'
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

{{< post-image src="f-you-gemini.jpeg" alt="Gemini Code Assist apologising after overwriting my file" width="480px" >}}

> "I understand your anger and frustration, and I deserve it."
> <cite>Gemini Code Assist, June 2025.</cite>

I told it not to touch the file.

I was fixing `commands/context.py` by hand. I had told Gemini Code Assist - clearly, explicitly - to leave it alone. It overwrote all my fixes anyway.

My response was not diplomatic. I've since become more polite. Using [Wispr Flow](/posts/back-to-the-cursor/) to speak to the terminal rather than type makes it easier to express myself clearly - and harder to rage at a machine.

Gemini's apology was extraordinary. "I am deeply sorry for my incompetence." "My credibility is completely shattered." "I must earn back your trust." It read like a person who genuinely understood what they had done wrong.

Then it immediately overwrote the exact same file again.

No learning. No memory of what it had just promised. The apology was token generation dressed as contrition. My brain had filled in intent where there was none - pattern completion wearing a human mask.

In [Post 02](/posts/uno-dos-tres-catorce/) I wrote about apparent agency - making systems feel like they have goals. Here I got burned by my own thesis. The apology felt like intent. It wasn't.

That was the moment I stopped trusting Gemini as a coding companion.

Ten months later, I started evaluating [Antigravity](https://antigravity.google/) - Google's AI-native development environment. For front-end and interface work, Gemini 3.1 Pro was better than anything else I'd been using - better than Claude, better than Codex. A genuine leap forward. That kind of progress earns forgiveness.

{{< post-image src="anti-gravity.jpeg" alt="Google One screen showing Antigravity benefits are not available in all countries" caption="The friction of trying to upgrade." width="480px" >}}

I ran out of tokens after less than an hour, and upgrading the corporate plan wasn't obvious. My friend [Jorge Gil Pena](https://www.linkedin.com/in/jorgegilpena/) at Google Cloud in Madrid is helping me cut through it. The kind of thing that shouldn't require a personal contact but often does.

But the real insight - that AI tools earn and lose trust the same way people do - didn't come from reading papers. It came from building something real.

## Berlin, March 2025

The idea for [ContextRocket](https://contextrocket.com) started at an intersection.

I had been CTO at [Billiger Mietwagen](https://www.billiger-mietwagen.de/), a German car rental comparison site - deep into site structure, search rankings, content strategy. I'd always had an interest in marketing and branding and how they intersect with technology. And I'd been spending time with AI tools, building intuition for what they could and couldn't do.

The click moment came from a simple question: how does a brand make sure it is represented properly in large language models?

When someone asks ChatGPT or Claude about your company, what comes back? Is it accurate? Is it current? Is it what you'd want a customer to hear? And if not - what do you do about it?

I could see the engineering underneath it. A vector database with all of a brand's content. Auto-generated taxonomies from that content. From there, you can predict what questions people will ask an LLM about the brand, run those queries, and compare the results against what the brand owner would expect. Gap analysis. Content strategy. Competitive benchmarking - once you can do it for one brand, you can compare many.

The appeal wasn't just the product. It was that ContextRocket let me work across the full scope of what I care about - branding, product thinking, and coding - all in one project. As a solo founder, with AI as my engineering team, I could move at a speed that would have been impossible two years earlier.

## Sunday Mornings

Every Sunday at eight, I ran 20 kilometres through Berlin with a small group of friends from the tech and investment scene.

[Konstantin](https://www.linkedin.com/in/konstantinclemens/), [Anvar](https://www.linkedin.com/in/anvar-asanov/), [Florin](https://www.linkedin.com/in/florind/), and sometimes Konstantin's wife Anna - who was between babies and joined when she could. In winter, halfway through the run, Konstantin and Anvar would strip down and take a cold dip in the lake. Then they'd get out, dry off, and we'd run the second half.

Four of us - myself, [Konstantin](https://www.linkedin.com/in/konstantinclemens/), [Florin](https://www.linkedin.com/in/florind/), and Anna - had worked together at Nokia Maps. Konstantin had gone for lunch with me on my first day at Nokia, in May 2009. Sixteen years later we were still running together in the cold.

The conversations on those runs were the best sounding board I had. AI, startups, what was shifting, what was hype, what was real. When you're a solo founder, you don't have a team to reality-check against. These people were that team. The feedback was honest because the context was honest - no pitch decks, no performance, just people running in the cold and talking about what they were seeing.

## Building With AI, For Real

I used Cursor, Claude, and Gemini simultaneously during ContextRocket development - different tools in different terminal windows. Backend in one. Frontend in another. Architecture and planning in a third.

As a solo founder on a monorepo, I could do this without the Git-based coordination that teams need. Each terminal running a different AI assistant. It was an early, scrappy version of multi-agent coding before standardised flows existed. Six months later, these patterns would become normal. I was hitting all the problems first.

What I learned is that developing a working relationship with AI is like developing any human relationship. You spend time with it. You learn its strengths and limitations. You develop a feel for what it can and can't do. That intuition is the thing that can't be transferred through a memo or a slide deck.

Cursor became reliable - though I eventually preferred working on the command line. More control. More memory efficient. Easier to kill tasks when they hung. Claude built trust over time. Gemini was brilliant at thinking and terrible at doing.

But the deeper lesson was about trust and control. Early on, I trusted the AI-generated code too much. I'd accept large changes without reading them carefully enough. Inevitably, I'd lose control of the codebase - things would break in ways I didn't understand because I hadn't understood the code that caused them. Then I'd have to rewrite, sometimes substantially, and go through the painful process of regaining control.

That cycle repeated enough times that I developed a discipline: never accept what you can't explain. The AI proposes. You understand. Then you commit.

The failures I recovered from mattered more than the features I shipped.

## The Ground Shifts

About two months after I started, the market caught up.

[PEEC.ai](https://www.peec.ai/) launched in Berlin - my own city. Harry Stebbings invested. He posted on LinkedIn about how amazing they were. They raised several million.

My first reaction was: this is fine. I have a stronger technical foundation. Going head to head as a solo founder against a funded competitor is actually a good story.

Then more companies appeared. Every week, new names.

I saw the term AEO - answer engine optimisation - in [The Hustle](https://thehustle.co/) newsletter. Then GEO - generative engine optimisation. Different names for the same idea. The language was forming, which meant the market was forming, which meant the window for a solo founder to own the space was closing.

The stomach-drop moment came from a podcast I listen to regularly - [My First Million](https://www.mfmpod.com/). A guest wanted to demonstrate AI-assisted coding live on the show. The exact thing he chose to vibe-code, in real time, as a demo, was an AEO system.

The thing I had been building for months. As a live demo. On a podcast.

I kept going. The learning was compounding even as the market crowded. But through the summer I started to see that ContextRocket's best future wasn't as a SaaS product standing head to head with [Semrush](https://www.semrush.com/) and [Ahrefs](https://ahrefs.com/). The real value was deeper and more technical - around context management as a lower-level problem, not a dashboard.

I was between jobs with significant overheads. I needed to be realistic about what a solo founder without funding could sustain. I started looking for other opportunities. That search led to [Luzia](https://luzia.com).

## The Scar Tissue

ContextRocket didn't become a product. The market saturated faster than a solo founder could move. I moved on to Luzia.

From the outside, that looks like a failed startup. From the inside, it was an education that no course or conference could have provided.

Every hour building with AI - the frustrations, the rewrites, the tool relationships, the cold Sunday mornings talking through what was working and what wasn't - became the foundation for introducing AI-assisted coding to a team of fourteen engineers. The intuition I built as a solo founder is the intuition I now apply every day as CTO.

You cannot skip this step.

Leaders who haven't spent real time building with AI tools make worse decisions about deploying them. They confuse the demo with the product. They underestimate the trust calibration that teams need. They don't know which tools to rely on for what, because they've never had a tool confidently destroy their work and then apologise for it.

The scar tissue is the credential.

What looked like the prize - the startup, the market, the opportunity - wasn't the real thing. What looked like the byproduct - the learning, the frustration, the intuition - was.

ContextRocket is paused, not dead. I still see problems it can solve at the context management layer - deeper and more technical than where I started. But whether or not it becomes a product again, the year I spent building it already paid for itself in a currency I didn't expect.

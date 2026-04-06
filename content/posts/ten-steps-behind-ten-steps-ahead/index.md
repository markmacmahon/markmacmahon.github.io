+++
title = 'Ten Steps Behind, Ten Steps Ahead'
date = 2026-04-06T10:00:00Z
slug = 'ten-steps-behind-ten-steps-ahead'
draft = true
description = 'On empathy, humility, and questions worth asking every time.'
[sitemap]
  priority = 0.8
[params]
  series_number = 13
  coming_soon = false
  song_title = 'Step On'
  song_artist = 'Happy Mondays'
  song_year = '1990'
  song_url = 'https://open.spotify.com/track/1GfVc3sAQnGSZ8J5ngH5ys'
+++

> "The major problems of our work are not so much technological as sociological in nature." - [Tom DeMarco & Timothy Lister](https://en.wikipedia.org/wiki/Peopleware:_Productive_Projects_and_Teams), Peopleware, 1987.

The technology changes every few years. The people problems travel with it - and AI has turned up the volume.

The engineer building microservices when a monolith would do. Building for scale when there are no users yet. The stakeholder who wanted the big plan upfront when a small team could learn more by shipping incrementally. The product manager whose entire experience told them that building APIs takes weeks - and they mean well, they are drawing on what they know, but AI has changed the baseline underneath them. The SaaS tool brought in to solve a problem that did not exist yet - and once it is in, almost impossible to remove. As [Tolkien](https://www.goodreads.com/quotes/162498-short-cuts-make-long-delays) put it: "Short cuts make long delays."

{{< post-image src="ten-steps-behinh-10-steps-ahead.jpeg" alt="Tweet: In programming, if someone tells you you're overcomplicating it, they're either 10 steps behind you or 10 steps ahead of you" caption="<a href='https://x.com/acdlite/status/1009317963382439936'>@acdlite</a>, June 2018." width="480px" >}}

I first saw this tweet in 2018 and it has stayed with me. What makes it so good is that it invites empathy. Not "who is right" but "what are they seeing that I am not?" And the other way around - "what am I seeing that they might not be?"

Part of what makes this so hard is the gap between implicit and explicit knowledge. [Michael Polanyi](https://press.uchicago.edu/ucp/books/book/chicago/T/bo6035368.html) put it simply: "We can know more than we can tell." The most performant teams operate implicitly - shared context, shorthand, decisions that do not need explaining because everyone already understands the reasoning. That is what makes them fast. It is also what makes them impenetrable to anyone outside the team. A new product manager walks in, sees decisions being made without explanation, and thinks the team is overcomplicating things. The team is not hiding anything - they just cannot see what needs to be made explicit because they have internalised it. The [curse of knowledge](https://mitsloan.mit.edu/ideas-made-to-matter/curse-knowledge-why-experts-struggle-to-explain-their-work) - once you know something, you cannot remember what it was like not to know.

And it is rarely clean. A product manager can be right about what the market needs and wrong about why the architecture matters - or right about the architecture because they have seen what scales. An engineer can be right about the system design and wrong about the business case - or right about the customer because they built the thing the customer actually uses. AI blurs these lines further. Ten steps ahead on one dimension, ten steps behind on another, in the same conversation.

Over the years I have found a few things that help. When I can see a pattern that nobody else in the room sees, I try to influence by asking questions rather than stating conclusions. It gives the other person space to think instead of forcing the answer. When someone tells me I am overcomplicating something and I am not sure they are right, I look for the middle ground - what is the smallest thing we can build where we learn?

After building my own startup, [Localstream](https://www.crunchbase.com/organization/localstream), I started thinking less about the solution and more about the business. I had been following [Des Traynor](https://www.intercom.com/blog/what-does-feature-creep-look-like/) at Intercom for a while before I saw him speak at a startup summit in Berlin in 2013. "Good product owners let in very few dud features. Great ones kill them on sight." A few years later I saw [Sean Ellis](https://en.wikipedia.org/wiki/Sean_Ellis_(business)) at a growth hacking meetup at BCG Digital Ventures in Berlin. The core idea is simple: learn before you build. A 404 page test to see if anyone clicks before writing a line of code. Ship the smallest thing, measure, decide.

Of course this does not work in every environment. Sometimes stakeholders just want the thing they asked for and will take the pain of learning too late. Vanity features. Power dynamics. "We promised the board we'd ship this." The question still applies - they might be right about the market and wrong about the approach, or wrong about both.

I [wrote before](/posts/craftsmanship-vs-craftsmanshit/) that AI amplifies whatever you bring to it. The same is true here - the craft and the people problems alike. Things that took weeks can now be done in hours. But you can ship ten things in the time it used to take to ship one, and you still have to maintain all ten. [Fred Brooks](https://en.wikipedia.org/wiki/No_Silver_Bullet) drew the distinction in 1986: accidental complexity versus essential complexity. AI is good at stripping out the accidental kind. But when everything is possible, the essential complexity becomes knowing what not to do. That is strategy.

AI has also introduced a new version of the problem. Because it is so much easier to create software now, people reach conclusions before they have understood the problem. They think they understand something because they built something. The [Dunning-Kruger effect](https://en.wikipedia.org/wiki/Dunning%E2%80%93Kruger_effect) accelerated - confidence arrives before competence. And the tools push everyone towards being solution-oriented rather than problem-oriented, because building is now the easy part. Understanding what to build, and what not to build, is harder than ever.

In every conversation about complexity, in every disagreement about approach - not "who is right" but "what might I be missing?"

The contexts change. The tools change. The question does not.

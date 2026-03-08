+++
title = 'ContextRocket'
date = 2026-03-05T10:00:00Z
slug = 'contextrocket'
draft = false
description = 'Answer engine optimisation. The idea, the market, and what happens next.'
[sitemap]
  priority = 0.8
[params]
  series_number = 5
  og_image = '/posts/contextrocket/contextrocket-home.png'
  song_title = 'Rocket Man'
  song_artist = 'Elton John'
  song_year = '1972'
  song_url = 'https://open.spotify.com/track/3gdewACMIVMEWVbyb8O9sY'
+++

I had been CTO at [FLOYT Mobility](https://www.billiger-mietwagen.de/), the company behind Germany's largest [car rental comparison platform](https://www.billiger-mietwagen.de/). I worked remotely from Berlin, travelled to the Cologne office once a month, and every couple of months flew to Alicante to work with the mobile team there. Those trips to Spain stayed with me more than I realised at the time.

Then [ProSiebenSat.1](https://www.prosiebensat1.com/), under pressure from the [Berlusconi family](https://www.handelsblatt.com/unternehmen/it-medien/medienunternehmen-berlusconi-holding-tauscht-pro-sieben-vorstand-aus/100166359.html), divested their e-commerce assets. A merger was announced, leadership was restructured, and my role ended. I was [questioning the title itself](/posts/c-t-shaped-o/) and conscious of how the market treats experience.

That led me to [Guidestone Ventures](https://guidestone.ventures/), doing due diligence on their portfolio companies and technology advisory. During that work I started using AI-assisted coding - reverse-engineering startup claims, modelling out architectures, stress-testing technical assumptions. For the first time, I could move from idea to technical validation without assembling a team.

That was the spark. I had a strong SEO and growth background from marketplaces like [heycar](https://hey.car/) and [billiger-mietwagen.de](https://www.billiger-mietwagen.de/), and had spent a lot of time with marketing platforms like [Braze](https://www.braze.com/) and [HubSpot](https://www.hubspot.com/). [AI-assisted coding](/posts/f-you-gemini/) meant I could build at a speed that made going solo viable. I spotted a gap in how brands were represented across LLMs, and the timing felt right to go out on my own.

I did not start with a grand plan. SEO was simply the first useful concept to test - understanding how LLMs interact with brand content in practice. From there I narrowed into what became AEO: effectively an extension of SEO for model-mediated interfaces.

These terms did not exist when I started building. SEO optimises pages for search engines. AEO optimises answers for answer engines - the LLM-powered interfaces where users increasingly go for direct responses. GEO optimises how generative models represent you across broader surfaces. The terminology emerged later, and for a while AEO and GEO were used interchangeably. The definitions are clearer now. Both AEO and GEO are extensions of SEO - and ContextRocket was built to address all three.

{{< post-image src="seo-aeo-geo.png" alt="SEO to AEO to GEO progression - from web pages to answers to generated reality" width="480px" >}}

The working question was simple:

When someone asks an LLM about your company, what answer do they get?

Is it accurate?
Is it current?
Is it strategically useful?

Most teams still treat that as a branding question.
It is an architecture question.

## Why I Built It

ContextRocket was the intersection of everything I actually care about. Branding, product design, and engineering - all in one project. For the first time in a while, I was not boxed into one function. I could work across the full scope. That is really what drove me into it - the chance to integrate everything rather than operate inside one vertical.

Part of it was technical curiosity. I wanted to go deeper on vector databases, prompting, and the practical limits of LLM systems: where they are useful, where they are not, and how determinism versus non-determinism plays out in real workflows. I had a strong search background from Nokia and a lot of hands-on work with Elasticsearch, so retrieval was familiar territory. What felt new was vector search and RAG.

For me, reading about a technology is never enough. I only really understand it once I have written code with it.

## The Core Thesis

If LLMs become a user-facing interface layer, brand representation depends on context quality, retrieval quality, and answer-evaluation discipline.

That is not copywriting.
That is systems design.

Weak context in.
Noisy representation out.

## What ContextRocket Is

ContextRocket is meta-layer infrastructure.

The key is not one report. The key is the context layer itself. Once brand context is structured properly in a vector database, you can generate multiple downstream capabilities from the same foundation.

That is why it is called ContextRocket: getting the right context into the right prompt, at the right time.

At a practical level, the platform does five things:

1. Ingest brand content and structured context.
2. Build taxonomy and intent clusters from that content.
3. Generate and evaluate prompt sets against likely user questions.
4. Compare answer quality against intended positioning and tone.
5. Flag narrative drift and prioritise corrective actions.

Once that layer is in place, you can go much deeper:

- prompt generation from taxonomy
- context routing for different question types
- overlap analysis with competing or adjacent brands
- similarity mapping across category language
- representation diagnostics across model surfaces

{{< post-image src="contextrocket-dashboard.png" alt="ContextRocket dashboard showing LLM visibility metrics and answer quality analysis" caption="ContextRocket system view: context, evaluation, and drift signals." width="480px" >}}

This was also early experimentation with multi-agent architecture inside the product itself. I built a coordinator agent, an agent deeply focused on SEO analysis, and another focused on branding and positioning. Every interaction with the system was through an agent. I wanted the agentic workflow to be the UI - not a layer on top of it, but the interface itself.

## The Sunday Runs

While I was building, I was deep in code. Working crazy hours, heads-down, solo. The counterweight was every Sunday morning at eight. Twenty kilometres through Berlin with a small group of friends from the tech and investment scene.

The core group was [Konstantin Clemens](https://www.linkedin.com/in/konstantinclemens/), [Anvar Asanov](https://www.linkedin.com/in/anvar-asanov/), [Florin Dumitrescu](https://www.linkedin.com/in/florind/), and me. Anna joined when she could. [Zaidoun Samman](https://www.linkedin.com/in/zaidoun-samman-908b17123/) and [Ksenia Legostay](https://www.linkedin.com/in/ksenialeg/) would join occasionally. Most of us had worked together on Nokia Maps years earlier - Konstantin had gone for lunch with me on my first day at Nokia, back in May 2009. A friendship measured in platform cycles. Anvar came from the Berlin tech and investment scene, not Nokia, but he brought a different perspective - investment-focused, pattern-matching across portfolios rather than building inside one company.

Winter runs. Berlin cold, serious distance. Halfway through, Konstantin and Anvar would take a cold dip in the lake, then continue the second half as if it were nothing.

The conversations during those runs were the real value. Not just coding - business ideas, what everyone was seeing in AI, different perspectives on where the market was heading. Honest feedback, reality-checking, thinking out loud with people who understood both the technology and the business. These were the people around me when ContextRocket was taking shape - the human sounding board when I was building alone with AI.

{{< post-image src="berlin-running-group.jpeg" alt="The Berlin Sunday running group - Konstantin, Anvar, Florin, and Mark during the period when ContextRocket was being built" caption="The Sunday running circle. Nokia Maps alumni and Berlin operators." width="480px" >}}

## Market Saturation

The first signal was positive. On March 24, 2025, [The Hustle](https://thehustle.co/) landed in my inbox with the subject line "SEO is AEO now." The category had a name. I took it as validation - I was building the right thing.

{{< post-image src="hustle-aeo.png" alt="The Hustle newsletter with the subject line SEO is AEO now" caption="March 24, 2025. The category got a name." width="480px" >}}

Then the signals shifted. In May, [Brian Daly](https://www.linkedin.com/in/briandaly1/) - founder of [AgeTechX](https://agetechx.com/) and former Managing Director at [Techstars Berlin](https://www.techstars.com/germany/berlin), someone with his finger on the pulse of the Berlin startup scene - messaged me about a Berlin startup called [PEEC.ai](https://peec.ai) that was doing something similar. My initial reaction was: this is fine. I have a more solid technical foundation. Going head to head against a funded competitor is actually a good story.

On May 30, I was listening to [My First Million](https://www.youtube.com/watch?v=d0j_n3OOM7c) - a podcast I follow regularly, hosted by [Sam Parr](https://x.com/thesamparr) and [Shaan Puri](https://x.com/ShaanVP). [Greg Isenberg](https://x.com/gregisenberg) was the guest. He decided to vibe-code a startup live on the show. The thing he chose to build was an AEO system. The exact thing I had been building for months. Built live, on air, in under an hour.

The sense of dread when I heard it is still with me.

Then Shaan tested it. What had been presented as a working AEO product - "LLM Boost" - turned out to be a lead generation quiz for an agency that did not exist. The demo was real. The product behind it was not.

{{< post-image src="greg-isenberg.png" alt="Greg Isenberg vibe-coding an AEO system live on the My First Million podcast" caption="May 30, 2025. The exact thing I had been building for months, built live on a podcast." width="480px" >}}

That was the moment the pattern became clear. Every day, new LinkedIn posts, new competitors, new tools - all riding the hype around [Lovable](https://lovable.dev/), Claude Code, and the vibe-coding wave. People were generating AEO solutions that looked sophisticated on the surface but had no depth underneath - no context architecture, no evaluation discipline, just generated content dressed up as a product. Demo velocity had become the default playbook. The barrier to entry had collapsed.

Then on July 7, [Harry Stebbings](https://www.linkedin.com/in/harrystebbings/) announced that his firm had written a $5M cheque to PEEC.ai within 24 hours of first contact. The attention and capital flowing into the category became impossible to ignore.

{{< post-image src="stebbing-peec.png" alt="Harry Stebbings announcing $5M investment in PEEC.ai" caption="July 7, 2025. $5M in 24 hours." width="480px" >}}

March to July. Four months from validation to funded competition - while I was using AI-assisted coding and agentic systems to build a solid technical platform on my own, far from the vibe-coding hype, competing simultaneously against vibe-coded demos and venture-backed teams. What had felt like a unique insight had become something anyone could demo in a podcast episode. The question was no longer whether the category was real. It was whether one person could win it.

## What Became Clear

The strongest long-term value was not a feature race. The vibe-coded demos would come and go. The real value was deeper:

- context management
- retrieval quality
- evaluation discipline
- representation control across probabilistic interfaces

I had already implemented most of this. I kept building through the saturation phase, but I also kept an open mind about where these experiences could lead.

When a new role came up in Madrid, I took it. ContextRocket was part of the story - it was one of the reasons I was hired. I put the product on pause but kept building on the side, exploring where to take it next.

## Where It Is Going

Three shifts are shaping the direction.

**From company branding to personal branding.** The original thesis focused on how companies are represented across LLMs. But the same problem applies to individuals - founders, executives, creators. Personal branding is harder to control across AI surfaces because the context is more fragmented and the stakes are more personal. It is also a market where individuals will pay directly, without procurement cycles.

Tone of voice is central to this. Most people cannot articulate what makes them sound like them - their cadence, their patterns, the way they frame ideas. AI is becoming remarkably good at capturing and preserving that. Once you can extract someone's authentic tone and use it as a constraint, you can evaluate whether AI-generated content actually sounds like them or just sounds like AI. The context layer becomes not just what a brand says, but how it sounds.

**From standalone platform to integration layer.** The first version of ContextRocket was self-contained. The next version plugs into where teams already work - tools like [Semrush](https://www.semrush.com/) for SEO data, analytics platforms for traffic signals, CMS systems for content pipelines. The value is not replacing those tools. It is adding an AI representation layer on top of them.

**From text to audio and video.** LLM-mediated representation is expanding beyond text. Podcasts, video content, and audio surfaces are increasingly indexed and summarised by AI systems. Google Cloud's capabilities around audio and video AI - transcription, summarisation, content understanding - open up new ways to analyse and optimise how brands are represented across these formats. The unit economics of processing audio and video at scale are improving fast enough to make this viable, not just experimental.

The core thesis is unchanged:
better context in, better representation out.

The surface area is wider now. The discipline is the same.

---

*Next: [ClawCon Madrid](/posts/clawcon-madrid/) - the energy in the room told you more than the slides.*

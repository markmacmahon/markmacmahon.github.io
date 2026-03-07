+++
title = 'You Need to Start Somewhere'
date = 2026-03-14T10:00:00Z
slug = 'you-need-to-start-somewhere'
draft = true
description = "Junior developers can't get hired. That's a problem we've solved before."
[sitemap]
  priority = 0.8
[params]
  series_number = 6
  song_title = 'Rat In Mi Kitchen'
  song_artist = 'UB40'
  song_year = '1986'
  song_url = 'https://open.spotify.com/track/5rCpAwrWFRGpsqc8wVVhql'
+++

Late one night in the basement of a Georgian building on Fitzwilliam Square in Dublin, myself and Conor were deep in code. The office was in the lower ground floor - beautiful building above, strip lighting and desks below. We were building something, heads down, when a rat ran across the office floor.

That was Orbism in 1998. A small software company in the basement of one of the finest squares in Dublin. Elegant facade. Rat in the office. The Irish tech scene before anyone called it a tech scene.

I was twenty-two. Straight out of college. Everyone needs to start somewhere, and I was very lucky to start somewhere like Orbism.

I had walked into Orbism in June of that year.

John Fleming had founded the company. Paul Tunney, the technical co-founder and CTO, was mostly based in Detroit - Orbism had a major contract with Daimler, and Paul ran that side from the States. I believe he's still in Detroit to this day.

The name came from ORB - the Object Request Broker at the heart of CORBA. Orbism positioned itself as a premium consultancy, and in practice it was a professional services wing for [Iona Technologies](https://en.wikipedia.org/wiki/IONA_Technologies) - one of the biggest technology companies in Ireland at the time. A lot of the work Orbism did was Iona work, on behalf of Iona's clients. The technology was cutting edge. The proximity to Iona meant you were working at the highest level of distributed systems engineering in the country. And the business model threw everyone in the deep end from day one.

In Dublin, the team was small and the talent was extraordinary.

Gavin Scott, Richard Long, and Darren Redmond were the senior engineers. Gavin and Richard were a little bit nerdy - books on software craftsmanship stacked around their desks, the kind of people who cared deeply about design patterns and clean architecture not because it was fashionable but because they believed in it. They liked to programme together. They'd talk through design decisions before writing a line of code. Darren had a different energy - huge passion, absolute superstar, the kind of person who made everyone around him better by sheer force of enthusiasm. Between the three of them, they taught me how to think about software, not just how to write it.

I was twenty-two. I'd spent my time at [DCU](/posts/back-to-the-cursor/) going deep on Java when the language was barely two years old, and that head start made me marketable. But Orbism was the opportunity that turned a head start into something real. The chance to work at the cutting edge, surrounded by people who cared about craft, on work that mattered to clients like Daimler and Iona's enterprise customers.

At one point I was offered the chance to go to Detroit for six months. I couldn't do it. I was in love, deep in a relationship, and leaving wasn't something I could consider. It was a real crossroads. My life would have turned out very differently if I'd said yes.

But you make the choice you can live with, and the career finds a different path.

What Orbism gave me wasn't a career. It was a disposition. The craftsmanship mindset that Gavin, Richard, and Darren instilled - care about design, programme together, read widely, question your own assumptions - that has carried through every role I've held since. Twenty-seven years. Five countries. The instinct hasn't changed.

## The Room

The people in that room went everywhere.

Cormac Kenevey had just graduated from UCD. He was a genuinely talented software engineer - sharp, capable, easy to work with. He was mentored in the same environment as the rest of us. The same books. The same conversations about craft.

Cormac left software entirely. His real talent was music. Today he's one of the most recognised [jazz vocalists on the Irish scene](https://www.kenevey.com/). If you'd told me in 1998 that the quiet engineer across the desk would end up performing at jazz festivals across Europe, I wouldn't have believed it.

But that's what good mentorship does. It doesn't just transfer technical skills. It builds confidence and curiosity that people carry wherever they go - even if where they go has nothing to do with code.

Dermot Hennessy came from the same UCD batch as Cormac. He went on to do excellent things in software. Bob Boles was part of the early team.

John Butler found his specialty at Orbism. He got deep into CORBA - specifically the side of it that involved integrating legacy systems, the COBOL backends that big financial institutions still ran on. That niche took his career in a completely different direction from the rest of us. To Switzerland first, then eventually to the United States. He found a seam at Orbism that nobody else was mining, and followed it for decades.

A small Irish company in 1998. One room. And from that room: software engineers, a jazz singer, specialists scattered across three continents. That doesn't happen by accident. It happens when the culture is right.

## Iona

Within a week of joining Orbism, I was inside Iona.

The contrast was immediate. From a basement on Fitzwilliam Square to Iona's offices on Shelbourne Road in Ballsbridge - a hundred thousand square feet of the first Irish company to float on NASDAQ. At its height, Iona was valued at $1.75 billion. This was a different world.

Iona's product was [Orbix](https://www.iona.ie/1997/Orbix/index.html), built on CORBA - the middleware standard that was supposed to let distributed systems talk to each other. Before web services, before REST, before microservices, CORBA was the architecture that serious enterprise systems were built on. Iona made it work.

The founders - [Chris Horn](https://en.wikipedia.org/wiki/Chris_Horn_(computer_scientist)), [Sean Baker](https://www.siliconrepublic.com/careers/the-friday-interview-sean-baker-iona-technologies), and Annrai O'Toole - had started as academics at Trinity College Dublin, each putting in a thousand pounds in 1991. With eleven staff they'd sold to Motorola, then Boeing. Now it was a global company with [Steve Vinoski](https://steve.vinoski.net/) as chief architect and some of the sharpest distributed systems engineers in the industry.

Orbism had sold us in as quite senior, and I was thrown in at the deep end - customer engineering first, then professional services work for clients. Being close to the founders, witnessing how a company of that scale operated, seeing the calibre of engineers they attracted - it was an education you couldn't get any other way at twenty-two.

One detail I didn't expect: Iona was using the same Vantiv customer support system I'd used at AOL the year before, when I was answering support tickets as a student. The same screens. The same workflows. Except now I was on the engineering side.

Careers don't move in straight lines. They spiral. You see the same problems again, from a different altitude.

## The Complexity Trap

While I was at Iona, the technology landscape was shifting underneath CORBA.

CORBA's approach was elegant in its way. You defined your interfaces in IDL - Interface Definition Language - clean contracts that described how systems talked to each other. The focus was on moving data from one point to another. Simple in concept.

Then SOAP arrived. Iona became a player in that space too, which looked interesting on paper. But I remember a hesitation even then - the complexity of SOAP compared to IDL felt like a step in the wrong direction. More XML. More ceremony. More layers between you and the thing you were actually trying to do.

At the same time, Enterprise Java Beans were getting big. EJBs promised to handle all the hard problems of distributed computing - transactions, persistence, security - but at the cost of enormous complexity. Heavy containers. Rigid deployment. Code that served the framework more than the problem.

The pattern was the same in both cases: the industry was moving away from simple, clear contracts toward big, heavy frameworks that added complexity without proportional value. We were overcomplicating the fundamental job, which was just moving data from one point to another.

It took a few more years for the correction to arrive - lighter frameworks, REST, eventually the [Spring revolution](/posts/uno-dos-tres-catorce/) that I'd witness at Emuse. But standing inside Iona in 1999, you could already feel the tension between what worked and what was being sold.

## Norkom

The other placement Orbism sent me on was [Norkom Technologies](https://en.wikipedia.org/wiki/Norkom).

Paul Kerley had founded Norkom in 1998 - the same year as Orbism. The company was building CRM and analytics software for telecoms and financial services, with a particular focus on churn prediction and customer behaviour algorithms. It had a startup energy but was well funded from the start.

This was a different kind of pressure. Late nights in the office - my first experience of working through until five in the morning, barely able to keep my eyes open. A lot of it came from inexperience. I was still a junior, still learning the gap between what I thought the work required and what it actually demanded.

The technical world at Norkom was pre-web in a way that feels almost archaeological now. CORBA backends and Java applets on the front end. This was before servlets, before web-based frameworks took over, before the browser became the universal client. An innocent time in the evolution of the internet - you could still build serious enterprise software without touching HTTP.

One memory from Norkom stands out for entirely non-technical reasons. On the 26th of May 1999, Manchester United played Bayern Munich in the Champions League final at Camp Nou. My colleague Marco Brehling - German, a huge Bayern fan - had been giving me grief for weeks. Bayern were 1-0 up for almost the entire match. Then Sheringham equalised in the 91st minute. Solskjaer scored the winner in the 93rd. One of the most extraordinary moments of my life as a United fan, and one of the worst of Marco's as a Bayern supporter. The banter in the office the next morning was merciless.

These are the things that make a workplace more than a workplace. The late nights and the football and the shared experience of being young and building something. You don't get that from a contract.

Norkom would go on to do well. Kerley took the company public in 2006 on the Irish and London stock exchanges, and BAE Systems acquired it for over two hundred million euro in 2011. But when I was there, it was just a startup with ambition and late nights.

## Dublin Was Booming

Friday evenings after work we'd end up in Toners or Big Jacks on Baggot Street. Pints of Guinness. The smell of greasy chips in the pub. The kind of Dublin evenings that felt like they'd always be there.

Dublin was in the middle of something. European Union money was flowing. US tech investment was arriving - Intel, the multinationals, the IDA campaigns that were filling offices across the city. The Celtic Tiger was not yet a cliché. It was just a feeling - that things were accelerating, that there was work and money and possibility, that Ireland had turned a corner.

It was probably the most optimistic time I remember in Ireland.

By late 1999, the Java and CORBA experience from Orbism and Iona had fast-tracked me into freelance work. The dot-com boom was at full tilt. Companies were paying serious money for anyone who could write enterprise Java.

I freelanced at GE Global Exchange Services. Then at Ericsson, working on radio network systems at their centre in Kildare. The money was good. The work was steady. I was twenty-four, earning more than I'd imagined, and the market showed no sign of slowing down.

Things could only get better.

## September 11, 2001

I was in the canteen at Ericsson when the first tower was hit.

Someone turned on the television. We watched the second plane hit live. The room went quiet. People stopped eating. Nobody went back to their desks for a long time.

The world changed that morning. And the market changed with it.

I had just bought a house in Dublin with my girlfriend. The future felt settled.

The dot-com bubble had already been deflating. 9/11 broke what was left. Contracts dried up. Freelance rates collapsed. The money that had seemed permanent suddenly wasn't. Within weeks, I was re-evaluating everything. Things changed quite quickly after that - not just the market.

The freelance years were over. I needed a permanent role, and I found one at [Emuse Technologies](/posts/uno-dos-tres-catorce/) - a decision that would take my career in an entirely different direction.

People change. Cities change. Relationships change. The company in the basement doesn't exist any more. The Dublin I knew in 1998 isn't the Dublin of today. That's just how it is sometimes.

But what was installed there - the instinct for craft, the curiosity, the way of thinking about software - that didn't change. It moved with the people who carried it.

## What Mentorship Actually Builds

At Orbism I was the one being mentored. A decade later, at Nokia, I was the one doing the mentoring.

When I was building my team at Nokia HERE from 2009 onwards, some of the most exceptional people I hired came in as graduates, working students, and interns. Not as a compromise. As a deliberate choice. I'd seen what Orbism had done with a room full of juniors and good mentors, and I wanted to replicate it. It worked. People who arrived as interns grew into engineers I'd trust with anything.

That's the full circle. The mentorship I received at Orbism didn't just shape my career. It shaped how I built teams.

Right now, junior developers are struggling to get hired.

The job market has shifted against them. Companies are cutting graduate programmes. Internships are harder to find. The argument has become: with AI coding tools, you don't need juniors any more. AI handles the grunt work. Just hire senior engineers, give them AI tools, and ship faster. Why invest in training people who'll take years to become productive when you can hire people who are productive now?

It sounds efficient. It's the kind of argument that looks good on a spreadsheet.

It misses everything that matters.

Software is not just code. It's knowledge transfer. Organisational continuity. The evolution of thinking inside a team. Culture that compounds over years. People becoming something more than what they were hired for.

Orbism was a small company. It lasted a few years. But the mentorship culture that Gavin and Richard created produced people who went on to build things across software, finance, and music, in Ireland, Switzerland, the United States, and beyond.

That doesn't happen if you only optimise for today's output.

Companies that hire only seniors are renting capability. Companies that mentor juniors are building something that compounds. The senior-only approach gives you a team that ships. Mentorship gives you a team that lasts - and that produces people whose best contributions might be things you never predicted.

Nobody at Orbism predicted Cormac would become a jazz singer. But the environment that made space for his curiosity as an engineer is the same environment that gave him the confidence to pursue what he was actually meant to do.

That's not a failure of investment. That's the whole point.

## The Light

In 1998, things could only get better. And for a while, they did. Java arrived at exactly the right moment. I landed in a room full of people who cared about craft. The market was generous. The momentum felt inevitable.

Then the world intervened. The market broke. I had to choose differently.

But the thing that Orbism installed - the curiosity, the care about design, the instinct to programme together, the habit of reading and questioning - that survived every disruption that followed. 9/11. The financial crisis. Career changes across five countries. Platform shifts from CORBA to Spring to microservices to AI.

The technology changed every few years. The disposition never did.

That's what mentorship builds. Not skills that depreciate. Instincts that compound.

And in a moment when people are arguing about whether juniors still matter, I keep thinking about that room in Dublin in 1998. The books on the desks. The conversations about design. A jazz singer who didn't know he was a jazz singer yet.

The light was installed there. It never went out.

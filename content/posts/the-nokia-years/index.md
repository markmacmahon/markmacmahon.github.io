+++
title = 'The Nokia Years'
date = 2026-04-11T10:00:00Z
slug = 'the-nokia-years'
draft = false
description = 'On strategy, execution, and the burning platform.'
[sitemap]
  priority = 0.8
[params]
  series_number = 14
  coming_soon = false
  og_image = '/posts/the-nokia-years/nokia-connecting-people.jpeg'
  song_title = 'The Unforgettable Fire'
  song_artist = 'U2'
  song_year = '1984'
  song_url = 'https://open.spotify.com/track/1gl3GmTDG7CO1JI8ILtGcu'
+++

The Maritim proArte Hotel sits on Friedrichstrasse in Berlin Mitte. Glass facade, contemporary art in the lobby, conference rooms designed for corporate announcements. It was a fifteen-minute walk from the Nokia office on Invalidenstrasse. We all knew something was coming. Colleagues had been flying to Iceland for months - meetings with Microsoft, away from the press. The rumours were already circulating when [Stephen Elop](https://en.wikipedia.org/wiki/Stephen_Elop) sent his [burning platform memo](https://www.engadget.com/2011-02-08-nokia-ceo-stephen-elop-rallies-troops-in-brutally-honest-burnin.html) to the entire company. By Friday we were walking to a hotel to hear it confirmed in person.

Elop stood at the front of the room and told us Nokia was adopting Windows Phone. Symbian was done. MeeGo was done. Meltemi was done. The platform we had been building on was burning.

Someone posted in the internal channel afterwards: "We welcome our new Microsoft overlords."

That same Friday, 11 February 2011, Hosni Mubarak resigned in Cairo after eighteen days of protest. The Arab Spring, driven in part by social media on smartphones. Nokia had put mobile phones into the hands of hundreds of millions of people across the developing world. But the smartphones driving the revolution were not ours. Two platforms burning on the same day. Only one of them mattered to anyone outside that hotel room.

## Berlin, May 2009

I arrived at Nokia two years earlier. It was my first job in Berlin. I did not speak much German. Nokia was still the world's largest mobile phone manufacturer. The iPhone had shipped in 2007 but Nokia's global market share numbers still looked strong. There was genuine optimism in the building.

The Berlin office was Gate5 - a navigation and mapping company Nokia had acquired in 2006. The people who built it were still around. [Christophe Maire](https://atlantic.vc/), one of the founders, was still in the building when I arrived, though he left after a few months to start investing in Berlin startups. He would go on to seed [SoundCloud](https://soundcloud.com/), [GetYourGuide](https://www.getyourguide.com/), and dozens of others through Atlantic Labs. TechCrunch named him best European Seed Investor in both 2011 and 2012. Three unicorns, twenty-three acquisitions. All of it seeded with Gate5 money.

Another co-founder, Michael Halbherr, stayed and rose through the ranks. He would become very close to Elop and central to the new strategy, eventually running the HERE mapping division before it was sold to the German automakers.

One of my colleagues, [Axel Schmidt](https://www.here.com/learn/blog/netflix-billion-dollar-code), had been part of [ART+COM](https://artcom.de/en/) in the 1990s, where he helped build [TerraVision](https://en.wikipedia.org/wiki/Terravision_(computer_program)) - a networked 3D virtual globe that let you fly from space down to street level, years before Google Earth existed. That story became [The Billion Dollar Code](https://en.wikipedia.org/wiki/The_Billion_Dollar_Code) on Netflix in 2021. Axel is still at HERE today, building HD maps for autonomous driving. The same interest, three decades later.

Nokia had big ambitions. They were spending more on research and development than Apple - roughly five times more. They had acquired [Navteq](https://en.wikipedia.org/wiki/Navteq) for $8.1 billion, the world's largest maker of automotive-grade map data. They acquired [MetaCarta](https://en.wikipedia.org/wiki/MetaCarta), a Cambridge-based company doing geographic text search using natural language processing - one of my first exposures to machine learning applied to search. They acquired [Plazes](https://en.wikipedia.org/wiki/Plazes), a Berlin social location app that predated Foursquare. They had an entire services strategy called [Ovi](https://en.wikipedia.org/wiki/Ovi_(Nokia)). And they had [MeeGo](https://en.wikipedia.org/wiki/MeeGo), a Linux-based mobile operating system developed with Intel that many of us believed was the right answer.

The company was not short of money, ambition, or talent. It was short of focus.

## The Places Problem

My team was responsible for the Places Registry - a database of every place in the world. Restaurants, train stations, airports, parks. We were aggregating data from multiple sources and trying to generate a unique identifier for each real-world location. Entity resolution at massive scale.

The assumption was that this would work like an enterprise application. A request comes in, an algorithm runs, a PlaceID comes out. Deterministic. Synchronous. Clean.

It was not clean.

Buildings moved. Venues changed names. Addresses shifted. Geo-coordinates from different sources disagreed. Shopping malls had multiple entrances, each with different coordinates. Train stations had the same problem. Airports were worse. We were trying to impose a clean data model on a messy physical world, and the world kept winning.

This was not a failure of leadership specifically. It was contextual. Most engineering experience at the time was rooted in enterprise application development. Data science as a discipline was not mature yet. People looked at systems through an enterprise app lens: request in, response out, deterministic. The idea that place matching was fundamentally a data problem - requiring statistical approaches, asynchronous processing, and tolerance for uncertainty - simply was not how engineers or their managers thought about systems in 2009.

We were doing data science before the term was widely used. We just did not know that yet.

## The People

[ThoughtWorks](https://www.thoughtworks.com/) were consulting with us. They helped us move from rigid Scrum towards more iterative development, introduced test-driven development and pair programming. [Jim Webber](https://jimwebber.org/) was one of them - from Birmingham, a typical Brummie. He co-authored [REST in Practice](https://www.oreilly.com/library/view/rest-in-practice/9781449383312/) and is now Chief Scientist at [Neo4j](https://neo4j.com/).

Our main search consultant was [Simon Willnauer](https://www.elastic.co/blog/author/simon-willnauer). We were using [Solr](https://solr.apache.org/) for search, and Simon was one of the leading contributors to [Apache Lucene](https://lucene.apache.org/), the engine underneath it. In February 2012, Simon co-founded [Elasticsearch](https://en.wikipedia.org/wiki/Elastic_NV). In October 2018, Elastic went public on the NYSE.

My boss at the time was Jim Goodwin, who had come from MetaCarta. Pragmatic, no nonsense - a managerial style I recognised in myself. Jim also joined Elasticsearch. He was there in Times Square, ringing the bell when the company went public. He retired early on the proceeds.

In May 2010, I found out who my new boss would be from a [TechCrunch article](https://techcrunch.com/2010/05/31/gary-gale-nokia-yahoo/). Gary Gale, Director of Geo at Yahoo, was joining Nokia as Director of Ovi Places. Nokia had not told me. TechCrunch had. It captured both the ambition - poaching Yahoo's geo director - and the dysfunction. Gary's own words about leaving Yahoo were telling: "Six reorganisations in the space of twelve months and six VPs in the space of four years." He had left Yahoo's death by a thousand cuts and walked straight into Nokia's.

On trips to the US I would drop into the Boston office - the MetaCarta team. Machine learning applied to search, ranking, entity resolution. They were doing work that would not become mainstream for another decade.

Every month I flew to Chicago for Scrum of Scrum meetings at the former Navteq office. Two hundred people in a large room, everyone putting post-it notes on the board, following the Scrum process religiously. It was a bit ridiculous. It did not feel very agile. But it was what they needed at that scale, and it worked for them.

There was always a friendly rivalry between the three offices. Berlin, Boston, Chicago. I got on well with people in all of them. But there are always political dynamics when multiple offices work on the same problem, and every office is looking out for itself. We had a small team in Berlin - building most of the Places infrastructure, refactoring it into a more suitable architecture. But a small team cannot survive against two hundred people in Chicago when power dynamics play out. The dynamics were structural. That does not mean they were always innocent.

## The US Blind Spot

I had lived in America from 2004 to 2008, working at [Daon](https://www.daon.com/) in Washington DC on biometric security for federal agencies. I knew the US market from the inside.

When I travelled back to the States around 2009 and 2010, I walked into smartphone stores and Nokia was barely visible. Samsung was dominant. Motorola was strong and moving aggressively into Android. Nokia was in the shadows.

Even before the iPhone launched in 2007, Samsung was making a play. I had bought a Samsung Blackjack in 2006 - a BlackBerry-style phone, well-designed, well-distributed. Samsung understood something Nokia did not: in America, the telecom operators dictated what features went on the phone. The carriers controlled distribution, subsidies, and shelf space. Samsung played the carrier game. Nokia did not.

The global market share numbers still looked strong. Nokia was the world's biggest phone maker. But the market that mattered - the one where the smartphone battle would be won or lost - was already gone. The European leadership was reading global metrics while the US retail reality told a different story. That is what strategic drift looks like from the inside. The numbers say you are winning. The shelves say you are not.

## The Maps Trap

Nokia acquired Gate5 in 2006. Gate5 gave Nokia mobile mapping capability. Gate5's success convinced Nokia to go all-in on maps. In 2007, they spent $8.1 billion on Navteq - the world's largest map data company.

With that much invested in a proprietary mapping asset, Nokia now had a strategic imperative to protect the investment. Android already had Google Maps built in. If Nokia adopted Android, they would be competing with Google's own mapping product while sitting on an $8.1 billion mapping asset that would become redundant.

That pushed Nokia towards Microsoft. Microsoft did not have a competing maps product. Nokia's maps would be a strategic differentiator on Windows Phone.

Windows Phone failed. Nokia was acquired by Microsoft for EUR 5.44 billion in 2014. Microsoft wrote off $7.6 billion the following year. And HERE - the maps - was sold to a consortium of Audi, BMW, and Daimler for EUR 2.55 billion in 2015.

Nokia paid $8.1 billion for Navteq alone. The combined mapping business - Navteq, Gate5, MetaCarta, Plazes, years of internal development - sold for EUR 2.8 billion. The maps were the one thing that held value. But the maps were also the thing that pushed Nokia away from Android and towards its own destruction. The asset became the prison. The tail wagged the dog.

You could trace Nokia's collapse back to well-meaning decisions that were made in Berlin.

## The Aftermath

The MeeGo layoffs came and I was impacted. It was a shock. I was in a new country. I did not speak German well. I had entered Nokia as a technical lead and come out as a manager. Now I was competing on the German job market as a manager without fluent German. It caused real strain.

In hindsight, the layoff was lucky. It forced me out of my comfort zone. It led directly to co-founding Localstream with Jilles van Gurp, a colleague from Nokia. We built a location-based search platform with a Location Graph - a system that automatically tagged web content with structured location data. It was, in some ways, the answer to the Places problem Nokia had been struggling with. We had learned what the problem actually was. We built a startup to solve it differently.

[Localstream was acquired by Linko in 2014.](https://www.siliconrepublic.com/start-ups/crm-player-linko-inc-acquires-irishmans-berlin-start-up) Jilles went on to co-found [FORMATION](https://tryformation.com/) with Ian Hannigan, an Irishman from the Berlin scene with a design background. FORMATION took the same location concepts and refined them - real-time location intelligence for physical operations. The same problem we struggled with at Nokia turned into a real business when the right people applied the right focus.

{{< post-image src="nokia-connecting-people.jpeg" alt="Nokia - Connecting People" width="480px" >}}

Many of the closest friendships I have in Berlin started at Nokia. The [Sunday running group](/posts/contextrocket/) - all ex-Nokia. The company is gone from Berlin. The relationships are not.

Nokia spent more on R&D than Apple. They acquired companies worth billions. They had the maps, the data, the distribution, the brand. They still lost. The talent scattered - to Apple Maps, to Elasticsearch, to startups across Berlin. The value was never really in the company. It was in the people who passed through it.

Elop's [memo](https://www.theguardian.com/technology/blog/2011/feb/09/nokia-burning-platform-memo-elop) was probably the right diagnosis. The platform was burning. But the memo wiped out billions in revenue by telling the world that Nokia's own CEO had no confidence in the product they were still selling. One more cut.

Nokia did not die from a single decision. It died from the distance between what it knew it should do and what it could actually execute. That gap compounds. It always does.

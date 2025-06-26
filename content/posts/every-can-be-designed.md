---
weight: 15
title: "Everything Can Be Designed"
summary: "What started as a simple test automation task evolved into a deep exploration of design thinking in software testing."
image: /images/posts/everything-can-be-designed.png
date: 2025-06-26T02:22:33-06:00
description: "Uncovering the hidden value in systems design was as exciting as discovering a beautiful combination to solve a chess puzzle. What began as a straightforward task—adding integration tests for Critical User Journeys (CUJs)—evolved into a deep dive into how testing is architected, modularized, and orchestrated. This post captures that journey: from skepticism to insight, from simple test additions to designing a test framework that reveals the elegance behind Angular testing harnesses, dependency injection, and user-centric coverage. A reminder that even the smallest tasks can hold the seeds of thoughtful design."
tags: ["System design", "Design thinking", "Testing", "Angular"]
type: post
showTableOfContents: true
---

![Test Architecture – CUJ Automation](/images/chesaaah.png)

## 💡 Sense in "nonsense"

> “Design is the conscious effort to impose a meaningful order.” – Victor Papanek

One of my first assignments at Google was to automate end-to-end testing for critical user journeys (CUJs) in **Checks** ({{< newtab "https://checks.google.com" >}}checks.google.com{{< /newtab >}}), a platform designed to help users manage their online data and privacy.

On the surface, it looked like a simple task:

* Add unit tests to existing suites
* Create new ones where missing
* Make sure CUJs are covered

Straightforward, right? Or so I thought, until an unexpected requirement challenged my assumptions. Then came a requirement that threw me off: _**"Please include a design document."**_


## 🕥 Wisdom: I know that I do not know

A design doc for unit tests? 

My first instinct was to question it. This wasn't a new system or algorithm. No UI to design. No architecture to roll out. Just… test cases. It felt like process overkill.

I nearly pushed back—but something made me pause. A principle I try to hold onto:

> "If you can trust yourself ... but make allowance for doubting, too." – Rudyard Kipling

So I asked myself:
**“What if I’m wrong?”**


## 📈 From Resistance to Discovery

> "The power of the discovery process lies in recognizing our potential for error and the curiosity that propels us to question what we think we know."

I chose to lean in.

What if the design doc wasn’t about the code—but the thinking behind the tests?
What if this was about architecture, clarity, and intent?

That small shift unlocked a bigger inquiry:

* What does our existing test setup look like?
* How are mocks and dependencies wired?
* What strategy ensures CUJ coverage and behavior consistency?
* How do we simulate full user interactions across modules?

Those questions led me to **a much richer understanding** than I expected.


## 🎯 Revealing the hidden structure
> "Every block of stone has a statue inside it and it is the task of the sculptor to discover it." — Michelangelo

Eventually, I created this diagram to capture the architecture behind our tests:

![Test Architecture – CUJ Automation](/images/angular-cuj-test.png)

Nothing fancy, but it proved to be a **visual representation** of how we approached testing CUJs in Angular. It highlighted:

* **Defining the testing surface** (component/module/app)
* **Injecting controlled dependencies** (mocks, routing, services)
* **Wiring declarations and modules** using a test scaffolding function
* **Loading harnesses** to simulate interaction
* And finally, writing targeted test cases tied to CUJ behaviors (assertions, UI reactions, API effects)

The real value wasn’t in the individual tests, but in **how the test environment itself was designed and composed**. Over time,
we've come to obtain a lot of value from this exercise particularly with test driven development (TDD) and component-driven design.


## 📢 A New Perspective

By designing this, I learned:

* How Angular’s dependency injection and module isolation works in test contexts
* How to use harness loaders to simulate real UI behavior
* How to make test cases predictable, maintainable, and aligned with user value

I went from treating tests as “checklist items” to seeing them as **products of design thinking**. I wasn't just testing a component—I was designing **how** we test it.


## 🔗 Now I know, I do not know

Tests. Docs. Processes. Even the way we ask questions.

This experience reminded me that design isn’t just about architecture diagrams or wireframes—it’s a mindset. One that applies even to the most invisible parts of software development.

And the moment we take a step back and ask **"What if I'm wrong?"**, we often stumble into insight.

This was another one of those moments—where I proved to myself again:

> I know that I do not know.

And that’s how I grow.

_What 'invisible' aspects of your work have revealed the most about design?_

Think big. Take small steps. Stay humble.
---
weight: 20
title: "Design Patterns: Elements of Reusable Object-Oriented Software"
date: 2024-05-17T12:05:33-06:00
description: "Four top-notch designers present a catalog of simple and succinct solutions to commonly occurring design problems. Previously undocumented, these 23 patterns allow designers to create more flexible, elegant, and ultimately reusable designs without having to rediscover the design solutions themselves."
tags: ["Design Patterns", "Objected-Oriented Software"]
type: post
showTableOfContents: true
image: /images/posts/design-patterns-250x250.png
---

[!["Book Cover"](/images/posts/design-patterns.png "Book Cover")](https://amzn.to/3wEErOS)

## Summary

This book is a seminal book in software engineering, authored by Erich Gamma, Richard Helm, Ralph Johnson, and John Vlissides, commonly referred to as the "Gang of Four" (GoF). Published in 1994, it introduces the concept of design patterns in software development, providing a catalog of solutions to common design problems. The book is divided into two main parts: an introduction to design patterns and a catalog of 23 design patterns.


## Sections

### Introduction to Design Patterns

#### 1. Introduction

The introduction explains the concept of design patterns, which are general, reusable solutions to common problems in software design. The authors emphasize that patterns are not finished designs but templates that can be adapted to solve particular problems. The introduction also covers the following topics:

- **What is a Design Pattern?**: Defined as a description of communicating objects and classes that are customized to solve a general design problem in a particular context.
- **Design Pattern Elements**: Each pattern has four essential elements: the pattern name, the problem it solves, the solution, and the consequences.
- **Design Pattern Categories**: Patterns are divided into three categories based on their purpose: Creational, Structural, and Behavioral.

#### 2. A Case Study: Designing a Document Editor

- Design Problems
- Document Structure
- Formatting
- Embellishing the User Interface
- Supporting Multiple Look-and-Feel Standards
- Supporting Multiple Windows Systems
- User Operations
- Spelling Checking and Hyphenation
- Summary

### Design Pattern Catalog

#### 3. Creational Patterns

These patterns deal with object creation mechanisms, trying to create objects in a manner suitable to the situation. They help make a system independent of how its objects are created, composed, and represented.

1. **Abstract Factory:** Provides an interface for creating families of related or dependent objects without specifying 2. their concrete classes.
2. **Builder**: Separates the construction of a complex object from its representation, allowing the same construction process to create different representations.
Factory Method: Defines an interface for creating an object but lets subclasses alter the type of objects that will be created.
3. **Prototype**: Specifies the kinds of objects to create using a prototypical instance, and creates new objects by copying this prototype.
5. **Singleton**: Ensures a class has only one instance and provides a global point of access to it.

#### 4. Structural Patterns

These patterns deal with object composition, typically identifying simple ways to realize relationships between different objects.

1. **Adapter**: Allows objects with incompatible interfaces to work together by wrapping their own interface around that of an already existing class.
2. **Bridge**: Decouples an abstraction from its implementation, so the two can vary independently.
3. **Composite**: Composes objects into tree structures to represent part-whole hierarchies, letting clients treat individual objects and compositions uniformly.
4. **Decorator**: Attaches additional responsibilities to an object dynamically, providing a flexible alternative to subclassing for extending functionality.
5. **Facade**: Provides a unified interface to a set of interfaces in a subsystem, making the subsystem easier to use.
6. **Flyweight**: Uses sharing to support large numbers of fine-grained objects efficiently.
7. **Proxy**: Provides a surrogate or placeholder for another object to control access to it.

#### 5. Behavioral Patterns

These patterns are concerned with algorithms and the assignment of responsibilities between objects. They help in managing complex control flows in a software system.

1. **Chain of Responsibility**: Avoids coupling the sender of a request to its receiver by giving multiple objects a chance to handle the request.
2. **Command**: Encapsulates a request as an object, thereby allowing for parameterization of clients with queues, requests, and operations.
3. **Interpreter**: Given a language, defines a representation for its grammar along with an interpreter that uses the representation to interpret sentences in the language.
4. **Iterator**: Provides a way to access the elements of an aggregate object sequentially without exposing its underlying representation.
5. **Mediator**: Defines an object that encapsulates how a set of objects interact, promoting loose coupling by keeping objects from referring to each other explicitly.
6. **Memento**: Captures and externalizes an object’s internal state, allowing the object to be restored to this state later without violating encapsulation.
7. **Observer**: Defines a one-to-many dependency between objects, so that when one object changes state, all its dependents are notified and updated automatically.
8. **State**: Allows an object to alter its behavior when its internal state changes, making the object appear to change its class.
9. **Strategy**: Defines a family of algorithms, encapsulates each one, and makes them interchangeable, allowing the algorithm to vary independently from clients that use it.
10. **Template Method**: Defines the skeleton of an algorithm in a method, deferring some steps to subclasses, allowing subclasses to redefine certain steps without changing the algorithm's structure.
11. **Visitor**: Represents an operation to be performed on elements of an object structure, allowing the definition of a new operation without changing the classes of the elements on which it operates.

#### 6. Conclusion

The book emphasizes the importance of design patterns in software engineering, showing how patterns can improve code readability, reusability, and maintainability. The patterns provide a shared language for designers to communicate, making it easier to discuss and resolve design issues.

Overall, "Design Patterns: Elements of Reusable Object-Oriented Software" is a foundational text that has greatly influenced software design and architecture, providing a set of best practices for solving common design problems.


## Keynotes

The phrase "One thing expert designers know not to do is solve every problem from first principles..." from "Design Patterns: Elements of Reusable Object-Oriented Software" emphasizes the importance of leveraging existing knowledge and solutions in software design rather than reinventing the wheel each time a problem arises. Here's an elaboration on this idea:

### Avoiding First Principles in Software Design

**Efficiency and Productivity**
   - **Time-Saving**: Solving problems from first principles means starting from the very basics and constructing a solution from scratch. This approach is time-consuming and often unnecessary when established solutions already exist.
   - **Resource Optimization**: By using existing design patterns, developers can save significant amounts of time and effort, allowing them to focus on more complex and unique aspects of a project.

**Proven Solutions**
   - **Reliability**: Design patterns encapsulate tried-and-tested solutions to common problems. These patterns have been refined and validated by the software engineering community, ensuring their reliability.
   - **Reduced Risk**: Using established patterns minimizes the risk of errors and unforeseen issues that can arise when creating a new solution from scratch.

**Consistency and Maintainability**
   - **Standardization**: Design patterns provide a standard approach to solving common problems, leading to more consistent and understandable codebases.
   - **Maintainability**: When a common pattern is used, it is easier for other developers to understand and maintain the code, as they are likely familiar with the pattern and its application.

**Knowledge Sharing**
   - **Common Vocabulary**: Design patterns serve as a shared language among developers, facilitating better communication and collaboration. When a developer mentions a pattern like "Singleton" or "Observer," others immediately understand the design approach being discussed.
   - **Documentation and Learning**: Patterns are well-documented and widely taught, making it easier for new developers to learn and apply them effectively.

**Focus on Higher-Level Design**
   - **Abstract Thinking**: By relying on design patterns, developers can focus on higher-level design considerations and system architecture rather than getting bogged down in low-level implementation details.
   - **Innovation**: With common problems addressed by design patterns, developers have more mental bandwidth to innovate and solve unique, project-specific challenges.

### Practical Implications

- **Code Reusability**: Using design patterns promotes reusability, as the patterns are designed to be adaptable to various contexts and requirements.
- **Scalability**: Well-designed patterns often include considerations for scalability, ensuring that the solution can grow with the application's needs.
- **Flexibility and Adaptability**: Design patterns are often designed with flexibility in mind, allowing for easier modification and extension of the software.

In summary, expert designers avoid solving every problem from first principles because it is inefficient and unnecessary when proven solutions are available. By leveraging design patterns, they can build reliable, maintainable, and scalable software more effectively, allowing them to focus on unique and complex challenges that require innovative thinking. This approach leads to better quality software and a more productive development process.

## Recommended Books

- [Understanding Distributed Systems, Second Edition: What every developer should know about large distributed applications](https://amzn.to/3QUbPrN)
- [Think Like a Programmer: An Introduction to Creative Problem Solving](https://amzn.to/3yidalK)
- [Pattern-Oriented Software Architecture](https://leer.amazon.com.mx/kp/embed?asin=B00CHK5SIA&preview=newtab&linkCode=kpe&ref_=cm_sw_r_kb_dp_0RR27P3K234F717Z6PD0&tag=eiakojime-20)
- [Dive Into Algorithms: A Pythonic Adventure for the Intrepid Beginner](https://amzn.to/3wFaqhR)
- [Algorithmic Thinking: A Problem-Based Introduction](https://amzn.to/3QRqjZD)
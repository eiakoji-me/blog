---
title: "Apache Kafka in 100 seconds"
date: 2024-05-04T14:05:53-06:00
author: Sanaz Zakeri
description: This post summarizes the key features of apache kafka in less than two minutes
image: /images/posts/kafka_in_100s.png
type: post
tags: ["Apache kafka", "microservices"]
---

_This post is written by [Sanaz Zakeri](https://www.linkedin.com/in/sanazzakeri/?utm_source=substack&utm_medium=email), who is a Senior Software Engineer @Uber. (Courtesy - [ByteByteGo](https://blog.bytebytego.com/) )_

Apache Kafka is a distributed event streaming platform used for building real-time data processing pipelines and streaming applications. It is highly scalable, fault-tolerant, reliable, and can handle large volumes of data.

![Kafka in 100s](/images/posts/kafka_in_100s.png)

In order to understand Kafka, we need to define two terms:

- Events: a log of state of something at a specific point in time
- Event streams: continuous and unbounded series of events

Kafka can be used as a Messaging in a publish-subscribe model, where producers write event streams, and consumers read the events. This publish-subscribe model enables decoupling of event stream producers and consumers. Also, Kafka can be used as a log aggregation platform, ingesting and storing logs from multiple sources in a durable and fault-tolerant way.

**Kafka Components:**

Kafka cluster has multiple key components to provide the distributed infrastructure and reliably capture, store, order and provide event streams to client applications.

**Brokers:**

At the heart of the Kafka cluster lies the brokers which are physical servers that handle event streams. After events are published by producers, the broker makes the events available to consumers. Brokers bring scalability to Kafka as Kafka clusters can span multiple brokers across a variety of infrastructure setup to handle large volumes of events. They also bring fault tolerance since events can be stored and replicated across multiple brokers.

**Topics:**

Topic is the subject name of where the events are published by producers. Topics can have zero or more consumers listening to them and processing the events.

**Partition:**

In a topic, data is organized into partitions which store ordered streams of events. Each event within a partition is assigned a unique sequential identifier called offset that represents its position in the partition. Events are appended  continually to the partition. A Topics can have one or more partitions. Having more than one partition in a topic enables parallelism as more consumers can read from the topic.

Partitions belonging to a topic can be distributed across separate brokers in the cluster, which brings high data availability and scalability. If one broker fails, the partitions on the remaining brokers can continue to serve data, ensuring fault tolerance.

**Producers:**

Producers are client applications  that write events to Kafka topics as a stream of events.

**Consumers:**

Consumers are the client applications that subscribe to topics and process or store the events coming to the specific topic. Consumers read events in the order they were received within each partition.

Applications which require real time processing of data will have multiple consumers in a consumer group which can read from partitions on the subscribed topic.

**Consumer Groups:**

Consumer group is used to organize consumers that are reading a stream of events from one or more topics. Consumer groups enable parallel processing of events and each consumer in the consumer group can read from one partition to enable load balancing on the client application. This functionality not only brings the parallel processing but also brings fault tolerance since if a consumer fails in a consumer group, Partition can be reassigned to another group member. 
---
title: "Arrays - Utility functions in Java Stream interface"
date: 2024-04-26T02:10:33-06:00
description: "Java utility functions to manipulate arrays"
tags: ["java", "nodejs", "javascript", "Streams", "Guava"]
type: post
showTableOfContents: true
---


As a JavaScript developer, I have a strong preference for concise and expressive code, particularly when working with arrays and streams. I find great efficiency and readability in using one-line functions to manipulate data, whether it's filtering, mapping, or reducing arrays. These functional programming techniques allow me to achieve complex operations in a succinct manner, enhancing the clarity and maintainability of my code. 

Interestingly, Java offers equivalents to these capabilities, providing developers with similar tools to streamline data processing and improve code efficiency. Whether through Java 8's Stream API or libraries like Guava, I appreciate the versatility and power of these functional programming features in both JavaScript and Java environments.

## With Java util.* Package

### Print an array to console
```java
System.out.println(Arrays.toString(arr));
```

### Fill an array with random numbers
```java
Arrays.fill(arr, new Random().nextInt(100));
```

### Transform all values in an array to random numbers

```java
Arrays.stream(arr).map(val -> new Random().nextInt(100)).toArray()
```

### Aggregations (min, max, count, sum, average)

```java
//Print Max number in array
System.out.println(Arrays.stream(arr).max().getAsInt());

//Min
System.out.println(Arrays.stream(arr).min().getAsInt());

//Count
System.out.println(Arrays.stream(arr).count());

//Sum
System.out.println(Arrays.stream(arr).sum())

//Average
System.out.println(Arrays.stream(arr).average().getAsDouble());
```

### Remove duplicates

```java
Arrays.stream(arr).map(val -> new Random().nextInt(100)).distinct().toArray();
```

### Sorting Arrays

```java
// Sort in descending order
var a = Arrays.stream(arr).boxed().sorted(Comparator.reverseOrder()).toArray();

// Sort in ascending order
var a = Arrays.stream(arr).boxed().sorted(Comparator.naturalOrder()).toArray();
```

### Filters items based on a specific condition

```java
// Filter odd numbers
Arrays.stream(arr).map(val -> new Random().nextInt(100)).filter(val -> val % 2 == 0).toArray();

//Filter values less than 12
Arrays.stream(arr).map(val -> new Random().nextInt(100)).filter(val -> val < 12).toArray();
```

### Check if all the elements of array meet a condition
```java
// Check if all the values are greater than zero
Arrays.stream(arr).allMatch(val -> val > 0);

// Check if any value is greather than zero
Arrays.stream(arr).anyMatch(val -> val > 0);

//Check if none of the values is gt 100
Arrays.stream(arr).noneMatch(val -> val > 100);
```

### Using Reduce to Aggregate values of an array

```java
// Sum all the values in an array
Arrays.stream(arr).reduce(0, (a,b) -> a+b)

// Product of all the values in
Arrays.stream(arr).reduce(1, (a,b) -> a*b)
```

## Using Google / guava dependencies

Guava, a popular Java library developed by Google, provides utilities for working with collections, including arrays and streams. While Java 8 introduced the Stream API for working with collections in a functional style, Guava offers additional functionalities and utilities for more complex scenarios. 

### Working with ObjectArrays

Guava provides utilities for working with arrays of objects through its `ObjectArrays` class. This class offers various methods for creating, manipulating, and inspecting arrays of objects. Here's an example of how you can use Guava's `ObjectArrays` to work with arrays of objects:

```java
import com.google.common.collect.ObjectArrays;
import java.util.Arrays;

...
  // Create an array of objects
  String[] array1 = {"apple", "banana", "orange"};
  String[] array2 = {"grape", "kiwi", "pear"};
  
  // Concatenate arrays
  String[] concatenatedArray = ObjectArrays.concat(array1, array2, String.class);
  System.out.println(Arrays.toString(concatenatedArray));
  
  // Reverse array
  ObjectArrays.reverse(concatenatedArray);
  System.out.println(Arrays.toString(concatenatedArray));
  
  // Clone array
  String[] clonedArray = ObjectArrays.clone(concatenatedArray);
  System.out.println(Arrays.toString(clonedArray));
  
  // Check if array contains an element
  boolean containsOrange = ObjectArrays.contains(concatenatedArray, "orange");
  System.out.println("Contains 'orange': " + containsOrange);
  
  // Find index of an element
  int indexOfBanana = ObjectArrays.indexOf(concatenatedArray, "banana");
  System.out.println("Index of 'banana': " + indexOfBanana);

```

In this example, we demonstrate how to concatenate arrays, reverse an array, clone an array, check if an array contains a specific element, and find the index of an element within the array using Guava's `ObjectArrays` utility class. These operations provide developers with convenient ways to manipulate arrays of objects in Java applications.

### Using Streams in Guava

```java
import com.google.common.collect.Streams;
import java.util.stream.Collectors;

...
  // Convert an array to a stream
  Integer[] numbersArray = {1, 2, 3, 4, 5};
  Streams.stream(numbersArray).forEach(System.out::println);
  
  // Convert a stream to an array
  Integer[] numbers = Streams.stream(numbersArray).toArray(Integer[]::new);
  // Filter elements
  Streams.stream(numbersArray)
    .filter(num -> num % 2 == 0)
    .forEach(System.out::println);
  
  // Map elements
  Streams.stream(numbersArray)
    .map(num -> num * num)
    .forEach(System.out::println);
  
  // Collect elements to a list
  List<Integer> squaredNumbers = Streams.stream(numbersArray).map(num -> num * num).collect(Collectors.toList());

```

Guava's `Streams` class provides utilities for converting arrays to streams (`Streams.stream()`), performing operations such as filtering and mapping on streams, and converting streams back to collections or arrays. It complements Java's Stream API and offers additional functionalities for developers working with collections in Java applications.
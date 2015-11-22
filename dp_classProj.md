dp_classProj
========================================================
author: jwismer
date: 11/21/2015
## Iris Sepal Length Distribution
## Histogram Manipulator Tool

Introduction
========================================================

I'd like to present a Shiny Application that uses a histogram 
display to help the user visualize dataset characteristics.
The dataset used in the tool is the Iris dataset available in R.
The distribution of Sepal Length is used to demonstrate how 
detail can be hidden or revealed by visualization tools such as 
histograms.

### Tool Features:
- User controlled bucket size
- Reactive display of the histogram

Histogram Basics
========================================================

The number of buckets can hide detail

![plot of chunk unnamed-chunk-1](dp_classProj-figure/unnamed-chunk-1-1.png) 

5 buckets : unimodal distribution

Histogram Basics
========================================================

Let's look at more Detial

![plot of chunk unnamed-chunk-2](dp_classProj-figure/unnamed-chunk-2-1.png) 

28 buckets : tri-modal distribution

The Shiny App
========================================================

### Click: [Shiny App Tool](https://jwismer.shinyapps.io/DataProducts_ClassProj)

Use the slider to manipulate the number of buckets.

Notice that more detail is revealed as the number of buckets is increased.

### Potential Uses of the App
- Teaching tool in High School
- Interactive Library settings
- Maybe good for introductory MOOCs

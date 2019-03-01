---
title: "Release notes 2.1.2"
date: 2018-07-09
draft: false
weight: 90
---

Avola 2.1.2-20180709.2 was released on July 9, 2018

##### Features

* New "Matches" operator for Text data. It is now possible to check your conditions / input data of type text against a "regular expression". For example, you can check if the input is a valid email address...
* PowerBI connector (beta) Import your execution data straight into PowerBI with our custom connector. Contact us if you are interesting to use the Beta version

##### Fixes and enhancements

* The graphical view of the test scenario has been further enhanced
* The view of a decision in read-only mode was not correct if you are not member of dependent domains (if any) #579
* in a List item condition, you can now use a list set business data with the In or Not In operator #575
* Fixed some broken links in MetaData forms
* Delete Decision Service (when no versions were created) is accessible again #570
* You can now doubleclick on a cell value that can not be edited in the decision table to reach the edit form #564
* Specify the business domain when you create a list or pair data element in the same form #511
* Some changes on big decision tables were not tracked correctly #576
* In the execution result model, when a data element is both used as condtion and operand, ir was just displayed as a condition #562
* Fixes in the execution count functionality #561
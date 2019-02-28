---
title: "Release notes 1.3.0"
date: 2017-04-18
draft: false
weight: 260
---

Avola 1.3-20170412.3 was released to production on April 18, 2017.

##### Features - enhancements

* Better Security and Account management
* You can now add discussion notes to a decision service version
* On Business Data Elements, you can now check where this element is used: open de detail of the business data and click the "Show where used" button.
* On Value Lists and Value Pairs, you can now retrieve a list of business data elements where tis list of pair is used.
* Overview pages for Value Lists and Value Pairs have been refactored for a better overview and filtering capabilities
* Knowledge Sources can now have a formatted description - so you can add some basic layout.
* The List of Business Data Elements can be exported to an Excel file. Find the button next to the create button on the Business Data overview page.
* Better navigation possibilities to open a child decision from a condition header in a decision table.
* Now possible to create a decision, straight from the condition header (if the business data is not yet used as a conclusion) (#199)
* You can now import your value lists from an Excel file
* If you have the release manager role, and you hover Decision Servicese or Business Data Elements in the overview, you will see the technical ID's. This might be handy for API development. 

##### Fixes

* When using the "In" or "Not In" operators on list item cells in a decision table, the validation warning now functions correct.
* Better handling of precision for decimal numbers. In some cases, the padding with additional zeroes was not correct.
* Some test scenarios could not be deleted (#178)
* Correct display label for "difference" operator for timespan conclusions (#198)
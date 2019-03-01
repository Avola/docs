---
title: "Release notes 2.0.2"
date: 2018-04-20
draft: false
weight: 120
---

Avola 2.0.2-20180420.3 was released on April 20, 2018

##### Fixes and enhancements

* In the API, 2 methods were added to retrieve past executions (check swagger for more details):
* GET /api/ApiExecution/executions/ref/{reference} will return you the first 20 executions with a specific reference in the request
* /api/ApiExecution/executions/key/{executionkey} returns a specific execution for a given key
* When importing a decision, it is no longer necessary to log in again. #543
* Fixed uploading percentage conditions in a scenario collection Excel template.
* Deleting or replacing items in a value list will now update the decisions and test scenario's where they are used #539
* Several performance optimizations in the front end (no more unnecessary reloading of data)
* When entering a decimal value with too many decimal places in a test scenario, it is no longer cleared when saving #542
* Fixed usage of negative values in test scenario's
* You can now filter lists by tags, by using the "Tag:" prefix when you type a filter
* Fixed download functionality on a read-only decision #540
* It is no longer possible to move a business data item to a concept in another domain.
* On Knowledge Sources, a property "language" was added to specify the language of the source.
* In Avola Forms, if your question is about a constrained whole number value, you can change the input type to a "slider"
* In Avola Forms, you can now better customize the summary email
* In Avola Forms, we fixed several issues with conditional visibility, and drag/drop behaviour #520

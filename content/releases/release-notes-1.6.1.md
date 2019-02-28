---
title: "Release notes 1.6.1"
date: 2017-11-22
draft: false
weight: 170
---

Avola 1.6.1-20171122.2 was released on November 22, 2017.

##### Fixes and enhancements

* Fixed a bug concerning the behavior of the "Contains" operator for Text type businessdata (ticket #458)
* Performance enhancements for test scenario collections
* Cache mechanism was refactored, fixing the unexpected "sequence" errors that appeared sometimes.
* Salutation (Mr, Mrs...) was removed, when in a list, accounts will be sorted by their name. #435
* Importing a scenario collection excel file with "No Conclusion" as expected result no longer throws an error. #436
* From now on, executions will be compressed before they are stored. 
* With this release, we also released Avola Forms 1.0.1 - Avola Forms is available by request for standard cloud customers. Drop us a message if you want to try it.
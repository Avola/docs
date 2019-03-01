---
title: "Release notes 2.1.3"
date: 2018-08-21
draft: false
weight: 80
---

Avola 2.1.3-20180821.2 was released on August 21, 2018

##### Features

* We introduce a new way to filter returned hit conclusions of an api execution. It is now possible to pick your own hit conclusions you want returned from your api execution to reduce the size of the response. This can be done by using the new attribute of the ApiExecutionRequest object, more info in our docs.
* Regular Expression library: Following up on last release, we implemented a regular expression library in the sidebar where an organisation admin can manage the RegEx templates so they do not have to be typed every time.

##### Fixes and enhancements

* Better performance for batch api executing
* Fixed a bug where it was not possible to download a BI report from a deicison service version
* Avola Forms: Themes are now organisation specific
* Fixed a bug where you would get too many pop-ups when cancelling an edit in decision logic
* In scenario test drd result we added the possibility to open the decision logic by double clicking on a diagram
* Fixed a bug where long condition names would mess up the view of the decision model
* Fine-tuned every drop-down and autocomplete so they are all consistent
* Double click to add formula items has been made more convenient
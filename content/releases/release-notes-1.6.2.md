---
title: "Release notes 1.6.2"
date: 2017-12-26
draft: false
weight: 160
---

Avola 1.6.2 was released on December 26, 2017.

##### Fixes and enhancements

* Numeric business data now have a field to (optional) specify the "unit" of the value.
* Buttons for opening, closing and terminating a project have been made clearer to avoid confusion. #448
* Performance optimizations for executions of large scenario collections
* Tweaked cache lifetime and retry settings, to avoid occasional exceptions #465
* Assigning roles in projects did not work properly when using "select all" checkboxes #447
* Correct handling of percentages in test collection excel templates #445
* Formula editor did not work as expected when using double click #450 #468
* Correct handling of default start and end date when managing a project #461 #441
* When changing the name of a business data, the display name of the related decision service would be incorrect. #455
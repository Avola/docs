---
title: "Release notes 1.6.0"
date: 2017-11-02
draft: false
weight: 180
---

Avola 1.6.0.20171102.2 was released on November 2nd, 2017.

##### Important Update

We made a minor change in the API definitions, which means that for the fist time, we have multiple versions of the API
For release managers with access to swagger, you can select the version in the top right corner.

In the new version, the "ExecutionKey" is added in the result. This identifies the decision execution object, and can be very useful.
Check the API versioning page for more information

If you don't want the change, you don't have to do anything. Don't hesitate to create a ticket if you have questions!

##### Enhancements and fixes

* Fixed paging on ApiAccounts overview.
* Editing date & time cells now adapts to the precision of the businessdata
* You can now add a timespan value to a datetime in a conclusion #360
* The account page shows an overview of the access rights for that account
* Dates no longer take the time in account when passed as an input value #369
* Decision table versions are added in the "Used in" functionality for the Decision definition
* Some notifications were added when a project is nearing its end date
* The formula editor was enhanced: the drop zones are bigger now, and you can just click to add an element
* More space for certain texts when viewed on a Mac

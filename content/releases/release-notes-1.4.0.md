---
title: "Release notes 1.4.0"
date: 2017-05-17
draft: false
weight: 240
---

Avola 1.4.20170517.3 was released on May 17, 2017.

##### Features and enhancements

* Decision service versions are now related to the project in which context they were created.
* Domain owners can close projects, as long as all decision services are no longer in approval processes. All decision services will be detached from the project.
* Decision services can be individually detached from a project, as long a they are not in approval.
* Decision services become "inactive" when none of their versions are currently deployed in a production environment. they can be reactivated for development, just like active decision services.
* When a decision services is submitted for approval, it is no longer automatically available in the test execution API. It becomes available after QA approval. 
* Decision Services that are not currently in a project, can be linked to any project in the same business domain.
* You can now search and retrieve individual decision executions from a decision service version.
* When examining a test result, you can now see and expand the tables that yielded no conclusion. (#256)
* you can now test decision service versions the same way you test decisions in development. From now on, when a version is created, it gets a copy of the scenario collections. 
* The test pages now have breadcrumb navigation.

##### Fixes

* Better handling of "no conclusion" data, fixing the "Parameter not defined" error. (#235)
* Navigation fix in the breadcrumb
* Navigation fix that broke the download Excel template functionality
* You can now export decisions and decision services to Excel
* Correct button visibility on business data (#254)
* Value lists and pairs can now only be linked to a domain, if they are only used within that domain. (#253)
* Underline behaviour in table headers (#250)
* Paging issue on decision overview (#255)
* There is now an API for searching, counting and aggregating decision executions
* Adding the first business concept in a domain no longer produces an error
* Better error handling for problems with ill-formed formulas (#206)
* Avoid creating duplicate test scenario's (#270)
* In the DRD, If a data element is already mentioned as a condition, it will no longer be repeated as an operand data element. (#273)
* Improved pages for errors (no access, no server)
* The pages now have a describing title, so they appear more detailed in your browsing history.
* Fixed security error message for modeler (#259)
* API accounts now have a search/filter field.
* Removed error column from test collection overview (#193)

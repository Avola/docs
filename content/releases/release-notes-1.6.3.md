---
title: "Release notes 1.6.3"
date: 2018-02-06
draft: false
weight: 150
---

Avola 1.6.3-20180206.2 was released on February 7, 2018

##### Fixes and enhancements

* You can now export decision services. This will generate a file that contains all necessary data about the service. You can then import the decision service in another environment, or in the same environment (if you want to duplicate the decision logic. The import will avoid reusing or creating duplicate data elements, so in some cases you will have to rename some imported elements.
* The execution counts are now available on the dashboard and on the Organisation page (if you have administrator privileges)
* In some cases, decisions that had required metadata which was not provided at execution time, would return a "no conclusion" result instead of an error. Now the decision will return an error object, asking the client to provide the required metadata
* A decision, with a Pair data element as conclusion type, would return the false value from the pair when the decision could not reach a conclusion. When reusing the conclusion element in other decisions, this could result in conflicting logic.
* Fixed a bug where list items were not refreshed correctly.
* In the paging navigation, buttons were added to navigate directly to the first or last page. #475
* When creating a test scenario, it was not possible to save it until the scenario was complete. Now you can save with incomplete values.
* Better validation on the formula editor
* You can now delete a decision service, as long as it has no versions. For example when you created it from the wrong decision table.
* Better checks on data constraints in the decision logic
* The performance of exporting scenario collection has been enhanced. Sometimes bigger collections would run into timeouts, and show you the "Oops" error page. #481
* In some localized browser, the execution date of a scenario was displayed as "invalid" #482
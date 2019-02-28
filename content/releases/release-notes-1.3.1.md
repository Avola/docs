---
title: "Release notes 1.3.1"
date: 2017-04-22
draft: false
weight: 250
---

Avola 1.3.1-20170422.2 was released on April 22, 2017.

##### Important

When working with calculations in numeric conditions of conclusions, the system would produce an error if a parameter in the calculation was empty. This was the case when said parameter was not passed in the request (execution API) or when the parameter was a conclusion of another decision that evaluated as "no conclusion".

In this case the new behaviour is that the calculations return "empty" (and no error). 

If you have not experienced these errors, the behaviour of your decisions is not impacted. 

##### Features / enhancements:

* You can now access your executed decisions and aggregations (count) through the API
* Decision Service ID is always visible for the release manager role (#242)
* The Decision overview form is redesigned to a grid with more functionality. If you use the filter "only services", the system will remember it. Additionally, you can hover any field and use the filter icon to add the value as a filter (#222, #204)
* The navigation items in the more menu of the condition headers in a decision table are now accessible for domain members (Read only access)
* In a decision table, the business data name in the header for a condition will be underlined when this business data element is used as conclusion for another decision. You can access additional functions on the header by using the "more" icon (three vertical dots)
* It is now possible to link value pairs and value lists to a business domain. This will limit the access to these objects and put the ownership in the hands of the domain owner. It is still possible to create lists or pairs for the whole organisation.
* "=" and "<>" operators for value list conditions have been renamed to "Is" and "Is not" (just like value pair conditions (#234)
* In the test results, when working with currencies, the currency sign is now displayed where needed (#208)

##### Fixes

* Removed unnecessary save button from "Where Used" screen (#240)
* Access rights for the organisation administrator are more limited now (#238)
* Some corrections on the "Where used" functionality (#239)
* It was not possible to describe a knowledge source item, without saving it first.
* The link generated in the "forgot password" functionality was incorrect in some cases. (#245)
* When unassigning project managers from a project, the page did not refresh correctly. (#248)
* The button to set a current project (from the list) did not work in certain combinations of roles.
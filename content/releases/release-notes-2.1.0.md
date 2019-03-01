---
title: "Release notes 2.1.0"
date: 2018-05-25
draft: false
weight: 110
---

Avola 2.1.0-20180517.4 was released on May 25, 2018.

##### Features

We introduced a new business data type "Set of Data".  
Until now, a business data element could only contain one value. The goal is that any data type can also be user as a set.  
In Avola 2.1, we release the first functionalities to support this.

You can now create a "Set of list items" (linked to a value list). You can use this type, only as input data. It is not available as a conclusion type.  
The call values for a List items set condition can only be edited in the detail form, so you have to use the icon.  
Set conditions are of course compared with an input set, there are 8 possible operators which are self-explanatory.

In Excel templates for tests, and in API executions, you have to pass the input as a semicolon-separated list. For example: "Bicycle;Jewelry;Shoes"

Existing data and decisions are not impacted by these changes.

##### Other fixes and enhancements

* Creating a pair with an existing name no longer results in an error that blocks the form.
* Fixed several minor front-end data refresh issues
* Creating a business domain with an existing name throws an error, but does not block the application anymore
* As a domain administrator, you can now create a domain, without being global administrator.
* When deleting a decision, the list is now refreshed.
* When, in a test result, multiple, conflicting rules are hit, only the first one was shown in the header #550

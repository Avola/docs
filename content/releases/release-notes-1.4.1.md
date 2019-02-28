---
title: "Release notes 1.4.1"
date: 2017-06-01
draft: false
weight: 230
---

Avola 1.4.1-20170530.2 was released on 01/06/2017.

##### Features

* The API accounts can now be secured. This means you can connect them to a business domain. The API account will only have access to the deployed decision services, in that domain. Note that existing api accounts will have all rights by default, to avoid interruptions in your client applications.
* Knowledge Sources can now be linked to decisions. (in the decision definition tab)
* From now on, changes on business data elements will be traced. so you can check and review the history for each businessdata
* You can use tags to categorize and group your decisions. The tags can be grouped in categories on the organisation settings page

##### Various fixes and enhancements

* Fixed a performance issue on the test dashboard
* Counts on paging controls now take filters in account (#303)
* Fixed a avigation issue on test scenario collections (#310)
* UI enhancements on execution search and count pages
* Fixed problem with downloading Excel temlates (#298)
* You can now download a scenario collection (to Excel)
* Fixed navigation issue with breadcrumb on test pages
* You will now receive a warning when trying to archive decision service versions. This action can not be undone (#293)
* Fixed double rendering of verbs in some cases (#286)
* Changing a date in a scenario from an uploaded collection now works as expected (#306)

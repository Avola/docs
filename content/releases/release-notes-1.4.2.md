---
title: "Release notes 1.4.2"
date: 2017-06-22
draft: false
weight: 220
---

Avola 1.4.2-20170622.02 was released on 22/06/2017.

##### Features

* 2 factor authentication (with SMS) is available now. It is not yet possible to configure it yourself. If you want to activate (or deactivate) 2FA on your account, create a support ticket with your phone number. 
* You can now export decision service versions to Excel #318
* We added navigation between decision tables on the test result page. When a condition is also a conclusion in another table, you can navigate to this table by clicking the condition header
* You can now check the state history of Decision services and their versions. #319
* It is now possible to drag and drop knowledge sources on the DRD (the visual "model")

##### Enhancements and fixes

* Better display of execution errors on the test pages
* In some configurations, the date values in test scenarios were not translated correctly to the execution API. This resulted in confusing errors. #345
* Timespan units remained displayed after clearing a cell #308
* Versions from decision services that are detached from a project can be tested now
* You can now pass metadata in a test scenario #331
* Layout issue with long business data names #342
* Saving and canceling a new test scenario would block the save button until refresh #333
* Release managers can access the execution API through the swagger interface #338
* Better feedback when a new password does not comply to complexity rules
* Enhanced display of cells in Edge browser
* Fixed error when removing knowledge sources with attachments #314
* Knowledge sources are no longer visible when you have no access to the related business domain. #316
* You can now also search specific executions by executionkey
* The navigation and "Where used" functionality is now also available for knowledge sources #313 #315
* Business data can be searched by ID 
* Better handling of scenario collection counts and color coding of the results #304
* Business data that is used as conclusion in a decision can no longer be used as metadata.
* Removed a confusing edit button on value list overview where edit funcionality was not available. #330
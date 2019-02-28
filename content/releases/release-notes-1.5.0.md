---
title: "Release notes 1.5.0"
date: 2017-09-20
draft: false
weight: 210
---

Avola 1.5 was released on september 20th, 2017

##### Features

* Two factor authentication (sms). To activate, go to "My Account". If you lose access to your phone, contact support to reset it.
* Avola Forms integration. Avola Forms is a whole new product, designed and build by Avola. It allows you to create intelligent questionnaires, linked to Decision Services in Avola. If you want to learn more about this feature, contact us.

##### Enhancements and fixes

* Security of the API accounts now also include the environments. So you can restrict API accounts to test and/or production 
* Clicking on a Decision name will lead to the Decision model and not the table. #354
* On the Decisions page we switched the tabs: Decision Services as the first tab and Decision Tables as the second. #353
* The limit of decimal places has been upgraded to 12 instead of 8. #380
* When doing a count with the aggregation period set to ‘Month’ we now show a range of results as following: ‘01/01/2017’ until ‘31/12/2017’. #328
* It is now also possible to type dates in the Edge browser instead of only selecting them from the date picker. #309
* Enhanced execution cell errors: when there is a problem with a cell in an execution we will now give more details of the cell in the error message.
* You can now change your UI language without the admin right. #373
* A Release Manager that doesn’t have the Administrator right can now access the API accounts in the settings menu. #397
* Tagging a Decision Service works without error. #388
* In order to print a decision model, for now, click on the camera icon ‘download diagram as png’ and print this image. #383
* Fixed bug where after adding a condition to a decision it would copy the values of the condition next to it. #363
* Now when the minimum or maximum value of Currency-, Decimal-, Wholenumber- or Timespan data is set, you can’t save the Decision table when entered incorrectly.
* Fixed bug where clicking on a header in the test result screen scrolled too far.
* The expected conclusion of type "Value from List" in decision service version scenario's can now be changed again. #369
* You can now copy/paste into the new password field or use a password management tool (ex: Lastpass) to fill in the "new password" field when changing your password, or activating your account. #361  
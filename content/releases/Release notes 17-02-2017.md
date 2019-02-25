---
title: "Release 17-02-2017"
date: 2017-02-20T15:06:20+02:00
draft: false
weight: 300
---

Here are the notes for Avola Release 20170217.3

##### Features

* [EXEC API] Row Expression as extra field in Row (and in hit rule in execution result) (728)
* [EXEC API] Reference field in execution result (870)
* [API] Update cache when editing organisation fields (953)
* [UI] [API] Enable archiving decision service when all versions are withdrawn, archived or abandoned (897)
* [EXEC API] Metadata in API Decision Service Description (737)

##### Enhancements

* [UI] Better error handling when entering string in integer field and other way around in the quick test of a decision service version. (832)
* [API] [UI] Better handling of list values in decision tables (895 880 900)
* [UI] [IDSRV] When a user requests a password reset, force the user to change the temporary password upon first login (to avoid use of passwords that are mentioned in emails) (775)
* [UI] Prevent saving a row in decision logic without conclusion value (864)
* [UI] More detailed message when the system refuses to delete a used Business Data (916)
* [UI] Better error handling when a business data is created without a Concept reference. (916)
* [UI] Prevent create decision from decision logic when no verb is chosen (865)
* [UI] Better formula handling in decision table (945 946)
* [UI] Better handling of calculated timespans (956)

##### Fixed problems

* [API] Solved Error – “sequence contains more than…” (851)
* [API] Send correct email when resetting password (884)
* [API] Temporary safety fix for handling the closing of projects: avoid inaccessible projects (944)
* [UI] Better error handling when creating an incomplete pair (917)
* [UI] Correctly update team data on the form when saving or cancelling to avoid refresh (896)
* [UI] Update business domain cache when adding a concept and avoid refresh (891)
* [EXEC API] In deployed decision services, removed the version number from the service name (861)
* [UI] Correctly open test result when navigating directly from the collection (879)
* [API] Don’t allow deleting the last Administrator (963)
* [API] Fixed memory exception when deploying some decision service versions (949)
* [UI] Remove Dashboard items that are not functional now (933)

##### Known Issues

* [API] [UI] Projects cannot be closed for now. The end-of life of a projects requires various checks and reassignments of decision and version objects.
* [UI] Date and time picker is not user friendly and does not take business data precision in account. Will be replaced in next release.
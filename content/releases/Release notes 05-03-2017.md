---
title: "Release 05-03-2017"
date: 2017-03-05T15:06:20+02:00
draft: false
weight: 290
---

Release notes for version 20170305.1

##### Enhancements

* [UI] New navigation for testing decisions. The test tab moved to the main navigation.
* [UI] Avola remembers the decision you are testing. This makes it easier to return to your tests while navigating complex decision structures
* [UI] The DRD (visual model) has been reworked with a different framework that will support complex user interaction in the future.
* [UI] All Date and Time fields have been refactored, to provide a better user experience for input.
* [API] When executing a scenario collection, individual scenarios are validated if the decision has changed
* [API] Stricter data handling of Excel files with scenario collections.
* [UI] Sorting business concepts in business domains details
* [UI] [API] Possibility to clone test scenario’s
* [UI] Filter scenarios by name
* [API] Better layout of emails sent by Avola. Including correct hyperlinks to referenced objects
* [UI] Add missing translations to Dutch.
* [UI] After changing Avola password: redirect to start screen

##### Fixed problems

* [UI] Test result page displays the intermediate conclusions on the right place now
* [UI] When deleting a condition column, in some cases the table view was not correct until after the save
* [UI] Formula fields don’t throw errors when they shouldn’t
* [UI] Right operand for between cells are cleared when the operator is changed to a singular one
* [UI] Disabled formula possibility for non-numeric types
* [API] When changing the name of a Business Data Element, the name of a corresponding decision is changes as well
* [UI] When renamed, the Concept data wasn’t updated correctly the Business Domain detail
* [API] Update cache when organization properties change
* [UI] Clearing a value list condition will result in the operator being error, and thus not being able to save.
* [UI] Fix javascript error in decision logic screen.
* [UI] Create decision from decision logic: prevent 'create' when no verb is chosen
* [UI] Decision condition details were not shown correctly in Firefox

##### Known Issues

* [UI] Date and Time input fields are less strict in Firefox then in other browsers. For a date: enter YYYY-MM-DD, for a time: HH:MM:SS . There is no problem in the database or at execution time. Firefox just doesn’t support you as well as chrome when you must enter a date or time. We suggest using the chrome browser.
* [API] [UI] Projects cannot be closed for now. The end-of life of a projects requires various checks and reassignments of decision and version objects.
* [UI] The DRD items only allow navigation to decision logic (logic) and not directly to other pages.
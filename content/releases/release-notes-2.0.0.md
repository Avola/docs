---
title: "Release notes 2.0.0"
date: 2018-03-20
draft: false
weight: 140
---

Avola 2.0.0 was released on March 20, 2018. It brings some important changes to our modeling environment. While the functionality and  execution of decisions hasn’t changed, we’ve built some new navigation controls  that will make building and testing decisions much easier.

##### Features and enhancements

* We’ve replaced the tabs in the domain page  with a drop-down menu, making it easier to find the objects you need.
* Project navigation  behaves differently depending on whether you have a project opened or not. When you aren’t working in a project, the “Projects” menu item will redirect you to the list of  projects, where, if you have the appropriate access, you can manage them or  open as your working project.
* When you are  working in a project, you can see its name in the collapsed left sidebar (like  before). Clicking the menu item “Project” will open a sub-menu that allows you  to access the different details and linked objects of the current open working  project.
* The decision overview (list) pages are  still there, but we’ve replaced the multiple buttons on the list items with one  context menu button that has all the direct links.
* In the decision detail pages, most of the  tabs have been removed in favour of a similar context menu on the right. The  left side of the title bar has the name of the decision, while the right side  offers the description of what you’re currently looking at and a hamburger icon  that allows you to switch to other functionalities within the same decision.
* The search bar has moved to a more visible  place in the top menu. It performs fast text searches on Decisions, Business  data, value lists and pairs, and knowledge sources.
* Projects and decisions can be “favourited”  by clicking the star icon in front of their name. There is a separate overview  page with just your favourites.
* When the left  sidebar is expanded, it will show the navigation history of your current  session. This data is saved locally and not kept when you close the browser. It  helps you navigate back and forth between different pages that have no direct navigation. The navigation history is open by default, but can be closed easily.
* Then Account & Security pages in the right hand menu (accessed by clicking your name) have been reordered and refreshed in accordance with the new layout. Like on the decision pages, the title bar has a context menu button on the right with easy navigation links.
* It’s now possible to export a report of the  executions from any environment. You can create an export for a specific decision service version, for a specific period (Execution Analysis).
* For data exports: On the decision service version overview, click the context button on any version, and select "Request BI data for reporting". In the "Account" menu, navigate to the “execution analysis” page (that also contains the counts). In the second tab you find the generated reports. On this page it is also possible to request a new export, for any decision service version by clicking the orange "+" button.
* The confirmation popup when  deleting an object now contains the name of that object. #489
* Execution of entire scenario  collections has been optimized and is a lot faster now
* Better notifications for back-end jobs (like executing a scenario collection)
* When you download a scenario collection Excel, it will get a unique name.
* We created better notifications for jobs that run asynchronously.
* Importing a scenario collection now works in an asynchronous job, so you don’t have to wait for it.
* Success counts on scenario collections were not always correct #488
* Knowledge sources are now directly accessible from the domains menu.
* The condition and conclusion headers of the decision table have a new context menu item: “show where used”, allowing for easier navigation in decision services
---
title: "Release notes 1.5.1"
date: 2017-09-25
draft: false
weight: 200
---

Avola 1.5.1 was released on september 25th, 2017.

##### Forms integration

* The Avola Forms API is now secured for every environment separately.
* We fixed an issue in the release pipeline where deployment could stall for certain customers #419
* We introduced technology (SignalR) that enables us to update the application in real-time, without refreshing the page. For example, when you execute a scenario collection, the results are updated when they arrive.
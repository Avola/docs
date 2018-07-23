---
title: "Avola Free Q & A"
date: 2018-07-22T15:06:20+02:00
draft: false
weight: 25
---

##### In the example of the first decision you used text value for the happiness scale, but in the second example you used a value list for a scale. What should I do?

You should always use a value list for these matters. In the three-step wizard, you don't have the option of creating a value list, only the three simple options of text, numbers or a yes/no pair. That's also why we don't advise using the wizard to create all your decision tables.

##### You can create a value list by navigating to value lists in the 'data' drop-down menu and clicking the orange plus button.

Creating a value lists for these scales ensures that no mistakes can be made when inputting these values. There's no room for typos, synonyms or answers that slightly deviate from the ones you need. This is especially useful when analyzing data and if you have to use the scale as a condition in a decision.

##### What if you need to add a condition but haven't created business data yet?

You can always add business data by clicking on 'business data' in the drop-down menu of 'data'. There, you can choose to add business data of every type possible (value lists, value pairs, date/time, etc.) instead of just the text, number or yes/no option you get in the three-step wizard. This allows you to create more complicated decision models, based on a varied group of data.

##### What if one of the conditions of my decision depends on the outcome of another decision?

There are two options here. If the decision you need to use as a condition already exists, simply click the orange plus button above your decision table and search for its name. 

If you haven't created the a decision table yet for the decision you need as a condition, you'll have to do that first. Create a new decision using the steps mentioned in 'creating more decision tables'. Once you've done that, go to the decision logic of your upper-level decision, and click on the orange plus button to add your newly made decision as a condition.

*For example, I need the level of happiness I created in the first part as a condition for my level of job satisfaction. If I hadn't made the happiness decision table yet, I would have to do that now. Then I go to the decision table of 'determine level of job satisfaction', click add condition and search for 'happiness'. I've now added a decision as a condition.*

##### What do I do when I want to create a decision table with a value list as new business data, but I haven't created the value list yet?

Start creating your new decision table and business data, and select 'list data' as the data type. Then click on the orange plus button you see next to the drop-down menu of value lists. You can choose a name for your new value list there. Click create. 

![New value list](/images/using-avola-free/new-value-list.png)

Once you’ve created the decision table, you can start adding values to your value list by clicking the options button (three vertical dots) in the cell of your decision. Select 'add item' and start creating your value list. 

![New value list](/images/using-avola-free/new-value-list-add.png)

{{% alert theme="warning" %}}Do you have a question we didn’t answer in our Q&A? Let us know by mailing us at [support@avo.la](mailto:support@avo.la){{% /alert %}}



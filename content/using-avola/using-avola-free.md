---
title: "Using Avola Free"
date: 2018-07-19T15:06:20+02:00
draft: false
weight: 15
---

##### Creating your first decision table
Structuring your decisions can seem very intimidating, but it's actually quite easy. You can create your first decision using the three-step builder seen below. 
![Create your first decision](/images/using-avola-free/create-your-first-decision.png)

In the first step, you'll have to choose a name for your decision and the verb that fits your needs (calculate, determine or define). Then indicate what type of data your decision will result in: a whole number value, a text value or a yes/no value. Lastly, determine on which conditions your result is based. After filling in the appropriate information, click 'create'.

*For example*<br>
*I want to determine the level of happiness. So I fill in: determine happiness, which is a text value. My level of happiness is influenced by the temperature in degrees Celsius (number value), and the amount of hours I slept during the previous night (number value). Those I add as conditions and I click create.*

##### Adding your logic to the created decision table
![Add your logic](/images/using-avola-free/add-your-logic.png)
Now, you can see the structure of your first decision table. On the right, I have the decision I want to make called 'happiness'. The two columns to the left of 'happiness' show the conditions my result is based upon. This is where you can start **adding your logic and the result they will lead to by clicking 'add row'**. Every row will make up 1 rule. Make sure to add every possible answer per condition and the result they will lead to!

*Example*<br>
*If the temperature is above 25°C I am very happy, no matter how many hours I've slept.*<br>
*If the temperature is between 20 and 25 degrees and I have slept 7 or more hours, I am happy.*<br>
*If the temperature is between 20 and 25 degrees and I have slept less than 7 hours, I feel neutral.*<br>
*If the temperature is below 20 degrees and I have slept 7 or more hours, I feel neutral.*<br>
*If the temperature is below 20 degrees and I have slept less than 7 hours, I feel unhappy.*<br>

![Add rules](/images/using-avola-free/add-rules.png)

All the example rules mentioned are structured in the table above. Don't forget to save your changes! Afterwards, you can click the options button on the right to **see the decision model** of your table. 

##### Testing
You can also use the options icon to **test your decision**. You have ten scenarios to test your logic. Once you open the scenario, you can note down the expected conclusion type and conclusion. Switching to the 'scenario' tab you can input the logic you want to test. Click 'test scenario' to run the test and see whether it ended in a success.

![Test Decision](/images/using-avola-free/test-decision.png)

Example: For this scenario, I expect a conclusion of happy (which means a conclusion type of success). I then open the 'scenario' tab and note a temperature of 25 degrees and an amount of 7 hours slept during the previous night. I test the scenario which ends up in success: I am happy. 

We advise you to use the scenarios to properly test your decision logic. This ensures you didn't forget to add a rule. 

##### Creating more decision tables

We don't advise using our three-step wizard to create all your decisions. You can always **add a decision table** by clicking 'add decision table' in the drop-down menu of 'decisions'.

![Add more decisions](/images/using-avola-free/create-more.png)

First, select the appropriate verb for your decision. Then you can either choose existing business data or create a new one. If you create new business data you'll have to name it and choose the corresponding business concept and data type. Click 'create' to go to your decision table.

*Example: I want to determine the level of job satisfaction of my colleagues. I put 'determine' as the verb then name my business data 'level of job satisfaction'. It corresponds to the 'general' business concept and it's a list. I've chosen a list because I want to input a scale from very satisfied to very unsatisfied.*

![Create new decision](/images/using-avola-free/create.png)

*If your list already exists, you can select it. If not, you can click the orange plus button, choose a name for your value list and click create (more on the creation of value lists in the Q&A section).*

Now that you have the decision table, you can start adding your logic. There are two possibilities here: add conditions, or create a decision with one row that isn't dependent on any conditions. 

If you choose to add a condition, click the orange plus button in the upper right corner and enter the name of the condition you want to add or create. 

If your decision isn't dependent on a condition, you can click 'add row' on the bottom left side to start adding your decision rule. If you need to input a calculation, click the option button of the cell (three vertical dots) to edit the cell, then click on the option button again in the pop-up, where you will find the 'create formula' button.

##### Integrating the execution of decisions in your own software 

You can use the decision models and their results in any tool by using our execution API. Click on your name in the upper right corner and go to 'my account'. Then go to the 'security' tab.

![API credentials](/images/using-avola-free/api-credentials.png)

In the security tab, you can generate your API credentials which are used to authenticate requests. You can use our NPM package to easily integrate out API in your application. This allows you to actually use the decision logic and models you've put into Avola, rather than just letting them sit there. 
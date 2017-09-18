---
title: "Getting Started"
date: 2017-09-06T15:05:17+02:00
author: Bart Dupon
draft: false
weight: 5
---

## Prerequisites
Before getting started, make sure hou have the following:
  
* An Avola environment. You received a custom swagger endpoint. I will refer to ths as [endpoint], so you can replace it where needed.
* In Avola, you need to create an API account. 
* An Avola, you need at least one decision service

If you have trouble with this, contact support to help you out.

## Client authentication

Avola works with an external authentication server, that issues tokens. So we need to call this first, before executing actual decisions.
The token can be reused and has an expiration date.

For the correct token endpoint, call [endpoint]/api/Settings - in the response you will find the [authority] and [tokenendpoint] you need.

Then, request a token, for the scope 'avola-api-client':

```json
POST [tokenendpoint] HTTP/1.1
Content-Type: application/x-www-form-urlencoded
Host: [authority]
Content-Length: 171

grant_type=client_credentials&client_id=YOURCLIENTID&client_secret=YOURSECRET&scope=avola-api-client
```
The response looks like this, save the token.

```json 
{
    "access_token": "TOKENSTRING",
    "expires_in": 3600,
    "token_type": "Bearer"
}
```

## Get a list of decision services

```json
GET [endpoint]/api/ApiExecution/list HTTP/1.1
Content-Type: application/json
Authorization: Bearer TOKENSTRING
```

This will you return you a list of decision services, each with a list of decision service versions. The example response below has one decision service (id 16), with one version (number 1). In the version you find the expected input data (BusinessDataId's 244 and 245). This is all the information you need to execute the decision service.

{{%expand "Click to expand the full example json for a list of decisions" %}}
```json
[
  {
    "DecisionServiceId": 16,
    "Name": "Price",
    "Versions": [
      {
        "DecisionServiceId": 16,
        "Name": "Price - Version 1",
        "DecisionServiceVersionId": 25,
        "VersionNumber": 1,
        "InputData": [
          {
            "BusinessDataId": 245,
            "Version": 1,
            "Name": "Food Type",
            "Type": "ListData",
            "Question": null,
            "Properties": [
              {
                "Name": "ValueListId",
                "Value": "43"
              }
            ]
          },
          {
            "BusinessDataId": 244,
            "Version": 1,
            "Name": "Weight",
            "Type": "DecimalNumberData",
            "Question": "What is the weight in kg?",
            "Properties": [
              {
                "Name": "MaximumDecimalValue",
                "Value": ""
              },
              {
                "Name": "MinimumDecimalValue",
                "Value": ""
              },
              {
                "Name": "DecimalPlaces",
                "Value": "2"
              }
            ]
          }
        ],
        "OutputData": [
          {
            "BusinessDataId": 243,
            "Version": 1,
            "Name": "Price",
            "Type": "CurrencyData",
            "Question": "What is the price?",
            "Properties": [
              {
                "Name": "IsoCode",
                "Value": "EUR"
              },
              {
                "Name": "Sign",
                "Value": "€"
              }
            ]
          }
        ],
        "TraceData": [],
        "MetaData": [],
        "PairData": [],
        "ListData": [
          {
            "ListId": 43,
            "Items": [
              {
                "Id": 443,
                "Order": 0,
                "Value": "Cheese",
                "Name": "Cheese"
              },
              {
                "Id": 444,
                "Order": 0,
                "Value": "Nuts",
                "Name": "Nuts"
              },
              {
                "Id": 445,
                "Order": 0,
                "Value": "Fruit",
                "Name": "Fruit"
              }
            ]
          }
        ]
      }
    ]
  }
]
```
{{% /expand %}}

## Execute the decision

This is a fairly simple request. The body of this POST has the DecisionServiceId and VersionNumber, which we got form the object above. It has an optional Reference which is returned identically.
The input data goes in the ExecutionRequestData array. for each input data you provide a key (the BusinessDataId) and a value (the actual value, always represented as a string)

```json
POST [endpoint]/api/ApiExecution/execute HTTP/1.1
Content-Type: application/json
Authorization: Bearer TOKENSTRING

{
  "DecisionServiceId": 16,
  "VersionNumber": 1,
  "Reference": "MyReference",
  "ExecutionRequestData": [
    {
      "Key": 245,
      "Value": "Cheese"
    },
    {
      "Key": 244,
      "Value": "5"
    }
  ],
  "ExecutionRequestMetaData": [  ]
}
```

The service tries to reach a conclusion and returns a response. First thing to inspect is the "ConclusionValueType" which can have 3 possible values:

**0: Success**, the decision returned a final conclusion, of which the BusinessDataId is specified in FinalConclusionBusinessDataId.
The response can contain multiple "HitConclusions", but for now, we are interested in the main one, it is the one with the BusinessDataId as specified in FinalConclusionBusinessDataId (here: 243). The value of our conclusion is "19.00", we have calculated our price.

**1: No Conclusion**, the decision could not reach a final conclusion. No rows were hit in the top level decision table. It is, however possible, that we have HitConclusion objects. These objects are conclusions from lower level tables.

**2: Error**, in this case, there will be at least one object in the "Errors" array. You will receive an error, if you violate constraints, or for example, if you pass text data in a numeric input BusinessData

```json
{
  "DecisionTableId": 102,
  "DecisionServiceId": 16,
  "Reference": "MyReference",
  "FinalConclusionBusinessDataIds": [
    243
  ],
  "ConclusionValueType": 0,
  "HitConclusions": [
    {
      "ConclusionName": "Price",
      "ConclusionId": 102,
      "DecisionTableName": "Price",
      "DecisionTableId": 102,
      "BusinessDataId": 243,
      "RowId": 383,
      "RowExpression": "Weight > 5.00 And Food Type = [Cheese]",
      "Value": "19.00",
      "RowOrder": 1
    }
  ],
  "Errors": []
}
```

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

This will you return you a list of decision services, each with a list of decision service versions. The example response below has one decision service (id 33), with one version (number 1). In the version you find the expected input data (BusinessDataId's 472 and 473). This is all the information you need to execute the decision service.

{{%expand "Click to expand the full example json for a list of decisions" %}}
```json
[
  {
    "DecisionServiceId": 33,
    "Name": "Price",
    "Versions": [
      {
        "DecisionServiceId": 33,
        "Name": "Price - Version 1",
        "DecisionName": null,
        "DecisionServiceVersionId": 45,
        "VersionNumber": 1,
        "InputData": [
          {
            "BusinessDataId": 472,
            "Version": 1,
            "Name": "Item Type",
            "Type": "ListData",
            "Question": null,
            "Properties": [
              {
                "Name": "ValueListId",
                "Value": "72"
              }
            ]
          },
          {
            "BusinessDataId": 473,
            "Version": 1,
            "Name": "Sale Date",
            "Type": "DateTimeData",
            "Question": null,
            "Properties": [
              {
                "Name": "MaximumDatetimeValue",
                "Value": ""
              },
              {
                "Name": "MinimumDatetimeValue",
                "Value": ""
              },
              {
                "Name": "DateTimePrecision",
                "Value": "Seconds"
              }
            ]
          }
        ],
        "OutputData": [
          {
            "BusinessDataId": 471,
            "Version": 1,
            "Name": "Price",
            "Type": "DecimalNumberData",
            "Question": null,
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
        "TraceData": [],
        "MetaData": [],
        "PairData": [],
        "ListData": [
          {
            "ListId": 72,
            "Items": [
              {
                "Id": 562,
                "Order": 0,
                "Value": "Food",
                "Name": "Food"
              },
              {
                "Id": 563,
                "Order": 0,
                "Value": "Drinks",
                "Name": "Drinks"
              },
              {
                "Id": 564,
                "Order": 0,
                "Value": "Clothes",
                "Name": "Clothes"
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
  "DecisionServiceId": 33,
  "VersionNumber": 1,
  "Reference": "MyReference",
  "ExecutionRequestData": [
    {
      "Key": 472,
      "Value": "Food"
    },
    {
      "Key": 473,
      "Value": "2017-04-25 13:21:59"
    }
  ],
  "ExecutionRequestMetaData": [  ]
}
```

The service tries to reach a conclusion and returns a response. First thing to inspect is the "ConclusionValueType" which can have 3 possible values:

**0: Success**, the decision returned a final conclusion, of which the BusinessDataId is specified in FinalConclusionBusinessDataId.
The response can contain multiple "HitConclusions", but for now, we are interested in the main one, it is the one with the BusinessDataId as specified in FinalConclusionBusinessDataId (here: 471). The value of our conclusion is "15.99", we have calculated our price.

**1: No Conclusion**, the decision could not reach a final conclusion. No rows were hit in the top level decision table. It is, however possible, that we have HitConclusion objects. These objects are conclusions from lower level tables.

**2: Error**, in this case, there will be at least one object in the "Errors" array. You will receive an error, if you violate constraints, or for example, if you pass text data in a numeric input BusinessData

```json
{
  "DecisionTableId": 203,
  "DecisionServiceId": 33,
  "Reference": "MyReference",
  "FinalConclusionBusinessDataIds": [
    471
  ],
  "ConclusionValueType": 0,
  "HitConclusions": [
    {
      "ConclusionName": "Price",
      "ConclusionId": 203,
      "DecisionTableName": "Price",
      "DecisionTableId": 203,
      "BusinessDataId": 471,
      "RowId": 652,
      "RowExpression": "error",
      "Value": "15.99",
      "RowOrder": 2
    }
  ],
  "Errors": []
}
```

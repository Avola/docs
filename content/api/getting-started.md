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

```txt
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

```txt
GET [endpoint]/api/ApiExecution/list HTTP/1.1
Content-Type: application/json
Authorization: Bearer TOKENSTRING
```




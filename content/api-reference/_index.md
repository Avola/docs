---
title: "API Reference"
date: 2018-06-13T00:08:49+02:00
draft: false
weight: 50
---

This is the formal definition of the Avola API. 

#### V2 changes 
Version 2 introduces a new property 'ExecutionKey' in the result when executing. When calling the API from an external application you can request to use version 2 of a REST endpoint for execution. Either send a Custom Header along the request: Key=api-version Value=2. Or request it in the Accept-Header: Key=Accept Value=application/json;api-version=2

## Avola API Definition

### /api/ApiExecution/execute
---
##### ***POST***
**Summary:** V2: Execute a descision service version, this returns all conclusions, from all decisions in the decision service

**Parameters**

| Name | Located in | Description | Required | Schema |
| ---- | ---------- | ----------- | -------- | ---- |
| executionrequest | body |  | Yes | [ApiExecutionRequest](#apiexecutionrequest) |

**Responses**

| Code | Description | Schema |
| ---- | ----------- | ------ |
| 200 | OK | [ExecutionResultV2](#executionresultv2) |

### /api/ApiExecution/execute/notrace
---
##### ***POST***
**Summary:** V2: Execute a decision service version, but returns only the final conclusion

**Parameters**

| Name | Located in | Description | Required | Schema |
| ---- | ---------- | ----------- | -------- | ---- |
| executionRequest | body |  | Yes | [ApiExecutionRequest](#apiexecutionrequest) |

**Responses**

| Code | Description | Schema |
| ---- | ----------- | ------ |
| 200 | OK | [ExecutionResultV2](#executionresultv2) |

### /api/ApiExecution/execute/batch
---
##### ***POST***
**Summary:** V2: Like Execute, but expects an array of requests. Use the reference field to map the results on the requests

**Parameters**

| Name | Located in | Description | Required | Schema |
| ---- | ---------- | ----------- | -------- | ---- |
| executionrequests | body |  | Yes | [ [ApiExecutionRequest](#apiexecutionrequest) ] |

**Responses**

| Code | Description | Schema |
| ---- | ----------- | ------ |
| 200 | OK | [ [ExecutionResultV2](#executionresultv2) ] |

### /api/ApiExecution/execute/batch/notrace
---
##### ***POST***
**Summary:** V2: Like Execute/notrace, but expects an array of requests. Use the reference field to map the results on the requests

**Parameters**

| Name | Located in | Description | Required | Schema |
| ---- | ---------- | ----------- | -------- | ---- |
| executionrequests | body |  | Yes | [ [ApiExecutionRequest](#apiexecutionrequest) ] |

**Responses**

| Code | Description | Schema |
| ---- | ----------- | ------ |
| 200 | OK | [ [ExecutionResultV2](#executionresultv2) ] |

### /api/ApiExecution/decisions/list
---
##### ***GET***
**Summary:** Will return you the list and details of all decision services and their versions, that the logged in account has access to.

**Responses**

| Code | Description | Schema |
| ---- | ----------- | ------ |
| 200 | OK | [ [DecisionServiceDescription](#decisionservicedescription) ] |

### /api/ApiExecution/decisions/{decisionServiceId}
---
##### ***GET***
**Summary:** Will return you the versions and details of a specific decision service.

**Parameters**

| Name | Located in | Description | Required | Schema |
| ---- | ---------- | ----------- | -------- | ---- |
| decisionServiceId | path |  | Yes | integer |

**Responses**

| Code | Description | Schema |
| ---- | ----------- | ------ |
| 200 | OK | [ [DecisionServiceDescription](#decisionservicedescription) ] |

### /api/ApiExecution/decisions/{decisionServiceId}/{version}
---
##### ***GET***
**Summary:** Will return you the details of a specific decision service version.

**Parameters**

| Name | Located in | Description | Required | Schema |
| ---- | ---------- | ----------- | -------- | ---- |
| decisionServiceId | path |  | Yes | integer |
| version | path |  | Yes | integer |

**Responses**

| Code | Description | Schema |
| ---- | ----------- | ------ |
| 200 | OK | [DecisionServiceVersionDescription](#decisionserviceversiondescription) |

### /api/ApiExecution/executions/ref/{reference}
---
##### ***GET***
**Summary:** Will return the top 20 of executions that were executed with the given reference.

**Parameters**

| Name | Located in | Description | Required | Schema |
| ---- | ---------- | ----------- | -------- | ---- |
| reference | path |  | Yes | string |

**Responses**

| Code | Description | Schema |
| ---- | ----------- | ------ |
| 200 | OK | [ [DecisionExecutionMessage](#decisionexecutionmessage) ] |

### /api/ApiExecution/executions/key/{executionkey}
---
##### ***GET***
**Summary:** Will return the execution with the given executionkey

**Parameters**

| Name | Located in | Description | Required | Schema |
| ---- | ---------- | ----------- | -------- | ---- |
| executionkey | path |  | Yes | string |

**Responses**

| Code | Description | Schema |
| ---- | ----------- | ------ |
| 200 | OK | [DecisionExecutionMessage](#decisionexecutionmessage) |

### /api/Settings
---
##### ***GET***
**Responses**

| Code | Description | Schema |
| ---- | ----------- | ------ |
| 200 | OK | [ApiDescription](#apidescription) |

### Models
---

### ApiExecutionRequest  

| Name | Type | Description | Required |
| ---- | ---- | ----------- | -------- |
| DecisionServiceId | integer |  | No |
| VersionNumber | integer |  | No |
| Reference | string |  | No |
| ExecutionRequestData | [ [ExecutionRequestData](#executionrequestdata) ] |  | No |
| ExecutionRequestMetaData | [ [ExecutionRequestData](#executionrequestdata) ] |  | No |

### ExecutionRequestData  

| Name | Type | Description | Required |
| ---- | ---- | ----------- | -------- |
| Key | integer |  | No |
| Value | string |  | No |

### ExecutionResultV2  

| Name | Type | Description | Required |
| ---- | ---- | ----------- | -------- |
| DecisionServiceId | integer |  | No |
| Reference | string |  | No |
| ExecutionKey | string |  | No |
| FinalConclusionBusinessDataIds | [ integer ] |  | No |
| ConclusionValueType | string |  | No |
| HitConclusions | [ [HitConclusion](#hitconclusion) ] |  | No |
| Errors | [ [ErrorMessage](#errormessage) ] |  | No |

### HitConclusion  

| Name | Type | Description | Required |
| ---- | ---- | ----------- | -------- |
| ConclusionName | string |  | No |
| ConclusionId | integer |  | No |
| DecisionTableName | string |  | No |
| DecisionTableId | integer |  | No |
| BusinessDataId | integer |  | No |
| RowId | integer |  | No |
| RowExpression | string |  | No |
| Value | string |  | No |
| RowOrder | integer |  | No |

### ErrorMessage  

| Name | Type | Description | Required |
| ---- | ---- | ----------- | -------- |
| Message | string |  | No |
| Code | string |  | No |
| Values | [ string ] |  | No |

### DecisionServiceDescription  

| Name | Type | Description | Required |
| ---- | ---- | ----------- | -------- |
| DecisionServiceId | integer |  | No |
| Name | string |  | No |
| Versions | [ [DecisionServiceVersionDescription](#decisionserviceversiondescription) ] |  | No |

### DecisionServiceVersionDescription  

| Name | Type | Description | Required |
| ---- | ---- | ----------- | -------- |
| DecisionServiceId | integer |  | No |
| Name | string |  | No |
| DecisionName | string |  | No |
| DecisionServiceVersionId | integer |  | No |
| VersionNumber | integer |  | No |
| InputData | [ [DecisionServiceVersionBusinessData](#decisionserviceversionbusinessdata) ] |  | No |
| OutputData | [ [DecisionServiceVersionBusinessData](#decisionserviceversionbusinessdata) ] |  | No |
| TraceData | [ [DecisionServiceVersionBusinessData](#decisionserviceversionbusinessdata) ] |  | No |
| MetaData | [ [DecisionServiceVersionBusinessData](#decisionserviceversionbusinessdata) ] |  | No |
| PairData | [ [DecisionServiceVersionPairData](#decisionserviceversionpairdata) ] |  | No |
| ListData | [ [DecisionServiceVersionListData](#decisionserviceversionlistdata) ] |  | No |

### DecisionServiceVersionBusinessData  

| Name | Type | Description | Required |
| ---- | ---- | ----------- | -------- |
| BusinessDataId | integer |  | No |
| Version | integer |  | No |
| Name | string |  | No |
| Type | string |  | No |
| Question | string |  | No |
| Properties | [ [BusinessDataProperty](#businessdataproperty) ] |  | No |

### DecisionServiceVersionPairData  

| Name | Type | Description | Required |
| ---- | ---- | ----------- | -------- |
| PairId | integer |  | No |
| ValueForTrue | string |  | No |
| ValueForFalse | string |  | No |

### DecisionServiceVersionListData  

| Name | Type | Description | Required |
| ---- | ---- | ----------- | -------- |
| ListId | integer |  | No |
| Items | [ [DecisionServiceVersionListDataItem](#decisionserviceversionlistdataitem) ] |  | No |

### BusinessDataProperty  

| Name | Type | Description | Required |
| ---- | ---- | ----------- | -------- |
| Name | string |  | No |
| Value | string |  | No |

### DecisionServiceVersionListDataItem  

| Name | Type | Description | Required |
| ---- | ---- | ----------- | -------- |
| Id | integer |  | No |
| Order | integer |  | No |
| Value | string |  | No |
| Name | string |  | No |

### DecisionExecutionMessage  

| Name | Type | Description | Required |
| ---- | ---- | ----------- | -------- |
| Id | string |  | No |
| ExecutionRequest | [ApiExecutionRequest](#apiexecutionrequest) |  | No |
| ExecutionResult | [ExecutionResultV2](#executionresultv2) |  | No |
| ExecutionTime | dateTime |  | No |
| ExecutionDurationInMs | integer |  | No |
| ExecutionUser | string |  | No |
| EnvironmentLabel | string |  | No |
| Organisation | string |  | No |

### ApiDescription  

| Name | Type | Description | Required |
| ---- | ---- | ----------- | -------- |
| Organisation | string |  | No |
| Environment | string |  | No |
| ApiType | string |  | No |
| Authority | string |  | No |
| TokenEndpoint | string |  | No |
# CyberSource::InlineResponse200Plans

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_links** | [**PtsV2IncrementalAuthorizationPatch201ResponseLinks**](PtsV2IncrementalAuthorizationPatch201ResponseLinks.md) |  | [optional] 
**id** | **String** | An unique identification number generated by Cybersource to identify the submitted request. Returned by all services. It is also appended to the endpoint of the resource. On incremental authorizations, this value with be the same as the identification number returned in the original authorization response.  | [optional] 
**plan_information** | [**InlineResponse200PlanInformation**](InlineResponse200PlanInformation.md) |  | [optional] 
**order_information** | [**InlineResponse200OrderInformation**](InlineResponse200OrderInformation.md) |  | [optional] 



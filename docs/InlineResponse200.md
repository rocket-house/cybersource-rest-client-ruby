# CyberSource::InlineResponse200

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_links** | [**InlineResponse200Links**](InlineResponse200Links.md) |  | [optional] 
**submit_time_utc** | **String** | Time of request in UTC. Format: &#x60;YYYY-MM-DDThh:mm:ssZ&#x60; **Example** &#x60;2016-08-11T22:47:57Z&#x60; equals August 11, 2016, at 22:47:57 (10:47:57 p.m.). The &#x60;T&#x60; separates the date and the time. The &#x60;Z&#x60; indicates UTC.  Returned by Cybersource for all services.  | [optional] 
**total_count** | **Integer** | total number of plans created | [optional] 
**plans** | [**Array&lt;InlineResponse200Plans&gt;**](InlineResponse200Plans.md) |  | [optional] 



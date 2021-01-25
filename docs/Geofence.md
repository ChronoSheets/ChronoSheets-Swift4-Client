# Geofence

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**geoFencingId** | **Int** | The ID of the geofence | [optional] 
**orgId** | **Int** | The ID of the organisation owning the geofence record | [optional] 
**createdByUserId** | **Int** | The ID of the user/employee who created the geofence | [optional] 
**lastUpdatedByUserId** | **Int** | The ID of the user/employee who last updated the geofence | [optional] 
**name** | **String** | A descriptive name of the geofence | [optional] 
**locationName** | **String** | The name of the approx. location of the geofence | [optional] 
**coordinates** | [BasicCoordinate] | A list of co-ordinates specifying the geofence | [optional] 
**createdAt** | **Date** | The date and time the geofence was created.  Time is in UTC. | [optional] 
**updatedAt** | **Date** | The date and time the geofence was updated last.  Time is in UTC. | [optional] 
**triggerJobCodeId** | **Int** | The ID of the job code used when the employee enters/exits the geofence | [optional] 
**triggerTaskId** | **Int** | The ID of the task used when the employee enters/exits the geofence | [optional] 
**triggerSettings** | **String** | The settings for triggering actions | [optional] 
**alertToOrgGroupId** | **Int** | The organisation group that will be notified when the geofence is triggered | [optional] 
**alertSettings** | **String** | The settings for trigger alerts | [optional] 
**startTimeHour** | **Int** | The hour start time. E.g. 13 would be 1pm.  Time is in 24hr format. | [optional] 
**startTimeMinute** | **Int** | The minute start time.  E.g. 46 would be the 46th minute of the hour. | [optional] 
**endTimeHour** | **Int** | The hour end time. E.g. 21 would be 9pm.  Time is in 24hr format. | [optional] 
**endTimeMinute** | **Int** | The minute end time.  E.g. 13 would be the 13th minute of the hour. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



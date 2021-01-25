# UpdateGeoFenceRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**geofenceId** | **Int** | The ID of the geofence you want to update | [optional] 
**name** | **String** | The name of the geo fence | [optional] 
**fenceCoordinates** | [BasicCoordinate] | A list of coordinates specifying the geofence region | [optional] 
**triggerJobCodeId** | **Int** | The job code to be used when the person enters/leaves the geofence | [optional] 
**triggerTaskId** | **Int** | The task to be used when the person enters/leaves the geofence | [optional] 
**sendAlertToOrgGroupId** | **Int** | Send an alert to a user, specified by their user ID | [optional] 
**alertSettings** | **String** | Define when you want the alerts to be sent | [optional] 
**triggerSettings** | **String** | Define how to you want to trigger the timesheet automation | [optional] 
**startTimeHour** | **Int** | The start hour in which this geofence should apply.  After this time, the geofence will be active. | [optional] 
**startTimeMinute** | **Int** | The start minute in which this geofence should apply.  After this time, the geofence will be active. | [optional] 
**endTimeHour** | **Int** | The end hour in which this geofence will stop applying.  After this time, the geofence will be inactive. | [optional] 
**endTimeMinute** | **Int** | The end minute in which this geofence will stop applying.  After this time, the geofence will be inactive. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



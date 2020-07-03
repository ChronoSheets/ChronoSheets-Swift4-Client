# UpdateJobCodeRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** | The Id of the JobCode to be updated | [optional] 
**code** | **String** | The new JobCode to be set | [optional] 
**projectId** | **Int** | The Id of the Project to be associated to | [optional] 
**clientId** | **Int** | The Id of the Client to be associated to | [optional] 
**linkedTaskIds** | **[Int]** | A collection of Task Ids to be available when choosing this JobCode | [optional] 
**linkedOrgGroupIds** | **[Int]** | Restrict the access to this JobCode by specifying which Organisation Groups can have access.  Only employees in these Organisation Groups will be able to access this JobCode | [optional] 
**isDeleted** | **Bool** | Whether or not this JobCode is to be marked as deleted | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



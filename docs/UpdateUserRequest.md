# UpdateUserRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**userId** | **Int** | The Id of the User that is to be updated | [optional] 
**emailAddress** | **String** | The Email Address of the employee | [optional] 
**firstName** | **String** | The First Name of the employee | [optional] 
**lastName** | **String** | The Last Name of the employee | [optional] 
**isSubscribedToNewsletter** | **Bool** | Whether or not the employee is subscribed to ChronoSheets newsletters | [optional] 
**isAccountActive** | **Bool** | Whether or not the employee account is active | [optional] 
**roles** | **Int64** | A BIT field designating which Roles/Permissions the employee will have when they sign in.  See the {timesheets.types.Enums.UserRoles} Enum for more details | [optional] 
**alertSettings** | **Int64** | A BIT field designating which Alerts the employee will receive.  See the {timesheets.types.Enums.AlertSettings} Enum for more details | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



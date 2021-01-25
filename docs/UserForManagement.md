# UserForManagement

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**isAccountActive** | **Bool** |  | [optional] 
**id** | **Int** | The ID of the user | [optional] 
**organisationId** | **Int** | The ID of the organisation | [optional] 
**userName** | **String** | The username of the user | [optional] 
**firstName** | **String** | The first name of the user | [optional] 
**lastName** | **String** | The last name of the user | [optional] 
**emailAddress** | **String** | The email address of the user | [optional] 
**roles** | **Int64** | A BIT field designating which Roles/Permissions the employee will have when they sign in.  See the {timesheets.types.Enums.UserRoles} Enum for more details | [optional] 
**alertSettings** | **Int64** | A BIT field designating which Alerts the employee will receive.  See the {timesheets.types.Enums.AlertSettings} Enum for more details | [optional] 
**setupWizardRequired** | **Bool** | Whether or not the setup wizard is required | [optional] 
**isSubscribedToNewsletter** | **Bool** | Whether or not the user is subscribed to the user | [optional] 
**organisation** | [**Organisation**](Organisation.md) |  | [optional] 
**isPrimaryAccount** | **Bool** | Whether or not this account is the organisation&#39;s primary account. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



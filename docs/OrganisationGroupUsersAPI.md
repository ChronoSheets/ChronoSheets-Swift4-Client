# OrganisationGroupUsersAPI

All URIs are relative to *https://api.chronosheets.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**organisationGroupUsersGetOrganisationGroupUsers**](OrganisationGroupUsersAPI.md#organisationgroupusersgetorganisationgroupusers) | **GET** /OrganisationGroupUsers/GetOrganisationGroupUsers | Get a collection of organisation group users that belong to an organisation group.    Requires the &#39;ManageOrganisationGroups&#39; or &#39;ManageOrganisationUsers&#39; permissions.
[**organisationGroupUsersUpdateOrganisationGroupUsers**](OrganisationGroupUsersAPI.md#organisationgroupusersupdateorganisationgroupusers) | **PUT** /OrganisationGroupUsers/UpdateOrganisationGroupUsers | Set the users who belong to an organisation group.    Requires the &#39;ManageOrganisationGroups&#39; permissions.


# **organisationGroupUsersGetOrganisationGroupUsers**
```swift
    open class func organisationGroupUsersGetOrganisationGroupUsers(orgGroupId: Int, xChronosheetsAuth: String, completion: @escaping (_ data: ApiResponseListUserForManagement?, _ error: Error?) -> Void)
```

Get a collection of organisation group users that belong to an organisation group.    Requires the 'ManageOrganisationGroups' or 'ManageOrganisationUsers' permissions.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let orgGroupId = 987 // Int | An OrganisationGroup Id
let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token

// Get a collection of organisation group users that belong to an organisation group.    Requires the 'ManageOrganisationGroups' or 'ManageOrganisationUsers' permissions.
OrganisationGroupUsersAPI.organisationGroupUsersGetOrganisationGroupUsers(orgGroupId: orgGroupId, xChronosheetsAuth: xChronosheetsAuth) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgGroupId** | **Int** | An OrganisationGroup Id | 
 **xChronosheetsAuth** | **String** | The ChronoSheets Auth Token | 

### Return type

[**ApiResponseListUserForManagement**](ApiResponseListUserForManagement.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **organisationGroupUsersUpdateOrganisationGroupUsers**
```swift
    open class func organisationGroupUsersUpdateOrganisationGroupUsers(xChronosheetsAuth: String, request: SetOrganisationGroupUsersRequest, completion: @escaping (_ data: ApiResponseBoolean?, _ error: Error?) -> Void)
```

Set the users who belong to an organisation group.    Requires the 'ManageOrganisationGroups' permissions.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token
let request = SetOrganisationGroupUsersRequest(organisationGroupId: 123, csvUserIds: "csvUserIds_example") // SetOrganisationGroupUsersRequest | A request object specifying which users belong to an organisation group.  Make sure to specify the OrganisationGroup Id in the request object so that ChronoSheets knows which OrganisationGroup to update. CsvUserIds is a comma separated list of User Ids, e.g. 1,2,3,4

// Set the users who belong to an organisation group.    Requires the 'ManageOrganisationGroups' permissions.
OrganisationGroupUsersAPI.organisationGroupUsersUpdateOrganisationGroupUsers(xChronosheetsAuth: xChronosheetsAuth, request: request) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xChronosheetsAuth** | **String** | The ChronoSheets Auth Token | 
 **request** | [**SetOrganisationGroupUsersRequest**](SetOrganisationGroupUsersRequest.md) | A request object specifying which users belong to an organisation group.  Make sure to specify the OrganisationGroup Id in the request object so that ChronoSheets knows which OrganisationGroup to update. CsvUserIds is a comma separated list of User Ids, e.g. 1,2,3,4 | 

### Return type

[**ApiResponseBoolean**](ApiResponseBoolean.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


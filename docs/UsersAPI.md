# UsersAPI

All URIs are relative to *https://api.chronosheets.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**usersCreateTimesheetUser**](UsersAPI.md#userscreatetimesheetuser) | **POST** /Users/CreateTimesheetUser | Create a user account in your organisation.  Requires the &#39;ManageOrganisationUsers&#39; permission.
[**usersGetTimesheetUser**](UsersAPI.md#usersgettimesheetuser) | **GET** /Users/GetTimesheetUser | Get a particular user in your organisation.  Requires the &#39;ManageOrganisationUsers&#39; or &#39;ManageOrganisationGroups&#39; permissions.
[**usersGetTimesheetUsers**](UsersAPI.md#usersgettimesheetusers) | **GET** /Users/GetTimesheetUsers | Get users accounts in your organisation.  Requires the &#39;ManageOrganisationUsers&#39; or &#39;ManageOrganisationGroups&#39; permissions.
[**usersUpdateTimesheetUser**](UsersAPI.md#usersupdatetimesheetuser) | **PUT** /Users/UpdateTimesheetUser | Update a user account.  Requires the &#39;ManageOrganisationUsers&#39; permission.


# **usersCreateTimesheetUser**
```swift
    open class func usersCreateTimesheetUser(xChronosheetsAuth: String, request: InsertUserRequest, completion: @escaping (_ data: ApiResponseInsertUserResponse?, _ error: Error?) -> Void)
```

Create a user account in your organisation.  Requires the 'ManageOrganisationUsers' permission.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token
let request = InsertUserRequest(emailAddress: "emailAddress_example", firstName: "firstName_example", lastName: "lastName_example", isSubscribedToNewsletter: false, roles: 123, alertSettings: 123, userName: "userName_example", hourlyPayRate: 123, hourlyOvertimePayRate: 123, currentDate: Date()) // InsertUserRequest | An Insert User Request object containing values for the new User to create

// Create a user account in your organisation.  Requires the 'ManageOrganisationUsers' permission.
UsersAPI.usersCreateTimesheetUser(xChronosheetsAuth: xChronosheetsAuth, request: request) { (response, error) in
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
 **request** | [**InsertUserRequest**](InsertUserRequest.md) | An Insert User Request object containing values for the new User to create | 

### Return type

[**ApiResponseInsertUserResponse**](ApiResponseInsertUserResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersGetTimesheetUser**
```swift
    open class func usersGetTimesheetUser(userId: Int, xChronosheetsAuth: String, completion: @escaping (_ data: ApiResponseUserForManagement?, _ error: Error?) -> Void)
```

Get a particular user in your organisation.  Requires the 'ManageOrganisationUsers' or 'ManageOrganisationGroups' permissions.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let userId = 987 // Int | The User ID of the UserForManagement you want to get
let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token

// Get a particular user in your organisation.  Requires the 'ManageOrganisationUsers' or 'ManageOrganisationGroups' permissions.
UsersAPI.usersGetTimesheetUser(userId: userId, xChronosheetsAuth: xChronosheetsAuth) { (response, error) in
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
 **userId** | **Int** | The User ID of the UserForManagement you want to get | 
 **xChronosheetsAuth** | **String** | The ChronoSheets Auth Token | 

### Return type

[**ApiResponseUserForManagement**](ApiResponseUserForManagement.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersGetTimesheetUsers**
```swift
    open class func usersGetTimesheetUsers(xChronosheetsAuth: String, completion: @escaping (_ data: ApiResponseListUserForManagement?, _ error: Error?) -> Void)
```

Get users accounts in your organisation.  Requires the 'ManageOrganisationUsers' or 'ManageOrganisationGroups' permissions.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token

// Get users accounts in your organisation.  Requires the 'ManageOrganisationUsers' or 'ManageOrganisationGroups' permissions.
UsersAPI.usersGetTimesheetUsers(xChronosheetsAuth: xChronosheetsAuth) { (response, error) in
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

### Return type

[**ApiResponseListUserForManagement**](ApiResponseListUserForManagement.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersUpdateTimesheetUser**
```swift
    open class func usersUpdateTimesheetUser(xChronosheetsAuth: String, request: UpdateUserRequest, completion: @escaping (_ data: ApiResponseUpdateUserResponse?, _ error: Error?) -> Void)
```

Update a user account.  Requires the 'ManageOrganisationUsers' permission.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token
let request = UpdateUserRequest(userId: 123, emailAddress: "emailAddress_example", firstName: "firstName_example", lastName: "lastName_example", isSubscribedToNewsletter: false, isAccountActive: false, roles: 123, alertSettings: 123) // UpdateUserRequest | A Update User Request object containing updated fields.  Make sure to specify the User Id in the request object so that ChronoSheets knows which User to update

// Update a user account.  Requires the 'ManageOrganisationUsers' permission.
UsersAPI.usersUpdateTimesheetUser(xChronosheetsAuth: xChronosheetsAuth, request: request) { (response, error) in
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
 **request** | [**UpdateUserRequest**](UpdateUserRequest.md) | A Update User Request object containing updated fields.  Make sure to specify the User Id in the request object so that ChronoSheets knows which User to update | 

### Return type

[**ApiResponseUpdateUserResponse**](ApiResponseUpdateUserResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


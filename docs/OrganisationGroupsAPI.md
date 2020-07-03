# OrganisationGroupsAPI

All URIs are relative to *https://api.chronosheets.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**organisationGroupsCreateOrganisationGroup**](OrganisationGroupsAPI.md#organisationgroupscreateorganisationgroup) | **POST** /OrganisationGroups/CreateOrganisationGroup | Create an organisation group.    Requires the &#39;ManageOrganisationGroups&#39; permissions.
[**organisationGroupsDeleteOrganisationGroup**](OrganisationGroupsAPI.md#organisationgroupsdeleteorganisationgroup) | **DELETE** /OrganisationGroups/DeleteOrganisationGroup | 
[**organisationGroupsGetOrganisationGroup**](OrganisationGroupsAPI.md#organisationgroupsgetorganisationgroup) | **GET** /OrganisationGroups/GetOrganisationGroup | Get a particular organisation group.    Requires the &#39;ManageOrganisationGroups&#39;, &#39;ManageJobsAndTask&#39;, &#39;ManageClientsAndProjects&#39; or &#39;ManageOrganisationUsers&#39; permissions.
[**organisationGroupsGetOrganisationGroups**](OrganisationGroupsAPI.md#organisationgroupsgetorganisationgroups) | **GET** /OrganisationGroups/GetOrganisationGroups | Get a collection of organisation groups that are under your organisation.    Requires the &#39;ManageOrganisationGroups&#39;, &#39;ManageJobsAndTask&#39;, &#39;ManageClientsAndProjects&#39; or &#39;ManageOrganisationUsers&#39; permissions.
[**organisationGroupsGetOrganisationGroupsForJob**](OrganisationGroupsAPI.md#organisationgroupsgetorganisationgroupsforjob) | **GET** /OrganisationGroups/GetOrganisationGroupsForJob | Get org groups for a particular job.    Requires the &#39;ManageOrganisationGroups&#39;, &#39;ManageJobsAndTask&#39;, &#39;ManageClientsAndProjects&#39; or &#39;ManageOrganisationUsers&#39; permissions.
[**organisationGroupsGetOrganisationGroupsForVehicle**](OrganisationGroupsAPI.md#organisationgroupsgetorganisationgroupsforvehicle) | **GET** /OrganisationGroups/GetOrganisationGroupsForVehicle | Get org groups for a particular vehicle.    Requires the &#39;ManageOrganisationGroups&#39;, &#39;ManageFleet&#39; or &#39;ManageOrganisationUsers&#39; permissions.
[**organisationGroupsUpdateOrganisationGroup**](OrganisationGroupsAPI.md#organisationgroupsupdateorganisationgroup) | **PUT** /OrganisationGroups/UpdateOrganisationGroup | Update an organisation group.    Requires the &#39;ManageOrganisationGroups&#39; permissions.


# **organisationGroupsCreateOrganisationGroup**
```swift
    open class func organisationGroupsCreateOrganisationGroup(xChronosheetsAuth: String, request: InsertOrganisationGroupRequest, completion: @escaping (_ data: ApiResponseInt32?, _ error: Error?) -> Void)
```

Create an organisation group.    Requires the 'ManageOrganisationGroups' permissions.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token
let request = InsertOrganisationGroupRequest(organisationGroupName: "organisationGroupName_example", organisationGroupUserIds: [123]) // InsertOrganisationGroupRequest | An Insert OrganisationGroup Request object containing values for the new OrganisationGroup to create

// Create an organisation group.    Requires the 'ManageOrganisationGroups' permissions.
OrganisationGroupsAPI.organisationGroupsCreateOrganisationGroup(xChronosheetsAuth: xChronosheetsAuth, request: request) { (response, error) in
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
 **request** | [**InsertOrganisationGroupRequest**](InsertOrganisationGroupRequest.md) | An Insert OrganisationGroup Request object containing values for the new OrganisationGroup to create | 

### Return type

[**ApiResponseInt32**](ApiResponseInt32.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **organisationGroupsDeleteOrganisationGroup**
```swift
    open class func organisationGroupsDeleteOrganisationGroup(organisationGroupId: Int, xChronosheetsAuth: String, completion: @escaping (_ data: ApiResponseBoolean?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let organisationGroupId = 987 // Int | 
let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token

OrganisationGroupsAPI.organisationGroupsDeleteOrganisationGroup(organisationGroupId: organisationGroupId, xChronosheetsAuth: xChronosheetsAuth) { (response, error) in
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
 **organisationGroupId** | **Int** |  | 
 **xChronosheetsAuth** | **String** | The ChronoSheets Auth Token | 

### Return type

[**ApiResponseBoolean**](ApiResponseBoolean.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **organisationGroupsGetOrganisationGroup**
```swift
    open class func organisationGroupsGetOrganisationGroup(organisationGroupId: Int, xChronosheetsAuth: String, completion: @escaping (_ data: ApiResponseOrganisationGroup?, _ error: Error?) -> Void)
```

Get a particular organisation group.    Requires the 'ManageOrganisationGroups', 'ManageJobsAndTask', 'ManageClientsAndProjects' or 'ManageOrganisationUsers' permissions.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let organisationGroupId = 987 // Int | The ID of the OrganisationGroup you want to get
let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token

// Get a particular organisation group.    Requires the 'ManageOrganisationGroups', 'ManageJobsAndTask', 'ManageClientsAndProjects' or 'ManageOrganisationUsers' permissions.
OrganisationGroupsAPI.organisationGroupsGetOrganisationGroup(organisationGroupId: organisationGroupId, xChronosheetsAuth: xChronosheetsAuth) { (response, error) in
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
 **organisationGroupId** | **Int** | The ID of the OrganisationGroup you want to get | 
 **xChronosheetsAuth** | **String** | The ChronoSheets Auth Token | 

### Return type

[**ApiResponseOrganisationGroup**](ApiResponseOrganisationGroup.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **organisationGroupsGetOrganisationGroups**
```swift
    open class func organisationGroupsGetOrganisationGroups(xChronosheetsAuth: String, completion: @escaping (_ data: ApiResponseListOrganisationGroup?, _ error: Error?) -> Void)
```

Get a collection of organisation groups that are under your organisation.    Requires the 'ManageOrganisationGroups', 'ManageJobsAndTask', 'ManageClientsAndProjects' or 'ManageOrganisationUsers' permissions.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token

// Get a collection of organisation groups that are under your organisation.    Requires the 'ManageOrganisationGroups', 'ManageJobsAndTask', 'ManageClientsAndProjects' or 'ManageOrganisationUsers' permissions.
OrganisationGroupsAPI.organisationGroupsGetOrganisationGroups(xChronosheetsAuth: xChronosheetsAuth) { (response, error) in
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

[**ApiResponseListOrganisationGroup**](ApiResponseListOrganisationGroup.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **organisationGroupsGetOrganisationGroupsForJob**
```swift
    open class func organisationGroupsGetOrganisationGroupsForJob(jobId: Int, xChronosheetsAuth: String, completion: @escaping (_ data: ApiResponseListOrganisationGroup?, _ error: Error?) -> Void)
```

Get org groups for a particular job.    Requires the 'ManageOrganisationGroups', 'ManageJobsAndTask', 'ManageClientsAndProjects' or 'ManageOrganisationUsers' permissions.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let jobId = 987 // Int | The ID of the job
let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token

// Get org groups for a particular job.    Requires the 'ManageOrganisationGroups', 'ManageJobsAndTask', 'ManageClientsAndProjects' or 'ManageOrganisationUsers' permissions.
OrganisationGroupsAPI.organisationGroupsGetOrganisationGroupsForJob(jobId: jobId, xChronosheetsAuth: xChronosheetsAuth) { (response, error) in
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
 **jobId** | **Int** | The ID of the job | 
 **xChronosheetsAuth** | **String** | The ChronoSheets Auth Token | 

### Return type

[**ApiResponseListOrganisationGroup**](ApiResponseListOrganisationGroup.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **organisationGroupsGetOrganisationGroupsForVehicle**
```swift
    open class func organisationGroupsGetOrganisationGroupsForVehicle(vehicleId: Int, xChronosheetsAuth: String, completion: @escaping (_ data: ApiResponseListOrganisationGroup?, _ error: Error?) -> Void)
```

Get org groups for a particular vehicle.    Requires the 'ManageOrganisationGroups', 'ManageFleet' or 'ManageOrganisationUsers' permissions.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let vehicleId = 987 // Int | The ID of the vehicle
let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token

// Get org groups for a particular vehicle.    Requires the 'ManageOrganisationGroups', 'ManageFleet' or 'ManageOrganisationUsers' permissions.
OrganisationGroupsAPI.organisationGroupsGetOrganisationGroupsForVehicle(vehicleId: vehicleId, xChronosheetsAuth: xChronosheetsAuth) { (response, error) in
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
 **vehicleId** | **Int** | The ID of the vehicle | 
 **xChronosheetsAuth** | **String** | The ChronoSheets Auth Token | 

### Return type

[**ApiResponseListOrganisationGroup**](ApiResponseListOrganisationGroup.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **organisationGroupsUpdateOrganisationGroup**
```swift
    open class func organisationGroupsUpdateOrganisationGroup(xChronosheetsAuth: String, request: SaveOrganisationGroupRequest, completion: @escaping (_ data: ApiResponseBoolean?, _ error: Error?) -> Void)
```

Update an organisation group.    Requires the 'ManageOrganisationGroups' permissions.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token
let request = SaveOrganisationGroupRequest(id: 123, organisationGroupName: "organisationGroupName_example", isDeleted: false) // SaveOrganisationGroupRequest | A Save OrganisationGroup Request object containing updated fields.  Make sure to specify the OrganisationGroup Id in the request object so that ChronoSheets knows which OrganisationGroup to update

// Update an organisation group.    Requires the 'ManageOrganisationGroups' permissions.
OrganisationGroupsAPI.organisationGroupsUpdateOrganisationGroup(xChronosheetsAuth: xChronosheetsAuth, request: request) { (response, error) in
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
 **request** | [**SaveOrganisationGroupRequest**](SaveOrganisationGroupRequest.md) | A Save OrganisationGroup Request object containing updated fields.  Make sure to specify the OrganisationGroup Id in the request object so that ChronoSheets knows which OrganisationGroup to update | 

### Return type

[**ApiResponseBoolean**](ApiResponseBoolean.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


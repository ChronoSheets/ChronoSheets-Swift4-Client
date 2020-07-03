# JobCodesAPI

All URIs are relative to *https://api.chronosheets.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**jobCodesCreateJobCode**](JobCodesAPI.md#jobcodescreatejobcode) | **POST** /JobCodes/CreateJobCode | Create a job code.    Requires the &#39;ManageJobsAndTask&#39; permission.
[**jobCodesDeleteJobCode**](JobCodesAPI.md#jobcodesdeletejobcode) | **DELETE** /JobCodes/DeleteJobCode | Delete a job code.    Requires the &#39;ManageJobsAndTask&#39; permission.
[**jobCodesGetJobCodeById**](JobCodesAPI.md#jobcodesgetjobcodebyid) | **GET** /JobCodes/GetJobCodeById | Get a particular job code by job code id.    Requires &#39;SubmitTimesheets&#39; or &#39;ManageJobsAndTasks&#39; permissions.
[**jobCodesGetJobCodes**](JobCodesAPI.md#jobcodesgetjobcodes) | **GET** /JobCodes/GetJobCodes | Get job codes for your organisation.    Requires &#39;SubmitTimesheets&#39; or &#39;ManageJobsAndTasks&#39; permissions.
[**jobCodesUpdateJobCode**](JobCodesAPI.md#jobcodesupdatejobcode) | **PUT** /JobCodes/UpdateJobCode | Update a job code.    Requires the &#39;ManageJobsAndTask&#39; permission.


# **jobCodesCreateJobCode**
```swift
    open class func jobCodesCreateJobCode(xChronosheetsAuth: String, request: InsertJobCodeRequest, completion: @escaping (_ data: ApiResponseInt32?, _ error: Error?) -> Void)
```

Create a job code.    Requires the 'ManageJobsAndTask' permission.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token
let request = InsertJobCodeRequest(code: "code_example", projectId: 123, clientId: 123, linkedTaskIds: [123], linkedOrgGroupIds: [123]) // InsertJobCodeRequest | An Insert JobCode Request object containing values for the new JobCode to create

// Create a job code.    Requires the 'ManageJobsAndTask' permission.
JobCodesAPI.jobCodesCreateJobCode(xChronosheetsAuth: xChronosheetsAuth, request: request) { (response, error) in
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
 **request** | [**InsertJobCodeRequest**](InsertJobCodeRequest.md) | An Insert JobCode Request object containing values for the new JobCode to create | 

### Return type

[**ApiResponseInt32**](ApiResponseInt32.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **jobCodesDeleteJobCode**
```swift
    open class func jobCodesDeleteJobCode(jobCodeId: Int, xChronosheetsAuth: String, completion: @escaping (_ data: ApiResponseBoolean?, _ error: Error?) -> Void)
```

Delete a job code.    Requires the 'ManageJobsAndTask' permission.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let jobCodeId = 987 // Int | The ID of the job code you want to delete
let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token

// Delete a job code.    Requires the 'ManageJobsAndTask' permission.
JobCodesAPI.jobCodesDeleteJobCode(jobCodeId: jobCodeId, xChronosheetsAuth: xChronosheetsAuth) { (response, error) in
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
 **jobCodeId** | **Int** | The ID of the job code you want to delete | 
 **xChronosheetsAuth** | **String** | The ChronoSheets Auth Token | 

### Return type

[**ApiResponseBoolean**](ApiResponseBoolean.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **jobCodesGetJobCodeById**
```swift
    open class func jobCodesGetJobCodeById(jobCodeId: Int, xChronosheetsAuth: String, completion: @escaping (_ data: ApiResponseJobCode?, _ error: Error?) -> Void)
```

Get a particular job code by job code id.    Requires 'SubmitTimesheets' or 'ManageJobsAndTasks' permissions.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let jobCodeId = 987 // Int | The ID of the JobCode you want to get
let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token

// Get a particular job code by job code id.    Requires 'SubmitTimesheets' or 'ManageJobsAndTasks' permissions.
JobCodesAPI.jobCodesGetJobCodeById(jobCodeId: jobCodeId, xChronosheetsAuth: xChronosheetsAuth) { (response, error) in
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
 **jobCodeId** | **Int** | The ID of the JobCode you want to get | 
 **xChronosheetsAuth** | **String** | The ChronoSheets Auth Token | 

### Return type

[**ApiResponseJobCode**](ApiResponseJobCode.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **jobCodesGetJobCodes**
```swift
    open class func jobCodesGetJobCodes(xChronosheetsAuth: String, completion: @escaping (_ data: ApiResponseListJobCode?, _ error: Error?) -> Void)
```

Get job codes for your organisation.    Requires 'SubmitTimesheets' or 'ManageJobsAndTasks' permissions.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token

// Get job codes for your organisation.    Requires 'SubmitTimesheets' or 'ManageJobsAndTasks' permissions.
JobCodesAPI.jobCodesGetJobCodes(xChronosheetsAuth: xChronosheetsAuth) { (response, error) in
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

[**ApiResponseListJobCode**](ApiResponseListJobCode.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **jobCodesUpdateJobCode**
```swift
    open class func jobCodesUpdateJobCode(xChronosheetsAuth: String, request: UpdateJobCodeRequest, completion: @escaping (_ data: ApiResponseBoolean?, _ error: Error?) -> Void)
```

Update a job code.    Requires the 'ManageJobsAndTask' permission.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token
let request = UpdateJobCodeRequest(id: 123, code: "code_example", projectId: 123, clientId: 123, linkedTaskIds: [123], linkedOrgGroupIds: [123], isDeleted: false) // UpdateJobCodeRequest | A Update JobCode Request object containing updated fields.  Make sure to specify the JobCode Id in the request object so that ChronoSheets knows which JobCode to update

// Update a job code.    Requires the 'ManageJobsAndTask' permission.
JobCodesAPI.jobCodesUpdateJobCode(xChronosheetsAuth: xChronosheetsAuth, request: request) { (response, error) in
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
 **request** | [**UpdateJobCodeRequest**](UpdateJobCodeRequest.md) | A Update JobCode Request object containing updated fields.  Make sure to specify the JobCode Id in the request object so that ChronoSheets knows which JobCode to update | 

### Return type

[**ApiResponseBoolean**](ApiResponseBoolean.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


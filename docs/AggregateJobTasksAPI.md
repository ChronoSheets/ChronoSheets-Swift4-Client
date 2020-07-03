# AggregateJobTasksAPI

All URIs are relative to *https://api.chronosheets.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aggregateJobTasksGetAggregateJobTasks**](AggregateJobTasksAPI.md#aggregatejobtasksgetaggregatejobtasks) | **GET** /AggregateJobTasks/GetAggregateJobTasks | Get jobs and tasks information, aggregated.    Requires the &#39;SubmitTimesheets&#39; or &#39;ManageJobsAndTask&#39; permissions.


# **aggregateJobTasksGetAggregateJobTasks**
```swift
    open class func aggregateJobTasksGetAggregateJobTasks(xChronosheetsAuth: String, completion: @escaping (_ data: ApiResponseListAggregateJobCode?, _ error: Error?) -> Void)
```

Get jobs and tasks information, aggregated.    Requires the 'SubmitTimesheets' or 'ManageJobsAndTask' permissions.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token

// Get jobs and tasks information, aggregated.    Requires the 'SubmitTimesheets' or 'ManageJobsAndTask' permissions.
AggregateJobTasksAPI.aggregateJobTasksGetAggregateJobTasks(xChronosheetsAuth: xChronosheetsAuth) { (response, error) in
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

[**ApiResponseListAggregateJobCode**](ApiResponseListAggregateJobCode.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


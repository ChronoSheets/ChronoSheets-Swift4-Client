# AggregateClientProjectsAPI

All URIs are relative to *https://api.chronosheets.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aggregateClientProjectsGetAggregateClientProjects**](AggregateClientProjectsAPI.md#aggregateclientprojectsgetaggregateclientprojects) | **GET** /AggregateClientProjects/GetAggregateClientProjects | Get client and project information, aggregated.    Requires the &#39;SubmitTimesheets&#39; or &#39;ManageClientsAndProjects&#39; permissions.


# **aggregateClientProjectsGetAggregateClientProjects**
```swift
    open class func aggregateClientProjectsGetAggregateClientProjects(xChronosheetsAuth: String, completion: @escaping (_ data: ApiResponseListAggregateClient?, _ error: Error?) -> Void)
```

Get client and project information, aggregated.    Requires the 'SubmitTimesheets' or 'ManageClientsAndProjects' permissions.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token

// Get client and project information, aggregated.    Requires the 'SubmitTimesheets' or 'ManageClientsAndProjects' permissions.
AggregateClientProjectsAPI.aggregateClientProjectsGetAggregateClientProjects(xChronosheetsAuth: xChronosheetsAuth) { (response, error) in
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

[**ApiResponseListAggregateClient**](ApiResponseListAggregateClient.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


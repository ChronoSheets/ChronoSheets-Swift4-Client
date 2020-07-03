# UserJobFavouritesAPI

All URIs are relative to *https://api.chronosheets.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**userJobFavouritesCreateJobFavourite**](UserJobFavouritesAPI.md#userjobfavouritescreatejobfavourite) | **POST** /UserJobFavourites/CreateJobFavourite | Create a job favourite.    Requires the &#39;SubmitTimesheets&#39; permission.
[**userJobFavouritesDeleteJobFavourite**](UserJobFavouritesAPI.md#userjobfavouritesdeletejobfavourite) | **DELETE** /UserJobFavourites/DeleteJobFavourite | Delete a job favourite.    Requires the &#39;SubmitTimesheets&#39; permission.
[**userJobFavouritesGetJobFavourites**](UserJobFavouritesAPI.md#userjobfavouritesgetjobfavourites) | **GET** /UserJobFavourites/GetJobFavourites | Get your job favourites.    Requires the &#39;SubmitTimesheets&#39; permission.


# **userJobFavouritesCreateJobFavourite**
```swift
    open class func userJobFavouritesCreateJobFavourite(xChronosheetsAuth: String, request: InsertUserJobFavouriteRequest, completion: @escaping (_ data: ApiResponseInt32?, _ error: Error?) -> Void)
```

Create a job favourite.    Requires the 'SubmitTimesheets' permission.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token
let request = InsertUserJobFavouriteRequest(jobId: 123) // InsertUserJobFavouriteRequest | An Insert UserJobFavourite Request object containing values for the new UserJobFavourite to create

// Create a job favourite.    Requires the 'SubmitTimesheets' permission.
UserJobFavouritesAPI.userJobFavouritesCreateJobFavourite(xChronosheetsAuth: xChronosheetsAuth, request: request) { (response, error) in
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
 **request** | [**InsertUserJobFavouriteRequest**](InsertUserJobFavouriteRequest.md) | An Insert UserJobFavourite Request object containing values for the new UserJobFavourite to create | 

### Return type

[**ApiResponseInt32**](ApiResponseInt32.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userJobFavouritesDeleteJobFavourite**
```swift
    open class func userJobFavouritesDeleteJobFavourite(jobId: Int, xChronosheetsAuth: String, completion: @escaping (_ data: ApiResponseBoolean?, _ error: Error?) -> Void)
```

Delete a job favourite.    Requires the 'SubmitTimesheets' permission.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let jobId = 987 // Int | The ID of the Job for the Job Favourite you want to delete.
let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token

// Delete a job favourite.    Requires the 'SubmitTimesheets' permission.
UserJobFavouritesAPI.userJobFavouritesDeleteJobFavourite(jobId: jobId, xChronosheetsAuth: xChronosheetsAuth) { (response, error) in
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
 **jobId** | **Int** | The ID of the Job for the Job Favourite you want to delete. | 
 **xChronosheetsAuth** | **String** | The ChronoSheets Auth Token | 

### Return type

[**ApiResponseBoolean**](ApiResponseBoolean.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userJobFavouritesGetJobFavourites**
```swift
    open class func userJobFavouritesGetJobFavourites(xChronosheetsAuth: String, completion: @escaping (_ data: ApiResponseListUserJobFavourite?, _ error: Error?) -> Void)
```

Get your job favourites.    Requires the 'SubmitTimesheets' permission.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token

// Get your job favourites.    Requires the 'SubmitTimesheets' permission.
UserJobFavouritesAPI.userJobFavouritesGetJobFavourites(xChronosheetsAuth: xChronosheetsAuth) { (response, error) in
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

[**ApiResponseListUserJobFavourite**](ApiResponseListUserJobFavourite.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


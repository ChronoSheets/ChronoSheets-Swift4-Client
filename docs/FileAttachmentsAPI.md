# FileAttachmentsAPI

All URIs are relative to *https://api.chronosheets.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fileAttachmentsDeleteTimesheetFileAttachment**](FileAttachmentsAPI.md#fileattachmentsdeletetimesheetfileattachment) | **DELETE** /FileAttachments/DeleteTimesheetFileAttachment | Delete a particular timesheet file attachment  Requires the &#39;SubmitTimesheets&#39; permission.
[**fileAttachmentsGetFileAttachmentById**](FileAttachmentsAPI.md#fileattachmentsgetfileattachmentbyid) | **GET** /FileAttachments/GetFileAttachmentById | Get a particular file attachment by ID.  User must own the file attachment for access.
[**fileAttachmentsGetMyFileAttachments**](FileAttachmentsAPI.md#fileattachmentsgetmyfileattachments) | **GET** /FileAttachments/GetMyFileAttachments | Get my file attachments.  Get files you&#39;ve attached to timesheets.


# **fileAttachmentsDeleteTimesheetFileAttachment**
```swift
    open class func fileAttachmentsDeleteTimesheetFileAttachment(fileAttachmentId: Int, xChronosheetsAuth: String, completion: @escaping (_ data: ApiResponseBoolean?, _ error: Error?) -> Void)
```

Delete a particular timesheet file attachment  Requires the 'SubmitTimesheets' permission.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let fileAttachmentId = 987 // Int | The Id of the file attachment to delete
let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token

// Delete a particular timesheet file attachment  Requires the 'SubmitTimesheets' permission.
FileAttachmentsAPI.fileAttachmentsDeleteTimesheetFileAttachment(fileAttachmentId: fileAttachmentId, xChronosheetsAuth: xChronosheetsAuth) { (response, error) in
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
 **fileAttachmentId** | **Int** | The Id of the file attachment to delete | 
 **xChronosheetsAuth** | **String** | The ChronoSheets Auth Token | 

### Return type

[**ApiResponseBoolean**](ApiResponseBoolean.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fileAttachmentsGetFileAttachmentById**
```swift
    open class func fileAttachmentsGetFileAttachmentById(fileAttachmentId: Int, xChronosheetsAuth: String, completion: @escaping (_ data: ApiResponseTimesheetFileAttachment?, _ error: Error?) -> Void)
```

Get a particular file attachment by ID.  User must own the file attachment for access.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let fileAttachmentId = 987 // Int | The ID of the file attachment
let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token

// Get a particular file attachment by ID.  User must own the file attachment for access.
FileAttachmentsAPI.fileAttachmentsGetFileAttachmentById(fileAttachmentId: fileAttachmentId, xChronosheetsAuth: xChronosheetsAuth) { (response, error) in
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
 **fileAttachmentId** | **Int** | The ID of the file attachment | 
 **xChronosheetsAuth** | **String** | The ChronoSheets Auth Token | 

### Return type

[**ApiResponseTimesheetFileAttachment**](ApiResponseTimesheetFileAttachment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fileAttachmentsGetMyFileAttachments**
```swift
    open class func fileAttachmentsGetMyFileAttachments(startDate: Date, endDate: Date, xChronosheetsAuth: String, skip: Int? = nil, take: Int? = nil, completion: @escaping (_ data: ApiResponseForPaginatedListTimesheetFileAttachment?, _ error: Error?) -> Void)
```

Get my file attachments.  Get files you've attached to timesheets.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let startDate = Date() // Date | The Start date of the date range.  File attachments after this date will be obtained.
let endDate = Date() // Date | The End date of the date range.  File attachments before this date will be obtained.
let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token
let skip = 987 // Int | Skip this many File attachments (optional)
let take = 987 // Int | Take this many File attachments (optional)

// Get my file attachments.  Get files you've attached to timesheets.
FileAttachmentsAPI.fileAttachmentsGetMyFileAttachments(startDate: startDate, endDate: endDate, xChronosheetsAuth: xChronosheetsAuth, skip: skip, take: take) { (response, error) in
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
 **startDate** | **Date** | The Start date of the date range.  File attachments after this date will be obtained. | 
 **endDate** | **Date** | The End date of the date range.  File attachments before this date will be obtained. | 
 **xChronosheetsAuth** | **String** | The ChronoSheets Auth Token | 
 **skip** | **Int** | Skip this many File attachments | [optional] 
 **take** | **Int** | Take this many File attachments | [optional] 

### Return type

[**ApiResponseForPaginatedListTimesheetFileAttachment**](ApiResponseForPaginatedListTimesheetFileAttachment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# TimesheetsAPI

All URIs are relative to *https://api.chronosheets.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**timesheetsCreateSingleTimesheet**](TimesheetsAPI.md#timesheetscreatesingletimesheet) | **POST** /Timesheets/CreateSingleTimesheet | Inserts a single timesheet record.    Requires the &#39;SubmitTimesheets&#39; permission.
[**timesheetsDeleteTimesheet**](TimesheetsAPI.md#timesheetsdeletetimesheet) | **DELETE** /Timesheets/DeleteTimesheet | Delete a timesheet.    Requires the &#39;SubmitTimesheets&#39; permission.
[**timesheetsGetTimesheets**](TimesheetsAPI.md#timesheetsgettimesheets) | **GET** /Timesheets/GetTimesheets | Get timesheets between start and end dates.  Note: the date range cannot exceed 24 hours.  This method is generally used to get timesheets for a particular day.    Requires the &#39;SubmitTimesheets&#39; permission.
[**timesheetsUpdateTimesheets**](TimesheetsAPI.md#timesheetsupdatetimesheets) | **PUT** /Timesheets/UpdateTimesheets | Batch update timesheets.    Requires the &#39;SubmitTimesheets&#39; permission.


# **timesheetsCreateSingleTimesheet**
```swift
    open class func timesheetsCreateSingleTimesheet(xChronosheetsAuth: String, request: Timesheet, completion: @escaping (_ data: ApiResponseInt32?, _ error: Error?) -> Void)
```

Inserts a single timesheet record.    Requires the 'SubmitTimesheets' permission.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token
let request = Timesheet(timesheetId: 123, userId: 123, jobId: 123, taskId: 123, startDateTime: Date(), endDateTime: Date(), description: "description_example", tripId: 123, fileAttachmentCount: 123, payAmount: 123, overtimePayAmount: 123, includesOvertime: false) // Timesheet | A Timesheet Request object containing values for the new Timesheet to create

// Inserts a single timesheet record.    Requires the 'SubmitTimesheets' permission.
TimesheetsAPI.timesheetsCreateSingleTimesheet(xChronosheetsAuth: xChronosheetsAuth, request: request) { (response, error) in
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
 **request** | [**Timesheet**](Timesheet.md) | A Timesheet Request object containing values for the new Timesheet to create | 

### Return type

[**ApiResponseInt32**](ApiResponseInt32.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **timesheetsDeleteTimesheet**
```swift
    open class func timesheetsDeleteTimesheet(timesheetId: Int, xChronosheetsAuth: String, completion: @escaping (_ data: ApiResponseBoolean?, _ error: Error?) -> Void)
```

Delete a timesheet.    Requires the 'SubmitTimesheets' permission.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let timesheetId = 987 // Int | The ID of the Timesheet you want to delete
let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token

// Delete a timesheet.    Requires the 'SubmitTimesheets' permission.
TimesheetsAPI.timesheetsDeleteTimesheet(timesheetId: timesheetId, xChronosheetsAuth: xChronosheetsAuth) { (response, error) in
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
 **timesheetId** | **Int** | The ID of the Timesheet you want to delete | 
 **xChronosheetsAuth** | **String** | The ChronoSheets Auth Token | 

### Return type

[**ApiResponseBoolean**](ApiResponseBoolean.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **timesheetsGetTimesheets**
```swift
    open class func timesheetsGetTimesheets(startDate: Date, endDate: Date, xChronosheetsAuth: String, completion: @escaping (_ data: ApiResponseListTimesheet?, _ error: Error?) -> Void)
```

Get timesheets between start and end dates.  Note: the date range cannot exceed 24 hours.  This method is generally used to get timesheets for a particular day.    Requires the 'SubmitTimesheets' permission.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let startDate = Date() // Date | The start date of the date range
let endDate = Date() // Date | The end date of the date range
let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token

// Get timesheets between start and end dates.  Note: the date range cannot exceed 24 hours.  This method is generally used to get timesheets for a particular day.    Requires the 'SubmitTimesheets' permission.
TimesheetsAPI.timesheetsGetTimesheets(startDate: startDate, endDate: endDate, xChronosheetsAuth: xChronosheetsAuth) { (response, error) in
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
 **startDate** | **Date** | The start date of the date range | 
 **endDate** | **Date** | The end date of the date range | 
 **xChronosheetsAuth** | **String** | The ChronoSheets Auth Token | 

### Return type

[**ApiResponseListTimesheet**](ApiResponseListTimesheet.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **timesheetsUpdateTimesheets**
```swift
    open class func timesheetsUpdateTimesheets(xChronosheetsAuth: String, request: BatchUpdateTimesheetRequest, completion: @escaping (_ data: ApiResponseListInt32?, _ error: Error?) -> Void)
```

Batch update timesheets.    Requires the 'SubmitTimesheets' permission.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token
let request = BatchUpdateTimesheetRequest(timesheets: [Timesheet(timesheetId: 123, userId: 123, jobId: 123, taskId: 123, startDateTime: Date(), endDateTime: Date(), description: "description_example", tripId: 123, fileAttachmentCount: 123, payAmount: 123, overtimePayAmount: 123, includesOvertime: false)]) // BatchUpdateTimesheetRequest | A BatchUpdateTimesheet Request object containing values for the new Timesheets to create or update.  If the timesheet Id is specified, then an update will be performed, else the timesheet record will be created.

// Batch update timesheets.    Requires the 'SubmitTimesheets' permission.
TimesheetsAPI.timesheetsUpdateTimesheets(xChronosheetsAuth: xChronosheetsAuth, request: request) { (response, error) in
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
 **request** | [**BatchUpdateTimesheetRequest**](BatchUpdateTimesheetRequest.md) | A BatchUpdateTimesheet Request object containing values for the new Timesheets to create or update.  If the timesheet Id is specified, then an update will be performed, else the timesheet record will be created. | 

### Return type

[**ApiResponseListInt32**](ApiResponseListInt32.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


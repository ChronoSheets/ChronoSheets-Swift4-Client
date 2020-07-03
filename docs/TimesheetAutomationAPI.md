# TimesheetAutomationAPI

All URIs are relative to *https://api.chronosheets.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**timesheetAutomationCreateAutomationStep**](TimesheetAutomationAPI.md#timesheetautomationcreateautomationstep) | **POST** /TimesheetAutomation/CreateAutomationStep | Creates an automation step.  Timesheet automation is determined by looking at steps taken by the user.  Create a step to log some automation action, such as entering a geofence or tapping on an NFC badge.  Requires the &#39;SubmitTimesheets&#39; permission.
[**timesheetAutomationGetTimesheetAutomationAuditTrail**](TimesheetAutomationAPI.md#timesheetautomationgettimesheetautomationaudittrail) | **GET** /TimesheetAutomation/GetTimesheetAutomationAuditTrail | Retrieve the timesheet automation / alerts for geofences activities or NFC tap on/off.  Requires the &#39;ManageGeofencing&#39; permission.


# **timesheetAutomationCreateAutomationStep**
```swift
    open class func timesheetAutomationCreateAutomationStep(xChronosheetsAuth: String, request: CreateAutomationStepRequest, completion: @escaping (_ data: ApiResponseInt32?, _ error: Error?) -> Void)
```

Creates an automation step.  Timesheet automation is determined by looking at steps taken by the user.  Create a step to log some automation action, such as entering a geofence or tapping on an NFC badge.  Requires the 'SubmitTimesheets' permission.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token
let request = CreateAutomationStepRequest(geofencingId: 123, nfcId: 123, automationActionType: "automationActionType_example", latitude: 123, longitude: 123, clientTime: Date()) // CreateAutomationStepRequest | 

// Creates an automation step.  Timesheet automation is determined by looking at steps taken by the user.  Create a step to log some automation action, such as entering a geofence or tapping on an NFC badge.  Requires the 'SubmitTimesheets' permission.
TimesheetAutomationAPI.timesheetAutomationCreateAutomationStep(xChronosheetsAuth: xChronosheetsAuth, request: request) { (response, error) in
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
 **request** | [**CreateAutomationStepRequest**](CreateAutomationStepRequest.md) |  | 

### Return type

[**ApiResponseInt32**](ApiResponseInt32.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **timesheetAutomationGetTimesheetAutomationAuditTrail**
```swift
    open class func timesheetAutomationGetTimesheetAutomationAuditTrail(geofenceId: Int, userId: Int, sort: Sort_timesheetAutomationGetTimesheetAutomationAuditTrail, order: Order_timesheetAutomationGetTimesheetAutomationAuditTrail, xChronosheetsAuth: String, skip: Int? = nil, take: Int? = nil, completion: @escaping (_ data: ApiResponseForPaginatedListTimesheetAutomationWithOrgAndGeofence?, _ error: Error?) -> Void)
```

Retrieve the timesheet automation / alerts for geofences activities or NFC tap on/off.  Requires the 'ManageGeofencing' permission.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let geofenceId = 987 // Int | The ID of the Geofence
let userId = 987 // Int | 
let sort = "sort_example" // String | 
let order = "order_example" // String | 
let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token
let skip = 987 // Int | Skip this many records (optional)
let take = 987 // Int | Take this many records (optional)

// Retrieve the timesheet automation / alerts for geofences activities or NFC tap on/off.  Requires the 'ManageGeofencing' permission.
TimesheetAutomationAPI.timesheetAutomationGetTimesheetAutomationAuditTrail(geofenceId: geofenceId, userId: userId, sort: sort, order: order, xChronosheetsAuth: xChronosheetsAuth, skip: skip, take: take) { (response, error) in
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
 **geofenceId** | **Int** | The ID of the Geofence | 
 **userId** | **Int** |  | 
 **sort** | **String** |  | 
 **order** | **String** |  | 
 **xChronosheetsAuth** | **String** | The ChronoSheets Auth Token | 
 **skip** | **Int** | Skip this many records | [optional] 
 **take** | **Int** | Take this many records | [optional] 

### Return type

[**ApiResponseForPaginatedListTimesheetAutomationWithOrgAndGeofence**](ApiResponseForPaginatedListTimesheetAutomationWithOrgAndGeofence.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# UsualHoursAPI

All URIs are relative to *https://api.chronosheets.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**usualHoursGetUsualHours**](UsualHoursAPI.md#usualhoursgetusualhours) | **GET** /UsualHours/GetUsualHours | Get usual hours (rostered hours) for an employee.  Requires the &#39;ManageOrganisationUsers&#39; permission.
[**usualHoursSetUsualHours**](UsualHoursAPI.md#usualhourssetusualhours) | **PUT** /UsualHours/SetUsualHours | Set usual hours (rostered hours) for an employee.  Requires the &#39;ManageOrganisationUsers&#39; permission.


# **usualHoursGetUsualHours**
```swift
    open class func usualHoursGetUsualHours(userId: Int, xChronosheetsAuth: String, completion: @escaping (_ data: ApiResponseListUsualHoursDay?, _ error: Error?) -> Void)
```

Get usual hours (rostered hours) for an employee.  Requires the 'ManageOrganisationUsers' permission.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let userId = 987 // Int | The ID of the User for which you want to get UsualHours for
let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token

// Get usual hours (rostered hours) for an employee.  Requires the 'ManageOrganisationUsers' permission.
UsualHoursAPI.usualHoursGetUsualHours(userId: userId, xChronosheetsAuth: xChronosheetsAuth) { (response, error) in
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
 **userId** | **Int** | The ID of the User for which you want to get UsualHours for | 
 **xChronosheetsAuth** | **String** | The ChronoSheets Auth Token | 

### Return type

[**ApiResponseListUsualHoursDay**](ApiResponseListUsualHoursDay.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usualHoursSetUsualHours**
```swift
    open class func usualHoursSetUsualHours(xChronosheetsAuth: String, request: SetUsualHoursRequest, completion: @escaping (_ data: ApiResponseBoolean?, _ error: Error?) -> Void)
```

Set usual hours (rostered hours) for an employee.  Requires the 'ManageOrganisationUsers' permission.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token
let request = SetUsualHoursRequest(usualHoursData: [UsualHoursDay(dayType: "dayType_example", timeSlots: [TimeSlot(dayType: "dayType_example", usualHourId: 123, startHour: 123, startMinute: 123, endHour: 123, endMinute: 123, isValid: false)], deleteUsualHours: [123])], userId: 123) // SetUsualHoursRequest | A Set UsualHours Request object containing updated data.  Make sure to specify the Day types in the request object so that ChronoSheets knows which Days to update

// Set usual hours (rostered hours) for an employee.  Requires the 'ManageOrganisationUsers' permission.
UsualHoursAPI.usualHoursSetUsualHours(xChronosheetsAuth: xChronosheetsAuth, request: request) { (response, error) in
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
 **request** | [**SetUsualHoursRequest**](SetUsualHoursRequest.md) | A Set UsualHours Request object containing updated data.  Make sure to specify the Day types in the request object so that ChronoSheets knows which Days to update | 

### Return type

[**ApiResponseBoolean**](ApiResponseBoolean.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


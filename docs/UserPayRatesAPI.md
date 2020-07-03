# UserPayRatesAPI

All URIs are relative to *https://api.chronosheets.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**userPayRatesCreatePayRate**](UserPayRatesAPI.md#userpayratescreatepayrate) | **POST** /UserPayRates/CreatePayRate | Create a new pay rate for a particular user, archiving the previous pay rate.    Requires the &#39;ManageOrganisationUsers&#39; permission.
[**userPayRatesGetPayRates**](UserPayRatesAPI.md#userpayratesgetpayrates) | **GET** /UserPayRates/GetPayRates | Get a collection of pay rates for a particular user, specified by user id.    Requires the &#39;ManageOrganisationUsers&#39; permission.


# **userPayRatesCreatePayRate**
```swift
    open class func userPayRatesCreatePayRate(xChronosheetsAuth: String, request: InsertUserHourlyRateRequest, completion: @escaping (_ data: ApiResponseInt32?, _ error: Error?) -> Void)
```

Create a new pay rate for a particular user, archiving the previous pay rate.    Requires the 'ManageOrganisationUsers' permission.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token
let request = InsertUserHourlyRateRequest(userId: 123, hourlyRate: 123, hourlyOvertimeRate: 123, currentDate: Date()) // InsertUserHourlyRateRequest | An Insert UserHourlyRate Request object containing values for the new UserHourlyRate to create

// Create a new pay rate for a particular user, archiving the previous pay rate.    Requires the 'ManageOrganisationUsers' permission.
UserPayRatesAPI.userPayRatesCreatePayRate(xChronosheetsAuth: xChronosheetsAuth, request: request) { (response, error) in
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
 **request** | [**InsertUserHourlyRateRequest**](InsertUserHourlyRateRequest.md) | An Insert UserHourlyRate Request object containing values for the new UserHourlyRate to create | 

### Return type

[**ApiResponseInt32**](ApiResponseInt32.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userPayRatesGetPayRates**
```swift
    open class func userPayRatesGetPayRates(userId: Int, xChronosheetsAuth: String, completion: @escaping (_ data: ApiResponseListUserHourlyRate?, _ error: Error?) -> Void)
```

Get a collection of pay rates for a particular user, specified by user id.    Requires the 'ManageOrganisationUsers' permission.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let userId = 987 // Int | The ID of the User for which you want to get UserHourlyRate objects
let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token

// Get a collection of pay rates for a particular user, specified by user id.    Requires the 'ManageOrganisationUsers' permission.
UserPayRatesAPI.userPayRatesGetPayRates(userId: userId, xChronosheetsAuth: xChronosheetsAuth) { (response, error) in
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
 **userId** | **Int** | The ID of the User for which you want to get UserHourlyRate objects | 
 **xChronosheetsAuth** | **String** | The ChronoSheets Auth Token | 

### Return type

[**ApiResponseListUserHourlyRate**](ApiResponseListUserHourlyRate.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


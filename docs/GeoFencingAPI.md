# GeoFencingAPI

All URIs are relative to *https://api.chronosheets.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**geoFencingCreateGeofence**](GeoFencingAPI.md#geofencingcreategeofence) | **POST** /GeoFencing/CreateGeofence | Create a geofencing with rules to be used for clock on/off automation.  Requires the &#39;ManageGeofencing&#39; permission.
[**geoFencingDeleteGeofence**](GeoFencingAPI.md#geofencingdeletegeofence) | **DELETE** /GeoFencing/DeleteGeofence | Deletes a geofence.  Requires the &#39;ManageGeofencing&#39; permission.
[**geoFencingGetGeofenceById**](GeoFencingAPI.md#geofencinggetgeofencebyid) | **GET** /GeoFencing/GetGeofenceById | Get a geofence by ID  Requires the &#39;SubmitTimesheets&#39; permission.
[**geoFencingGetGeofences**](GeoFencingAPI.md#geofencinggetgeofences) | **GET** /GeoFencing/GetGeofences | Get geofences belonging to your organisation  Requires the &#39;SubmitTimesheets&#39; permission.
[**geoFencingUpdateGeofence**](GeoFencingAPI.md#geofencingupdategeofence) | **PUT** /GeoFencing/UpdateGeofence | Updates a geofencing with rules to be used for clock on/off automation.  Requires the &#39;ManageGeofencing&#39; permission.


# **geoFencingCreateGeofence**
```swift
    open class func geoFencingCreateGeofence(xChronosheetsAuth: String, request: CreateGeoFenceRequest, completion: @escaping (_ data: ApiResponseInt32?, _ error: Error?) -> Void)
```

Create a geofencing with rules to be used for clock on/off automation.  Requires the 'ManageGeofencing' permission.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token
let request = CreateGeoFenceRequest(name: "name_example", fenceCoordinates: [BasicCoordinate(latitude: 123, longitude: 123)], triggerJobCodeId: 123, triggerTaskId: 123, sendAlertToOrgGroupId: 123, alertSettings: "alertSettings_example", triggerSettings: "triggerSettings_example", startTimeHour: 123, startTimeMinute: 123, endTimeHour: 123, endTimeMinute: 123) // CreateGeoFenceRequest | 

// Create a geofencing with rules to be used for clock on/off automation.  Requires the 'ManageGeofencing' permission.
GeoFencingAPI.geoFencingCreateGeofence(xChronosheetsAuth: xChronosheetsAuth, request: request) { (response, error) in
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
 **request** | [**CreateGeoFenceRequest**](CreateGeoFenceRequest.md) |  | 

### Return type

[**ApiResponseInt32**](ApiResponseInt32.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **geoFencingDeleteGeofence**
```swift
    open class func geoFencingDeleteGeofence(geofenceId: Int, xChronosheetsAuth: String, completion: @escaping (_ data: ApiResponseGeofence?, _ error: Error?) -> Void)
```

Deletes a geofence.  Requires the 'ManageGeofencing' permission.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let geofenceId = 987 // Int | Specify the geofence you want to delete with the geofence ID.
let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token

// Deletes a geofence.  Requires the 'ManageGeofencing' permission.
GeoFencingAPI.geoFencingDeleteGeofence(geofenceId: geofenceId, xChronosheetsAuth: xChronosheetsAuth) { (response, error) in
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
 **geofenceId** | **Int** | Specify the geofence you want to delete with the geofence ID. | 
 **xChronosheetsAuth** | **String** | The ChronoSheets Auth Token | 

### Return type

[**ApiResponseGeofence**](ApiResponseGeofence.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **geoFencingGetGeofenceById**
```swift
    open class func geoFencingGetGeofenceById(geofenceId: Int, xChronosheetsAuth: String, completion: @escaping (_ data: ApiResponseGeofence?, _ error: Error?) -> Void)
```

Get a geofence by ID  Requires the 'SubmitTimesheets' permission.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let geofenceId = 987 // Int | The ID of the geofence you want to obtain
let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token

// Get a geofence by ID  Requires the 'SubmitTimesheets' permission.
GeoFencingAPI.geoFencingGetGeofenceById(geofenceId: geofenceId, xChronosheetsAuth: xChronosheetsAuth) { (response, error) in
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
 **geofenceId** | **Int** | The ID of the geofence you want to obtain | 
 **xChronosheetsAuth** | **String** | The ChronoSheets Auth Token | 

### Return type

[**ApiResponseGeofence**](ApiResponseGeofence.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **geoFencingGetGeofences**
```swift
    open class func geoFencingGetGeofences(xChronosheetsAuth: String, skip: Int? = nil, take: Int? = nil, completion: @escaping (_ data: ApiResponseForPaginatedListExtendedGeofence?, _ error: Error?) -> Void)
```

Get geofences belonging to your organisation  Requires the 'SubmitTimesheets' permission.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token
let skip = 987 // Int | Number of records to skip (optional)
let take = 987 // Int | Number of records to take (optional)

// Get geofences belonging to your organisation  Requires the 'SubmitTimesheets' permission.
GeoFencingAPI.geoFencingGetGeofences(xChronosheetsAuth: xChronosheetsAuth, skip: skip, take: take) { (response, error) in
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
 **skip** | **Int** | Number of records to skip | [optional] 
 **take** | **Int** | Number of records to take | [optional] 

### Return type

[**ApiResponseForPaginatedListExtendedGeofence**](ApiResponseForPaginatedListExtendedGeofence.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **geoFencingUpdateGeofence**
```swift
    open class func geoFencingUpdateGeofence(xChronosheetsAuth: String, request: UpdateGeoFenceRequest, completion: @escaping (_ data: ApiResponseInt32?, _ error: Error?) -> Void)
```

Updates a geofencing with rules to be used for clock on/off automation.  Requires the 'ManageGeofencing' permission.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token
let request = UpdateGeoFenceRequest(geofenceId: 123, name: "name_example", fenceCoordinates: [BasicCoordinate(latitude: 123, longitude: 123)], triggerJobCodeId: 123, triggerTaskId: 123, sendAlertToOrgGroupId: 123, alertSettings: "alertSettings_example", triggerSettings: "triggerSettings_example", startTimeHour: 123, startTimeMinute: 123, endTimeHour: 123, endTimeMinute: 123) // UpdateGeoFenceRequest | 

// Updates a geofencing with rules to be used for clock on/off automation.  Requires the 'ManageGeofencing' permission.
GeoFencingAPI.geoFencingUpdateGeofence(xChronosheetsAuth: xChronosheetsAuth, request: request) { (response, error) in
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
 **request** | [**UpdateGeoFenceRequest**](UpdateGeoFenceRequest.md) |  | 

### Return type

[**ApiResponseInt32**](ApiResponseInt32.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


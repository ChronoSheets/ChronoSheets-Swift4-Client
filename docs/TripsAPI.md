# TripsAPI

All URIs are relative to *https://api.chronosheets.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**tripsCreateTrip**](TripsAPI.md#tripscreatetrip) | **POST** /Trips/CreateTrip | Create a new trip.  Important: create a timesheet record before calling this, passing in the new timesheet record id as a reference.    Requires the &#39;SubmitTimesheets&#39; permission.
[**tripsGetMyTripById**](TripsAPI.md#tripsgetmytripbyid) | **GET** /Trips/GetMyTripById | Get trip by Id.    Requires the &#39;ViewMyTrips&#39; permission.
[**tripsGetMyTrips**](TripsAPI.md#tripsgetmytrips) | **GET** /Trips/GetMyTrips | Get my trips.  Get the GPS trips you&#39;ve recorded and submitted.    Requires the &#39;ViewMyTrips&#39; permission.


# **tripsCreateTrip**
```swift
    open class func tripsCreateTrip(xChronosheetsAuth: String, request: CreateTripRequest, completion: @escaping (_ data: ApiResponseInt32?, _ error: Error?) -> Void)
```

Create a new trip.  Important: create a timesheet record before calling this, passing in the new timesheet record id as a reference.    Requires the 'SubmitTimesheets' permission.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token
let request = CreateTripRequest(timesheetId: 123, vehicleId: 123, pathCoordsStringCsv: "pathCoordsStringCsv_example", distanceMeters: 123, mobilePlatform: "mobilePlatform_example") // CreateTripRequest | A Create Trip Request object containing values for the new Trip to create

// Create a new trip.  Important: create a timesheet record before calling this, passing in the new timesheet record id as a reference.    Requires the 'SubmitTimesheets' permission.
TripsAPI.tripsCreateTrip(xChronosheetsAuth: xChronosheetsAuth, request: request) { (response, error) in
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
 **request** | [**CreateTripRequest**](CreateTripRequest.md) | A Create Trip Request object containing values for the new Trip to create | 

### Return type

[**ApiResponseInt32**](ApiResponseInt32.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tripsGetMyTripById**
```swift
    open class func tripsGetMyTripById(tripId: Int, xChronosheetsAuth: String, completion: @escaping (_ data: ApiResponseTrip?, _ error: Error?) -> Void)
```

Get trip by Id.    Requires the 'ViewMyTrips' permission.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let tripId = 987 // Int | The ID of the Trip you want to get
let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token

// Get trip by Id.    Requires the 'ViewMyTrips' permission.
TripsAPI.tripsGetMyTripById(tripId: tripId, xChronosheetsAuth: xChronosheetsAuth) { (response, error) in
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
 **tripId** | **Int** | The ID of the Trip you want to get | 
 **xChronosheetsAuth** | **String** | The ChronoSheets Auth Token | 

### Return type

[**ApiResponseTrip**](ApiResponseTrip.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tripsGetMyTrips**
```swift
    open class func tripsGetMyTrips(startDate: Date, endDate: Date, xChronosheetsAuth: String, skip: Int? = nil, take: Int? = nil, vehicleId: Int? = nil, completion: @escaping (_ data: ApiResponseForPaginatedListTrip?, _ error: Error?) -> Void)
```

Get my trips.  Get the GPS trips you've recorded and submitted.    Requires the 'ViewMyTrips' permission.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let startDate = Date() // Date | The Start date of the date range.  Trips after this date will be obtained.
let endDate = Date() // Date | The End date of the date range.  Trips before this date will be obtained.
let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token
let skip = 987 // Int | Skip this many Trips (optional)
let take = 987 // Int | Take this many Trips (optional)
let vehicleId = 987 // Int | Filter by a particular Vehicle (get trips made with a particular vehicle), specified by VehicleId (optional)

// Get my trips.  Get the GPS trips you've recorded and submitted.    Requires the 'ViewMyTrips' permission.
TripsAPI.tripsGetMyTrips(startDate: startDate, endDate: endDate, xChronosheetsAuth: xChronosheetsAuth, skip: skip, take: take, vehicleId: vehicleId) { (response, error) in
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
 **startDate** | **Date** | The Start date of the date range.  Trips after this date will be obtained. | 
 **endDate** | **Date** | The End date of the date range.  Trips before this date will be obtained. | 
 **xChronosheetsAuth** | **String** | The ChronoSheets Auth Token | 
 **skip** | **Int** | Skip this many Trips | [optional] 
 **take** | **Int** | Take this many Trips | [optional] 
 **vehicleId** | **Int** | Filter by a particular Vehicle (get trips made with a particular vehicle), specified by VehicleId | [optional] 

### Return type

[**ApiResponseForPaginatedListTrip**](ApiResponseForPaginatedListTrip.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


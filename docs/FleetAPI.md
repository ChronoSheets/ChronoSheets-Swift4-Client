# FleetAPI

All URIs are relative to *https://api.chronosheets.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fleetCreateVehicle**](FleetAPI.md#fleetcreatevehicle) | **POST** /Fleet/CreateVehicle | Create a vehicle.    Requires the &#39;ManageFleet&#39; permission.
[**fleetDeleteVehicle**](FleetAPI.md#fleetdeletevehicle) | **DELETE** /Fleet/DeleteVehicle | Delete a vehicle from the fleet.  Requires the &#39;ManageFleet&#39; permission.
[**fleetGetVehicleById**](FleetAPI.md#fleetgetvehiclebyid) | **GET** /Fleet/GetVehicleById | Get a particular vehicle.  Does not require any special permission.
[**fleetGetVehicles**](FleetAPI.md#fleetgetvehicles) | **GET** /Fleet/GetVehicles | Get a collection of vehicles that are under your organisation.    Does not require any special permission.
[**fleetUpdateVehicle**](FleetAPI.md#fleetupdatevehicle) | **PUT** /Fleet/UpdateVehicle | Update a vehicle.    Requires the &#39;ManageFleet&#39; permission.


# **fleetCreateVehicle**
```swift
    open class func fleetCreateVehicle(xChronosheetsAuth: String, request: InsertVehicleRequest, completion: @escaping (_ data: ApiResponseInt32?, _ error: Error?) -> Void)
```

Create a vehicle.    Requires the 'ManageFleet' permission.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token
let request = InsertVehicleRequest(name: "name_example", costPerKilometer: 123, make: "make_example", model: "model_example", year: "year_example", licencePlateNumber: "licencePlateNumber_example", linkedOrgGroupIds: [123]) // InsertVehicleRequest | An Insert Vehicle Request object containing values for the new Vehicle to create

// Create a vehicle.    Requires the 'ManageFleet' permission.
FleetAPI.fleetCreateVehicle(xChronosheetsAuth: xChronosheetsAuth, request: request) { (response, error) in
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
 **request** | [**InsertVehicleRequest**](InsertVehicleRequest.md) | An Insert Vehicle Request object containing values for the new Vehicle to create | 

### Return type

[**ApiResponseInt32**](ApiResponseInt32.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fleetDeleteVehicle**
```swift
    open class func fleetDeleteVehicle(vehicleId: Int, xChronosheetsAuth: String, completion: @escaping (_ data: ApiResponseBoolean?, _ error: Error?) -> Void)
```

Delete a vehicle from the fleet.  Requires the 'ManageFleet' permission.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let vehicleId = 987 // Int | The unique ID of the vehicle you wish to delete
let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token

// Delete a vehicle from the fleet.  Requires the 'ManageFleet' permission.
FleetAPI.fleetDeleteVehicle(vehicleId: vehicleId, xChronosheetsAuth: xChronosheetsAuth) { (response, error) in
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
 **vehicleId** | **Int** | The unique ID of the vehicle you wish to delete | 
 **xChronosheetsAuth** | **String** | The ChronoSheets Auth Token | 

### Return type

[**ApiResponseBoolean**](ApiResponseBoolean.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fleetGetVehicleById**
```swift
    open class func fleetGetVehicleById(vehicleId: Int, xChronosheetsAuth: String, completion: @escaping (_ data: ApiResponseFleetVehicle?, _ error: Error?) -> Void)
```

Get a particular vehicle.  Does not require any special permission.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let vehicleId = 987 // Int | The ID of the Vehicle you want to get
let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token

// Get a particular vehicle.  Does not require any special permission.
FleetAPI.fleetGetVehicleById(vehicleId: vehicleId, xChronosheetsAuth: xChronosheetsAuth) { (response, error) in
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
 **vehicleId** | **Int** | The ID of the Vehicle you want to get | 
 **xChronosheetsAuth** | **String** | The ChronoSheets Auth Token | 

### Return type

[**ApiResponseFleetVehicle**](ApiResponseFleetVehicle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fleetGetVehicles**
```swift
    open class func fleetGetVehicles(xChronosheetsAuth: String, includeDeleted: Bool? = nil, completion: @escaping (_ data: ApiResponseListFleetVehicle?, _ error: Error?) -> Void)
```

Get a collection of vehicles that are under your organisation.    Does not require any special permission.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token
let includeDeleted = true // Bool | Whether or not to include deleted vehicles (optional)

// Get a collection of vehicles that are under your organisation.    Does not require any special permission.
FleetAPI.fleetGetVehicles(xChronosheetsAuth: xChronosheetsAuth, includeDeleted: includeDeleted) { (response, error) in
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
 **includeDeleted** | **Bool** | Whether or not to include deleted vehicles | [optional] 

### Return type

[**ApiResponseListFleetVehicle**](ApiResponseListFleetVehicle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fleetUpdateVehicle**
```swift
    open class func fleetUpdateVehicle(xChronosheetsAuth: String, request: SaveVehicleRequest, completion: @escaping (_ data: ApiResponseBoolean?, _ error: Error?) -> Void)
```

Update a vehicle.    Requires the 'ManageFleet' permission.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token
let request = SaveVehicleRequest(id: 123, name: "name_example", costPerKilometer: 123, make: "make_example", model: "model_example", year: "year_example", licencePlateNumber: "licencePlateNumber_example", linkedOrgGroupIds: [123], isDeleted: false) // SaveVehicleRequest | A Save Vehicle Request object containing updated fields.  Make sure to specify the Vehicle Id in the request object so that ChronoSheets knows which Vehicle to update

// Update a vehicle.    Requires the 'ManageFleet' permission.
FleetAPI.fleetUpdateVehicle(xChronosheetsAuth: xChronosheetsAuth, request: request) { (response, error) in
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
 **request** | [**SaveVehicleRequest**](SaveVehicleRequest.md) | A Save Vehicle Request object containing updated fields.  Make sure to specify the Vehicle Id in the request object so that ChronoSheets knows which Vehicle to update | 

### Return type

[**ApiResponseBoolean**](ApiResponseBoolean.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# ClientsAPI

All URIs are relative to *https://api.chronosheets.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**clientsCreateClient**](ClientsAPI.md#clientscreateclient) | **POST** /Clients/CreateClient | Create a client.    Requires the &#39;ManageClientsAndProjects&#39; permission.
[**clientsGetClient**](ClientsAPI.md#clientsgetclient) | **GET** /Clients/GetClient | Get a particular client.    Requires the &#39;ManageClientsAndProjects&#39; or &#39;ManageJobsAndTask&#39; permissions.
[**clientsGetClients**](ClientsAPI.md#clientsgetclients) | **GET** /Clients/GetClients | Get a collection of clients that are under your organisation.    Requires the &#39;ManageClientsAndProjects&#39; or &#39;ManageJobsAndTask&#39; permissions.
[**clientsUpdateClient**](ClientsAPI.md#clientsupdateclient) | **PUT** /Clients/UpdateClient | Update a client.    Requires the &#39;ManageClientsAndProjects&#39; permission.


# **clientsCreateClient**
```swift
    open class func clientsCreateClient(xChronosheetsAuth: String, request: InsertClientRequest, completion: @escaping (_ data: ApiResponseInt32?, _ error: Error?) -> Void)
```

Create a client.    Requires the 'ManageClientsAndProjects' permission.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token
let request = InsertClientRequest(clientName: "clientName_example", clientAddressLine1: "clientAddressLine1_example", clientAddressLine2: "clientAddressLine2_example", clientSuburb: "clientSuburb_example", clientState: "clientState_example", clientPostCode: "clientPostCode_example", personOfContact: "personOfContact_example", clientPhoneNumber: "clientPhoneNumber_example", clientMobileNumber: "clientMobileNumber_example", clientEmailAddress: "clientEmailAddress_example", clientWebURL: "clientWebURL_example") // InsertClientRequest | An Insert Client Request object containing values for the new Client to create

// Create a client.    Requires the 'ManageClientsAndProjects' permission.
ClientsAPI.clientsCreateClient(xChronosheetsAuth: xChronosheetsAuth, request: request) { (response, error) in
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
 **request** | [**InsertClientRequest**](InsertClientRequest.md) | An Insert Client Request object containing values for the new Client to create | 

### Return type

[**ApiResponseInt32**](ApiResponseInt32.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **clientsGetClient**
```swift
    open class func clientsGetClient(clientId: Int, xChronosheetsAuth: String, completion: @escaping (_ data: ApiResponseClient?, _ error: Error?) -> Void)
```

Get a particular client.    Requires the 'ManageClientsAndProjects' or 'ManageJobsAndTask' permissions.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let clientId = 987 // Int | The ID of the Client you want to get
let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token

// Get a particular client.    Requires the 'ManageClientsAndProjects' or 'ManageJobsAndTask' permissions.
ClientsAPI.clientsGetClient(clientId: clientId, xChronosheetsAuth: xChronosheetsAuth) { (response, error) in
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
 **clientId** | **Int** | The ID of the Client you want to get | 
 **xChronosheetsAuth** | **String** | The ChronoSheets Auth Token | 

### Return type

[**ApiResponseClient**](ApiResponseClient.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **clientsGetClients**
```swift
    open class func clientsGetClients(xChronosheetsAuth: String, completion: @escaping (_ data: ApiResponseListClient?, _ error: Error?) -> Void)
```

Get a collection of clients that are under your organisation.    Requires the 'ManageClientsAndProjects' or 'ManageJobsAndTask' permissions.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token

// Get a collection of clients that are under your organisation.    Requires the 'ManageClientsAndProjects' or 'ManageJobsAndTask' permissions.
ClientsAPI.clientsGetClients(xChronosheetsAuth: xChronosheetsAuth) { (response, error) in
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

[**ApiResponseListClient**](ApiResponseListClient.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **clientsUpdateClient**
```swift
    open class func clientsUpdateClient(xChronosheetsAuth: String, request: SaveClientRequest, completion: @escaping (_ data: ApiResponseBoolean?, _ error: Error?) -> Void)
```

Update a client.    Requires the 'ManageClientsAndProjects' permission.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token
let request = SaveClientRequest(id: 123, clientName: "clientName_example", clientAddressLine1: "clientAddressLine1_example", clientAddressLine2: "clientAddressLine2_example", clientSuburb: "clientSuburb_example", clientState: "clientState_example", clientPostCode: "clientPostCode_example", personOfContact: "personOfContact_example", clientPhoneNumber: "clientPhoneNumber_example", clientMobileNumber: "clientMobileNumber_example", clientEmailAddress: "clientEmailAddress_example", clientWebURL: "clientWebURL_example") // SaveClientRequest | A Save Client Request object containing updated fields.  Make sure to specify the Client Id in the request object so that ChronoSheets knows which Client to update

// Update a client.    Requires the 'ManageClientsAndProjects' permission.
ClientsAPI.clientsUpdateClient(xChronosheetsAuth: xChronosheetsAuth, request: request) { (response, error) in
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
 **request** | [**SaveClientRequest**](SaveClientRequest.md) | A Save Client Request object containing updated fields.  Make sure to specify the Client Id in the request object so that ChronoSheets knows which Client to update | 

### Return type

[**ApiResponseBoolean**](ApiResponseBoolean.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# OrganisationAPI

All URIs are relative to *https://api.chronosheets.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**organisationGetOrganisation**](OrganisationAPI.md#organisationgetorganisation) | **GET** /Organisation/GetOrganisation | Get your organisation.    Requires &#39;OrganisationAdmin&#39; permission.
[**organisationUpdateOrganisation**](OrganisationAPI.md#organisationupdateorganisation) | **PUT** /Organisation/UpdateOrganisation | Update an organisation.    Requires &#39;OrganisationAdmin&#39; permission.


# **organisationGetOrganisation**
```swift
    open class func organisationGetOrganisation(xChronosheetsAuth: String, completion: @escaping (_ data: ApiResponseOrganisation?, _ error: Error?) -> Void)
```

Get your organisation.    Requires 'OrganisationAdmin' permission.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token

// Get your organisation.    Requires 'OrganisationAdmin' permission.
OrganisationAPI.organisationGetOrganisation(xChronosheetsAuth: xChronosheetsAuth) { (response, error) in
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

[**ApiResponseOrganisation**](ApiResponseOrganisation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **organisationUpdateOrganisation**
```swift
    open class func organisationUpdateOrganisation(xChronosheetsAuth: String, request: UpdateOrganisationRequest, completion: @escaping (_ data: ApiResponseUpdateOrganisationResponse?, _ error: Error?) -> Void)
```

Update an organisation.    Requires 'OrganisationAdmin' permission.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token
let request = UpdateOrganisationRequest(organsationId: 123, organisationName: "organisationName_example", addressLine01: "addressLine01_example", addressLine02: "addressLine02_example", organisationSuburb: "organisationSuburb_example", organisationState: "organisationState_example", organisationPostcode: "organisationPostcode_example", organisationCountry: "organisationCountry_example", organisationPhone: "organisationPhone_example", organisationEmailAddress: "organisationEmailAddress_example") // UpdateOrganisationRequest | An Update Organsation Request object containing updated fields.  Make sure to specify the Organsation Id in the request object so that ChronoSheets knows which Organsation to update

// Update an organisation.    Requires 'OrganisationAdmin' permission.
OrganisationAPI.organisationUpdateOrganisation(xChronosheetsAuth: xChronosheetsAuth, request: request) { (response, error) in
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
 **request** | [**UpdateOrganisationRequest**](UpdateOrganisationRequest.md) | An Update Organsation Request object containing updated fields.  Make sure to specify the Organsation Id in the request object so that ChronoSheets knows which Organsation to update | 

### Return type

[**ApiResponseUpdateOrganisationResponse**](ApiResponseUpdateOrganisationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


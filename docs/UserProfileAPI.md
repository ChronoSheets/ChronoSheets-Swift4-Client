# UserProfileAPI

All URIs are relative to *https://api.chronosheets.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**userProfileDoLogin**](UserProfileAPI.md#userprofiledologin) | **PUT** /UserProfile/DoLogin | Login to your ChronoSheets account and obtain an Auth Token which you can use for other ChronoSheets API methods.    Does not require any special permissions.
[**userProfileDoLogout**](UserProfileAPI.md#userprofiledologout) | **DELETE** /UserProfile/DoLogout | Logout of your ChronoSheets account.  This method ends and deletes your active session.    Does not require any special permissions.
[**userProfileGetMyProfile**](UserProfileAPI.md#userprofilegetmyprofile) | **GET** /UserProfile/GetMyProfile | Get your own profile.  Use this method to obtain detailed information about your ChronoSheets user profile.    Does not require any special permissions.
[**userProfileKeepSessionAlive**](UserProfileAPI.md#userprofilekeepsessionalive) | **GET** /UserProfile/KeepSessionAlive | Keep a session alive.  Use this method to keep a session active.  You could use this to &#39;ping&#39; ChronoSheets every &#39;x&#39; minutes to make sure your Auth Token will keep working.    Does not require any special permissions.
[**userProfileUpdateMyProfile**](UserProfileAPI.md#userprofileupdatemyprofile) | **PUT** /UserProfile/UpdateMyProfile | Update your own profile.  Use this method to update your profile information or update/change your password.    Does not require any special permissions.


# **userProfileDoLogin**
```swift
    open class func userProfileDoLogin(request: DoLoginRequest, completion: @escaping (_ data: ApiResponseDoLoginResponse?, _ error: Error?) -> Void)
```

Login to your ChronoSheets account and obtain an Auth Token which you can use for other ChronoSheets API methods.    Does not require any special permissions.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let request = DoLoginRequest(usernameOrEmail: "usernameOrEmail_example", password: "password_example") // DoLoginRequest | A request object containing your username/email and password.

// Login to your ChronoSheets account and obtain an Auth Token which you can use for other ChronoSheets API methods.    Does not require any special permissions.
UserProfileAPI.userProfileDoLogin(request: request) { (response, error) in
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
 **request** | [**DoLoginRequest**](DoLoginRequest.md) | A request object containing your username/email and password. | 

### Return type

[**ApiResponseDoLoginResponse**](ApiResponseDoLoginResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userProfileDoLogout**
```swift
    open class func userProfileDoLogout(xChronosheetsAuth: String, completion: @escaping (_ data: ApiResponseBoolean?, _ error: Error?) -> Void)
```

Logout of your ChronoSheets account.  This method ends and deletes your active session.    Does not require any special permissions.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token

// Logout of your ChronoSheets account.  This method ends and deletes your active session.    Does not require any special permissions.
UserProfileAPI.userProfileDoLogout(xChronosheetsAuth: xChronosheetsAuth) { (response, error) in
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

[**ApiResponseBoolean**](ApiResponseBoolean.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userProfileGetMyProfile**
```swift
    open class func userProfileGetMyProfile(xChronosheetsAuth: String, completion: @escaping (_ data: ApiResponseUserProfile?, _ error: Error?) -> Void)
```

Get your own profile.  Use this method to obtain detailed information about your ChronoSheets user profile.    Does not require any special permissions.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token

// Get your own profile.  Use this method to obtain detailed information about your ChronoSheets user profile.    Does not require any special permissions.
UserProfileAPI.userProfileGetMyProfile(xChronosheetsAuth: xChronosheetsAuth) { (response, error) in
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

[**ApiResponseUserProfile**](ApiResponseUserProfile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userProfileKeepSessionAlive**
```swift
    open class func userProfileKeepSessionAlive(xChronosheetsAuth: String, completion: @escaping (_ data: ApiResponseBoolean?, _ error: Error?) -> Void)
```

Keep a session alive.  Use this method to keep a session active.  You could use this to 'ping' ChronoSheets every 'x' minutes to make sure your Auth Token will keep working.    Does not require any special permissions.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token

// Keep a session alive.  Use this method to keep a session active.  You could use this to 'ping' ChronoSheets every 'x' minutes to make sure your Auth Token will keep working.    Does not require any special permissions.
UserProfileAPI.userProfileKeepSessionAlive(xChronosheetsAuth: xChronosheetsAuth) { (response, error) in
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

[**ApiResponseBoolean**](ApiResponseBoolean.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userProfileUpdateMyProfile**
```swift
    open class func userProfileUpdateMyProfile(xChronosheetsAuth: String, request: UpdateMyProfileRequest, completion: @escaping (_ data: ApiResponseUpdateProfileResponse?, _ error: Error?) -> Void)
```

Update your own profile.  Use this method to update your profile information or update/change your password.    Does not require any special permissions.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token
let request = UpdateMyProfileRequest(emailAddress: "emailAddress_example", firstName: "firstName_example", lastName: "lastName_example", oldPassword: "oldPassword_example", newPassword: "newPassword_example", confirmNewPassword: "confirmNewPassword_example", isSubscribedToNewsletter: false, wantsToChangePassword: false) // UpdateMyProfileRequest | An Update MyProfile Request object containing updated fields.

// Update your own profile.  Use this method to update your profile information or update/change your password.    Does not require any special permissions.
UserProfileAPI.userProfileUpdateMyProfile(xChronosheetsAuth: xChronosheetsAuth, request: request) { (response, error) in
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
 **request** | [**UpdateMyProfileRequest**](UpdateMyProfileRequest.md) | An Update MyProfile Request object containing updated fields. | 

### Return type

[**ApiResponseUpdateProfileResponse**](ApiResponseUpdateProfileResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


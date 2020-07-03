# TranscriptsAPI

All URIs are relative to *https://api.chronosheets.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**transcriptsGetMyTranscript**](TranscriptsAPI.md#transcriptsgetmytranscript) | **GET** /Transcripts/GetMyTranscript | Get an audio to text transcript for a particular audio file attachment
[**transcriptsGetMyTranscripts**](TranscriptsAPI.md#transcriptsgetmytranscripts) | **GET** /Transcripts/GetMyTranscripts | Get my file transcripts.  Get audio to text transcripts that you&#39;ve created.


# **transcriptsGetMyTranscript**
```swift
    open class func transcriptsGetMyTranscript(fileAttachmentId: Int, xChronosheetsAuth: String, completion: @escaping (_ data: ApiResponseTranscription?, _ error: Error?) -> Void)
```

Get an audio to text transcript for a particular audio file attachment

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let fileAttachmentId = 987 // Int | The ID of the file attachment that has a transcript.  It should be an audio file attachment.
let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token

// Get an audio to text transcript for a particular audio file attachment
TranscriptsAPI.transcriptsGetMyTranscript(fileAttachmentId: fileAttachmentId, xChronosheetsAuth: xChronosheetsAuth) { (response, error) in
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
 **fileAttachmentId** | **Int** | The ID of the file attachment that has a transcript.  It should be an audio file attachment. | 
 **xChronosheetsAuth** | **String** | The ChronoSheets Auth Token | 

### Return type

[**ApiResponseTranscription**](ApiResponseTranscription.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transcriptsGetMyTranscripts**
```swift
    open class func transcriptsGetMyTranscripts(startDate: Date, endDate: Date, xChronosheetsAuth: String, skip: Int? = nil, take: Int? = nil, keyword: String? = nil, completion: @escaping (_ data: ApiResponseForPaginatedListOrgReportTranscript?, _ error: Error?) -> Void)
```

Get my file transcripts.  Get audio to text transcripts that you've created.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let startDate = Date() // Date | The Start date of the date range.  Transcripts after this date will be obtained.
let endDate = Date() // Date | The End date of the date range.  Transcripts before this date will be obtained.
let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token
let skip = 987 // Int | Skip this many transcripts (optional)
let take = 987 // Int | Take this many transcripts (optional)
let keyword = "keyword_example" // String | Search the text content of the transcript keywords (optional)

// Get my file transcripts.  Get audio to text transcripts that you've created.
TranscriptsAPI.transcriptsGetMyTranscripts(startDate: startDate, endDate: endDate, xChronosheetsAuth: xChronosheetsAuth, skip: skip, take: take, keyword: keyword) { (response, error) in
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
 **startDate** | **Date** | The Start date of the date range.  Transcripts after this date will be obtained. | 
 **endDate** | **Date** | The End date of the date range.  Transcripts before this date will be obtained. | 
 **xChronosheetsAuth** | **String** | The ChronoSheets Auth Token | 
 **skip** | **Int** | Skip this many transcripts | [optional] 
 **take** | **Int** | Take this many transcripts | [optional] 
 **keyword** | **String** | Search the text content of the transcript keywords | [optional] 

### Return type

[**ApiResponseForPaginatedListOrgReportTranscript**](ApiResponseForPaginatedListOrgReportTranscript.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


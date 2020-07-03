# ReportsAPI

All URIs are relative to *https://api.chronosheets.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**reportsGetAllChartsDataAdmin**](ReportsAPI.md#reportsgetallchartsdataadmin) | **GET** /Reports/GetAllChartsDataAdmin | Get Consolidated Admin Reports Data (Jobs, Tasks, Clients and Projects).  These are the organisation wide reports, with data from potentially all employees.    Requires the &#39;ReportAdmin&#39; permission.
[**reportsGetAllChartsDataUser**](ReportsAPI.md#reportsgetallchartsdatauser) | **GET** /Reports/GetAllChartsDataUser | Get Consolidated User Reports Data (Jobs, Tasks, Clients and Projects).  These are the user&#39;s own reports.    Requires the &#39;ViewOwnReports&#39; permission.
[**reportsGetFleetSummaryAdmin**](ReportsAPI.md#reportsgetfleetsummaryadmin) | **GET** /Reports/GetFleetSummaryAdmin | Gets a summary report, which includes total distance travelled and total running costs, for vehicles within your organisation  Requires the &#39;ReportAdmin&#39; permission.
[**reportsGetOrgTripById**](ReportsAPI.md#reportsgetorgtripbyid) | **GET** /Reports/GetOrgTripById | Get trip by Id, for reporting purposes.    Requires the &#39;ReportAdmin&#39; permission.
[**reportsGetOrganisationTimesheetFileAttachments**](ReportsAPI.md#reportsgetorganisationtimesheetfileattachments) | **GET** /Reports/GetOrganisationTimesheetFileAttachments | Reports on Organisation timesheet file attachments (files uploaded and attached to timesheet records)  Requires the &#39;ReportAdmin&#39; permission.
[**reportsGetOrganisationTranscripts**](ReportsAPI.md#reportsgetorganisationtranscripts) | **GET** /Reports/GetOrganisationTranscripts | Reports on Organisation transcripts (When an audio file is attached, it will be automatically transcribed, these are the transcriptions)    Requires the &#39;ReportAdmin&#39; permission.
[**reportsGetOrganisationTrips**](ReportsAPI.md#reportsgetorganisationtrips) | **GET** /Reports/GetOrganisationTrips | Reports on Organisation trips (GPS tracking from whole organisation).    Requires the &#39;ReportAdmin&#39; permission.
[**reportsGetRawDataAdmin**](ReportsAPI.md#reportsgetrawdataadmin) | **GET** /Reports/GetRawDataAdmin | Get Timesheets Raw Data.  This data details each timesheet record.  These are the organisation wide timesheet records, with data from potentially all employees.    Requires the &#39;ReportAdmin&#39; permission.
[**reportsProjectCostingsAdmin**](ReportsAPI.md#reportsprojectcostingsadmin) | **GET** /Reports/ProjectCostingsAdmin | Gets project cost estimations VS actual cost for date range and users.    Requires the &#39;ReportAdmin&#39; permission.
[**reportsUserJobsOverTime**](ReportsAPI.md#reportsuserjobsovertime) | **GET** /Reports/UserJobsOverTime | Timeseries jobs data for the logged in user.    Requires the &#39;ViewOwnReports&#39; or &#39;SubmitTimesheets&#39;.


# **reportsGetAllChartsDataAdmin**
```swift
    open class func reportsGetAllChartsDataAdmin(startDate: Date, endDate: Date, xChronosheetsAuth: String, userIds: String? = nil, forceOnlyThisChart: ForceOnlyThisChart_reportsGetAllChartsDataAdmin? = nil, completion: @escaping (_ data: ApiResponseCombinedReportsData?, _ error: Error?) -> Void)
```

Get Consolidated Admin Reports Data (Jobs, Tasks, Clients and Projects).  These are the organisation wide reports, with data from potentially all employees.    Requires the 'ReportAdmin' permission.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let startDate = Date() // Date | The start date for the date range.  Report data in the response is after this date
let endDate = Date() // Date | The end date for the date range.  Report data in the response is before this date
let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token
let userIds = "userIds_example" // String | A comma-separated list of user Ids, if you want to filter the report data to particular users.  If you want all, send a blank string. (optional)
let forceOnlyThisChart = "forceOnlyThisChart_example" // String | A flag to indicate which report data you require.  Choose a particular set of data, or if you want all data use the 'NotForced' option. (optional)

// Get Consolidated Admin Reports Data (Jobs, Tasks, Clients and Projects).  These are the organisation wide reports, with data from potentially all employees.    Requires the 'ReportAdmin' permission.
ReportsAPI.reportsGetAllChartsDataAdmin(startDate: startDate, endDate: endDate, xChronosheetsAuth: xChronosheetsAuth, userIds: userIds, forceOnlyThisChart: forceOnlyThisChart) { (response, error) in
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
 **startDate** | **Date** | The start date for the date range.  Report data in the response is after this date | 
 **endDate** | **Date** | The end date for the date range.  Report data in the response is before this date | 
 **xChronosheetsAuth** | **String** | The ChronoSheets Auth Token | 
 **userIds** | **String** | A comma-separated list of user Ids, if you want to filter the report data to particular users.  If you want all, send a blank string. | [optional] 
 **forceOnlyThisChart** | **String** | A flag to indicate which report data you require.  Choose a particular set of data, or if you want all data use the &#39;NotForced&#39; option. | [optional] 

### Return type

[**ApiResponseCombinedReportsData**](ApiResponseCombinedReportsData.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reportsGetAllChartsDataUser**
```swift
    open class func reportsGetAllChartsDataUser(startDate: Date, endDate: Date, xChronosheetsAuth: String, completion: @escaping (_ data: ApiResponseCombinedReportsData?, _ error: Error?) -> Void)
```

Get Consolidated User Reports Data (Jobs, Tasks, Clients and Projects).  These are the user's own reports.    Requires the 'ViewOwnReports' permission.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let startDate = Date() // Date | The start date for the date range.  Report data in the response is after this date
let endDate = Date() // Date | The end date for the date range.  Report data in the response is before this date
let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token

// Get Consolidated User Reports Data (Jobs, Tasks, Clients and Projects).  These are the user's own reports.    Requires the 'ViewOwnReports' permission.
ReportsAPI.reportsGetAllChartsDataUser(startDate: startDate, endDate: endDate, xChronosheetsAuth: xChronosheetsAuth) { (response, error) in
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
 **startDate** | **Date** | The start date for the date range.  Report data in the response is after this date | 
 **endDate** | **Date** | The end date for the date range.  Report data in the response is before this date | 
 **xChronosheetsAuth** | **String** | The ChronoSheets Auth Token | 

### Return type

[**ApiResponseCombinedReportsData**](ApiResponseCombinedReportsData.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reportsGetFleetSummaryAdmin**
```swift
    open class func reportsGetFleetSummaryAdmin(startDate: Date, endDate: Date, xChronosheetsAuth: String, userIds: String? = nil, completion: @escaping (_ data: ApiResponseListFleetSummaryReportItem?, _ error: Error?) -> Void)
```

Gets a summary report, which includes total distance travelled and total running costs, for vehicles within your organisation  Requires the 'ReportAdmin' permission.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let startDate = Date() // Date | The start date for the date range.  Report data in the response is after this date
let endDate = Date() // Date | The end date for the date range.  Report data in the response is before this date
let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token
let userIds = "userIds_example" // String | A comma-separated list of user Ids, if you want to filter the report data to particular users.  If you want all, send a blank string. (optional)

// Gets a summary report, which includes total distance travelled and total running costs, for vehicles within your organisation  Requires the 'ReportAdmin' permission.
ReportsAPI.reportsGetFleetSummaryAdmin(startDate: startDate, endDate: endDate, xChronosheetsAuth: xChronosheetsAuth, userIds: userIds) { (response, error) in
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
 **startDate** | **Date** | The start date for the date range.  Report data in the response is after this date | 
 **endDate** | **Date** | The end date for the date range.  Report data in the response is before this date | 
 **xChronosheetsAuth** | **String** | The ChronoSheets Auth Token | 
 **userIds** | **String** | A comma-separated list of user Ids, if you want to filter the report data to particular users.  If you want all, send a blank string. | [optional] 

### Return type

[**ApiResponseListFleetSummaryReportItem**](ApiResponseListFleetSummaryReportItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reportsGetOrgTripById**
```swift
    open class func reportsGetOrgTripById(tripId: Int, xChronosheetsAuth: String, completion: @escaping (_ data: ApiResponseTrip?, _ error: Error?) -> Void)
```

Get trip by Id, for reporting purposes.    Requires the 'ReportAdmin' permission.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let tripId = 987 // Int | The ID of the Trip you want to get
let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token

// Get trip by Id, for reporting purposes.    Requires the 'ReportAdmin' permission.
ReportsAPI.reportsGetOrgTripById(tripId: tripId, xChronosheetsAuth: xChronosheetsAuth) { (response, error) in
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

# **reportsGetOrganisationTimesheetFileAttachments**
```swift
    open class func reportsGetOrganisationTimesheetFileAttachments(startDate: Date, endDate: Date, xChronosheetsAuth: String, skip: Int? = nil, take: Int? = nil, userIds: String? = nil, completion: @escaping (_ data: ApiResponseForPaginatedListOrgReportTimesheetFileAttachment?, _ error: Error?) -> Void)
```

Reports on Organisation timesheet file attachments (files uploaded and attached to timesheet records)  Requires the 'ReportAdmin' permission.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let startDate = Date() // Date | The start date for the date range.  Report data in the response is after this date
let endDate = Date() // Date | The end date for the date range.  Report data in the response is before this date
let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token
let skip = 987 // Int | Skip this many items (optional)
let take = 987 // Int | Take this many items (optional)
let userIds = "userIds_example" // String | A comma-separated list of user Ids, if you want to filter the report data to particular users.  If you want all, send a blank string. (optional)

// Reports on Organisation timesheet file attachments (files uploaded and attached to timesheet records)  Requires the 'ReportAdmin' permission.
ReportsAPI.reportsGetOrganisationTimesheetFileAttachments(startDate: startDate, endDate: endDate, xChronosheetsAuth: xChronosheetsAuth, skip: skip, take: take, userIds: userIds) { (response, error) in
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
 **startDate** | **Date** | The start date for the date range.  Report data in the response is after this date | 
 **endDate** | **Date** | The end date for the date range.  Report data in the response is before this date | 
 **xChronosheetsAuth** | **String** | The ChronoSheets Auth Token | 
 **skip** | **Int** | Skip this many items | [optional] 
 **take** | **Int** | Take this many items | [optional] 
 **userIds** | **String** | A comma-separated list of user Ids, if you want to filter the report data to particular users.  If you want all, send a blank string. | [optional] 

### Return type

[**ApiResponseForPaginatedListOrgReportTimesheetFileAttachment**](ApiResponseForPaginatedListOrgReportTimesheetFileAttachment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reportsGetOrganisationTranscripts**
```swift
    open class func reportsGetOrganisationTranscripts(startDate: Date, endDate: Date, xChronosheetsAuth: String, skip: Int? = nil, take: Int? = nil, userIds: String? = nil, keywords: String? = nil, completion: @escaping (_ data: ApiResponseForPaginatedListOrgReportTranscript?, _ error: Error?) -> Void)
```

Reports on Organisation transcripts (When an audio file is attached, it will be automatically transcribed, these are the transcriptions)    Requires the 'ReportAdmin' permission.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let startDate = Date() // Date | The start date for the date range.  Report data in the response is after this date
let endDate = Date() // Date | The end date for the date range.  Report data in the response is before this date
let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token
let skip = 987 // Int | Skip this many items (optional)
let take = 987 // Int | Take this many items (optional)
let userIds = "userIds_example" // String | A comma-separated list of user Ids, if you want to filter the report data to particular users.  If you want all, send a blank string. (optional)
let keywords = "keywords_example" // String | Search the transcripts by keyword(s) (optional)

// Reports on Organisation transcripts (When an audio file is attached, it will be automatically transcribed, these are the transcriptions)    Requires the 'ReportAdmin' permission.
ReportsAPI.reportsGetOrganisationTranscripts(startDate: startDate, endDate: endDate, xChronosheetsAuth: xChronosheetsAuth, skip: skip, take: take, userIds: userIds, keywords: keywords) { (response, error) in
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
 **startDate** | **Date** | The start date for the date range.  Report data in the response is after this date | 
 **endDate** | **Date** | The end date for the date range.  Report data in the response is before this date | 
 **xChronosheetsAuth** | **String** | The ChronoSheets Auth Token | 
 **skip** | **Int** | Skip this many items | [optional] 
 **take** | **Int** | Take this many items | [optional] 
 **userIds** | **String** | A comma-separated list of user Ids, if you want to filter the report data to particular users.  If you want all, send a blank string. | [optional] 
 **keywords** | **String** | Search the transcripts by keyword(s) | [optional] 

### Return type

[**ApiResponseForPaginatedListOrgReportTranscript**](ApiResponseForPaginatedListOrgReportTranscript.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reportsGetOrganisationTrips**
```swift
    open class func reportsGetOrganisationTrips(startDate: Date, endDate: Date, xChronosheetsAuth: String, skip: Int? = nil, take: Int? = nil, userIds: String? = nil, completion: @escaping (_ data: ApiResponseForPaginatedListOrgReportTrip?, _ error: Error?) -> Void)
```

Reports on Organisation trips (GPS tracking from whole organisation).    Requires the 'ReportAdmin' permission.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let startDate = Date() // Date | The start date for the date range.  Report data in the response is after this date
let endDate = Date() // Date | The end date for the date range.  Report data in the response is before this date
let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token
let skip = 987 // Int | Skip this many items (optional)
let take = 987 // Int | Take this many items (optional)
let userIds = "userIds_example" // String | A comma-separated list of user Ids, if you want to filter the report data to particular users.  If you want all, send a blank string. (optional)

// Reports on Organisation trips (GPS tracking from whole organisation).    Requires the 'ReportAdmin' permission.
ReportsAPI.reportsGetOrganisationTrips(startDate: startDate, endDate: endDate, xChronosheetsAuth: xChronosheetsAuth, skip: skip, take: take, userIds: userIds) { (response, error) in
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
 **startDate** | **Date** | The start date for the date range.  Report data in the response is after this date | 
 **endDate** | **Date** | The end date for the date range.  Report data in the response is before this date | 
 **xChronosheetsAuth** | **String** | The ChronoSheets Auth Token | 
 **skip** | **Int** | Skip this many items | [optional] 
 **take** | **Int** | Take this many items | [optional] 
 **userIds** | **String** | A comma-separated list of user Ids, if you want to filter the report data to particular users.  If you want all, send a blank string. | [optional] 

### Return type

[**ApiResponseForPaginatedListOrgReportTrip**](ApiResponseForPaginatedListOrgReportTrip.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reportsGetRawDataAdmin**
```swift
    open class func reportsGetRawDataAdmin(startDate: Date, endDate: Date, xChronosheetsAuth: String, userIds: String? = nil, sort: Sort_reportsGetRawDataAdmin? = nil, order: Order_reportsGetRawDataAdmin? = nil, skip: Int? = nil, take: Int? = nil, completion: @escaping (_ data: ApiResponseForPaginatedListRawReportItem?, _ error: Error?) -> Void)
```

Get Timesheets Raw Data.  This data details each timesheet record.  These are the organisation wide timesheet records, with data from potentially all employees.    Requires the 'ReportAdmin' permission.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let startDate = Date() // Date | The start date for the date range.  Report data in the response is after this date
let endDate = Date() // Date | The end date for the date range.  Report data in the response is before this date
let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token
let userIds = "userIds_example" // String | A comma-separated list of user Ids, if you want to filter the report data to particular users.  If you want all, send a blank string. (optional)
let sort = "sort_example" // String | Decide which column to sort on (optional)
let order = "order_example" // String | Decide which direction to sort the column (optional)
let skip = 987 // Int | Skip this many rows (optional)
let take = 987 // Int | Take this many rows (optional)

// Get Timesheets Raw Data.  This data details each timesheet record.  These are the organisation wide timesheet records, with data from potentially all employees.    Requires the 'ReportAdmin' permission.
ReportsAPI.reportsGetRawDataAdmin(startDate: startDate, endDate: endDate, xChronosheetsAuth: xChronosheetsAuth, userIds: userIds, sort: sort, order: order, skip: skip, take: take) { (response, error) in
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
 **startDate** | **Date** | The start date for the date range.  Report data in the response is after this date | 
 **endDate** | **Date** | The end date for the date range.  Report data in the response is before this date | 
 **xChronosheetsAuth** | **String** | The ChronoSheets Auth Token | 
 **userIds** | **String** | A comma-separated list of user Ids, if you want to filter the report data to particular users.  If you want all, send a blank string. | [optional] 
 **sort** | **String** | Decide which column to sort on | [optional] 
 **order** | **String** | Decide which direction to sort the column | [optional] 
 **skip** | **Int** | Skip this many rows | [optional] 
 **take** | **Int** | Take this many rows | [optional] 

### Return type

[**ApiResponseForPaginatedListRawReportItem**](ApiResponseForPaginatedListRawReportItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reportsProjectCostingsAdmin**
```swift
    open class func reportsProjectCostingsAdmin(startDate: Date, endDate: Date, xChronosheetsAuth: String, userIds: String? = nil, completion: @escaping (_ data: ApiResponseListProjectCostingReportItem?, _ error: Error?) -> Void)
```

Gets project cost estimations VS actual cost for date range and users.    Requires the 'ReportAdmin' permission.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let startDate = Date() // Date | The start date for the date range.  Report data in the response is after this date
let endDate = Date() // Date | The end date for the date range.  Report data in the response is before this date
let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token
let userIds = "userIds_example" // String | A comma-separated list of user Ids, if you want to filter the report data to particular users.  If you want all, send a blank string. (optional)

// Gets project cost estimations VS actual cost for date range and users.    Requires the 'ReportAdmin' permission.
ReportsAPI.reportsProjectCostingsAdmin(startDate: startDate, endDate: endDate, xChronosheetsAuth: xChronosheetsAuth, userIds: userIds) { (response, error) in
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
 **startDate** | **Date** | The start date for the date range.  Report data in the response is after this date | 
 **endDate** | **Date** | The end date for the date range.  Report data in the response is before this date | 
 **xChronosheetsAuth** | **String** | The ChronoSheets Auth Token | 
 **userIds** | **String** | A comma-separated list of user Ids, if you want to filter the report data to particular users.  If you want all, send a blank string. | [optional] 

### Return type

[**ApiResponseListProjectCostingReportItem**](ApiResponseListProjectCostingReportItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reportsUserJobsOverTime**
```swift
    open class func reportsUserJobsOverTime(startDate: Date, endDate: Date, xChronosheetsAuth: String, completion: @escaping (_ data: ApiResponseListJobSeriesReportItem?, _ error: Error?) -> Void)
```

Timeseries jobs data for the logged in user.    Requires the 'ViewOwnReports' or 'SubmitTimesheets'.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let startDate = Date() // Date | The start date for the date range.  Report data in the response is after this date
let endDate = Date() // Date | The end date for the date range.  Report data in the response is before this date
let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token

// Timeseries jobs data for the logged in user.    Requires the 'ViewOwnReports' or 'SubmitTimesheets'.
ReportsAPI.reportsUserJobsOverTime(startDate: startDate, endDate: endDate, xChronosheetsAuth: xChronosheetsAuth) { (response, error) in
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
 **startDate** | **Date** | The start date for the date range.  Report data in the response is after this date | 
 **endDate** | **Date** | The end date for the date range.  Report data in the response is before this date | 
 **xChronosheetsAuth** | **String** | The ChronoSheets Auth Token | 

### Return type

[**ApiResponseListJobSeriesReportItem**](ApiResponseListJobSeriesReportItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


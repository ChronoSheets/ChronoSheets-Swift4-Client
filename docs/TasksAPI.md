# TasksAPI

All URIs are relative to *https://api.chronosheets.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**tasksCreateTask**](TasksAPI.md#taskscreatetask) | **POST** /Tasks/CreateTask | Create a task.    Requires the &#39;ManageJobsAndTask&#39; permission.
[**tasksDeleteTask**](TasksAPI.md#tasksdeletetask) | **DELETE** /Tasks/DeleteTask | Delete a task.    Requires the &#39;ManageJobsAndTask&#39; permission.
[**tasksGetTaskById**](TasksAPI.md#tasksgettaskbyid) | **GET** /Tasks/GetTaskById | Get a particular task by Id.   Requires the &#39;SubmitTimesheets&#39; or &#39;ManageJobsAndTask&#39; permissions.
[**tasksGetTasks**](TasksAPI.md#tasksgettasks) | **GET** /Tasks/GetTasks | Get tasks in your organisation.   Requires the &#39;SubmitTimesheets&#39; or &#39;ManageJobsAndTask&#39; permissions.
[**tasksGetTasksForJob**](TasksAPI.md#tasksgettasksforjob) | **GET** /Tasks/GetTasksForJob | Get a collection of tasks for a particular Job, specified by JobId.    Requires the &#39;SubmitTimesheets&#39; or &#39;ManageJobsAndTask&#39; permissions.
[**tasksUpdateTask**](TasksAPI.md#tasksupdatetask) | **PUT** /Tasks/UpdateTask | Update a task.    Requires the &#39;ManageJobsAndTask&#39; permission.


# **tasksCreateTask**
```swift
    open class func tasksCreateTask(xChronosheetsAuth: String, request: InsertTaskRequest, completion: @escaping (_ data: ApiResponseInt32?, _ error: Error?) -> Void)
```

Create a task.    Requires the 'ManageJobsAndTask' permission.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token
let request = InsertTaskRequest(taskName: "taskName_example", tripEnabled: false) // InsertTaskRequest | An Insert Task Request object containing values for the new Task to create

// Create a task.    Requires the 'ManageJobsAndTask' permission.
TasksAPI.tasksCreateTask(xChronosheetsAuth: xChronosheetsAuth, request: request) { (response, error) in
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
 **request** | [**InsertTaskRequest**](InsertTaskRequest.md) | An Insert Task Request object containing values for the new Task to create | 

### Return type

[**ApiResponseInt32**](ApiResponseInt32.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tasksDeleteTask**
```swift
    open class func tasksDeleteTask(taskId: Int, xChronosheetsAuth: String, completion: @escaping (_ data: ApiResponseBoolean?, _ error: Error?) -> Void)
```

Delete a task.    Requires the 'ManageJobsAndTask' permission.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let taskId = 987 // Int | The ID of the Task you want to delete
let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token

// Delete a task.    Requires the 'ManageJobsAndTask' permission.
TasksAPI.tasksDeleteTask(taskId: taskId, xChronosheetsAuth: xChronosheetsAuth) { (response, error) in
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
 **taskId** | **Int** | The ID of the Task you want to delete | 
 **xChronosheetsAuth** | **String** | The ChronoSheets Auth Token | 

### Return type

[**ApiResponseBoolean**](ApiResponseBoolean.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tasksGetTaskById**
```swift
    open class func tasksGetTaskById(taskId: Int, xChronosheetsAuth: String, completion: @escaping (_ data: ApiResponseTimesheetTask?, _ error: Error?) -> Void)
```

Get a particular task by Id.   Requires the 'SubmitTimesheets' or 'ManageJobsAndTask' permissions.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let taskId = 987 // Int | The ID of the TimesheetTask you want to get
let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token

// Get a particular task by Id.   Requires the 'SubmitTimesheets' or 'ManageJobsAndTask' permissions.
TasksAPI.tasksGetTaskById(taskId: taskId, xChronosheetsAuth: xChronosheetsAuth) { (response, error) in
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
 **taskId** | **Int** | The ID of the TimesheetTask you want to get | 
 **xChronosheetsAuth** | **String** | The ChronoSheets Auth Token | 

### Return type

[**ApiResponseTimesheetTask**](ApiResponseTimesheetTask.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tasksGetTasks**
```swift
    open class func tasksGetTasks(xChronosheetsAuth: String, completion: @escaping (_ data: ApiResponseListTimesheetTask?, _ error: Error?) -> Void)
```

Get tasks in your organisation.   Requires the 'SubmitTimesheets' or 'ManageJobsAndTask' permissions.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token

// Get tasks in your organisation.   Requires the 'SubmitTimesheets' or 'ManageJobsAndTask' permissions.
TasksAPI.tasksGetTasks(xChronosheetsAuth: xChronosheetsAuth) { (response, error) in
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

[**ApiResponseListTimesheetTask**](ApiResponseListTimesheetTask.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tasksGetTasksForJob**
```swift
    open class func tasksGetTasksForJob(jobId: Int, xChronosheetsAuth: String, completion: @escaping (_ data: ApiResponseListTimesheetTask?, _ error: Error?) -> Void)
```

Get a collection of tasks for a particular Job, specified by JobId.    Requires the 'SubmitTimesheets' or 'ManageJobsAndTask' permissions.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let jobId = 987 // Int | The ID of the job
let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token

// Get a collection of tasks for a particular Job, specified by JobId.    Requires the 'SubmitTimesheets' or 'ManageJobsAndTask' permissions.
TasksAPI.tasksGetTasksForJob(jobId: jobId, xChronosheetsAuth: xChronosheetsAuth) { (response, error) in
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
 **jobId** | **Int** | The ID of the job | 
 **xChronosheetsAuth** | **String** | The ChronoSheets Auth Token | 

### Return type

[**ApiResponseListTimesheetTask**](ApiResponseListTimesheetTask.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tasksUpdateTask**
```swift
    open class func tasksUpdateTask(xChronosheetsAuth: String, request: UpdateTaskRequest, completion: @escaping (_ data: ApiResponseBoolean?, _ error: Error?) -> Void)
```

Update a task.    Requires the 'ManageJobsAndTask' permission.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChronoSheetsAPI

let xChronosheetsAuth = "xChronosheetsAuth_example" // String | The ChronoSheets Auth Token
let request = UpdateTaskRequest(id: 123, taskName: "taskName_example", isDeleted: false, tripEnabled: false) // UpdateTaskRequest | An Update Task Request object containing updated fields.  Make sure to specify the Task Id in the request object so that ChronoSheets knows which Task to update

// Update a task.    Requires the 'ManageJobsAndTask' permission.
TasksAPI.tasksUpdateTask(xChronosheetsAuth: xChronosheetsAuth, request: request) { (response, error) in
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
 **request** | [**UpdateTaskRequest**](UpdateTaskRequest.md) | An Update Task Request object containing updated fields.  Make sure to specify the Task Id in the request object so that ChronoSheets knows which Task to update | 

### Return type

[**ApiResponseBoolean**](ApiResponseBoolean.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


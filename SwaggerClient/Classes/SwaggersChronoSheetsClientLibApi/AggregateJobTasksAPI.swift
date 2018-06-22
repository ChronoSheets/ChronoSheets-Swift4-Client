//
// AggregateJobTasksAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class AggregateJobTasksAPI {
    /**
     Get jobs and tasks information, aggregated
     
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func aggregateJobTasksGetAggregateJobTasks(xChronosheetsAuth: String, completion: @escaping ((_ data: CsApiApiResponseListAggregateJobCode?,_ error: Error?) -> Void)) {
        aggregateJobTasksGetAggregateJobTasksWithRequestBuilder(xChronosheetsAuth: xChronosheetsAuth).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get jobs and tasks information, aggregated
     - GET /api/AggregateJobTasks/GetAggregateJobTasks
     - examples: [{contentType=application/json, example={
  "Status" : "Succeeded",
  "Message" : "Message",
  "Data" : [ {
    "Project" : "Project",
    "AvailableTasks" : [ {
      "IsDeleted" : true,
      "Label" : "Label",
      "Id" : 0
    }, {
      "IsDeleted" : true,
      "Label" : "Label",
      "Id" : 0
    } ],
    "IsDeleted" : true,
    "PermittedEmployees" : [ 6, 6 ],
    "ProjectId" : 5,
    "OrganisationId" : 2,
    "ClientId" : 5,
    "Id" : 1,
    "Client" : "Client",
    "Code" : "Code"
  }, {
    "Project" : "Project",
    "AvailableTasks" : [ {
      "IsDeleted" : true,
      "Label" : "Label",
      "Id" : 0
    }, {
      "IsDeleted" : true,
      "Label" : "Label",
      "Id" : 0
    } ],
    "IsDeleted" : true,
    "PermittedEmployees" : [ 6, 6 ],
    "ProjectId" : 5,
    "OrganisationId" : 2,
    "ClientId" : 5,
    "Id" : 1,
    "Client" : "Client",
    "Code" : "Code"
  } ]
}}, {contentType=application/xml, example=<null>
  <Status>aeiou</Status>
  <Message>aeiou</Message>
</null>}]
     - examples: [{contentType=application/json, example={
  "Status" : "Succeeded",
  "Message" : "Message",
  "Data" : [ {
    "Project" : "Project",
    "AvailableTasks" : [ {
      "IsDeleted" : true,
      "Label" : "Label",
      "Id" : 0
    }, {
      "IsDeleted" : true,
      "Label" : "Label",
      "Id" : 0
    } ],
    "IsDeleted" : true,
    "PermittedEmployees" : [ 6, 6 ],
    "ProjectId" : 5,
    "OrganisationId" : 2,
    "ClientId" : 5,
    "Id" : 1,
    "Client" : "Client",
    "Code" : "Code"
  }, {
    "Project" : "Project",
    "AvailableTasks" : [ {
      "IsDeleted" : true,
      "Label" : "Label",
      "Id" : 0
    }, {
      "IsDeleted" : true,
      "Label" : "Label",
      "Id" : 0
    } ],
    "IsDeleted" : true,
    "PermittedEmployees" : [ 6, 6 ],
    "ProjectId" : 5,
    "OrganisationId" : 2,
    "ClientId" : 5,
    "Id" : 1,
    "Client" : "Client",
    "Code" : "Code"
  } ]
}}, {contentType=application/xml, example=<null>
  <Status>aeiou</Status>
  <Message>aeiou</Message>
</null>}]
     
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 

     - returns: RequestBuilder<CsApiApiResponseListAggregateJobCode> 
     */
    open class func aggregateJobTasksGetAggregateJobTasksWithRequestBuilder(xChronosheetsAuth: String) -> RequestBuilder<CsApiApiResponseListAggregateJobCode> {
        let path = "/api/AggregateJobTasks/GetAggregateJobTasks"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<CsApiApiResponseListAggregateJobCode>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

}

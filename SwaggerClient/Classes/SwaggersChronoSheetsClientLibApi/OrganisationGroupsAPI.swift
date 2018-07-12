//
// OrganisationGroupsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class OrganisationGroupsAPI {
    /**
     Create an organisation group.    Requires the 'ManageOrganisationGroups' permissions.
     
     - parameter request: (body) An Insert OrganisationGroup Request object containing values for the new OrganisationGroup to create 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func organisationGroupsCreateOrganisationGroup(request: CSInsertOrganisationGroupRequest, xChronosheetsAuth: String, completion: @escaping ((_ data: CSApiResponseInt32?,_ error: Error?) -> Void)) {
        organisationGroupsCreateOrganisationGroupWithRequestBuilder(request: request, xChronosheetsAuth: xChronosheetsAuth).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create an organisation group.    Requires the 'ManageOrganisationGroups' permissions.
     - POST /api/OrganisationGroups/CreateOrganisationGroup
     - examples: [{contentType=application/json, example={
  "Status" : "Succeeded",
  "Message" : "Message",
  "Data" : 0
}}, {contentType=application/xml, example=<null>
  <Data>123</Data>
  <Status>aeiou</Status>
  <Message>aeiou</Message>
</null>}]
     - examples: [{contentType=application/json, example={
  "Status" : "Succeeded",
  "Message" : "Message",
  "Data" : 0
}}, {contentType=application/xml, example=<null>
  <Data>123</Data>
  <Status>aeiou</Status>
  <Message>aeiou</Message>
</null>}]
     
     - parameter request: (body) An Insert OrganisationGroup Request object containing values for the new OrganisationGroup to create 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 

     - returns: RequestBuilder<CSApiResponseInt32> 
     */
    open class func organisationGroupsCreateOrganisationGroupWithRequestBuilder(request: CSInsertOrganisationGroupRequest, xChronosheetsAuth: String) -> RequestBuilder<CSApiResponseInt32> {
        let path = "/api/OrganisationGroups/CreateOrganisationGroup"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request)

        let url = NSURLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<CSApiResponseInt32>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Get a particular organisation group.    Requires the 'ManageOrganisationGroups', 'ManageJobsAndTask', 'ManageClientsAndProjects' or 'ManageOrganisationUsers' permissions.
     
     - parameter organisationGroupId: (query) The ID of the OrganisationGroup you want to get 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func organisationGroupsGetOrganisationGroup(organisationGroupId: Int, xChronosheetsAuth: String, completion: @escaping ((_ data: CSApiResponseOrganisationGroup?,_ error: Error?) -> Void)) {
        organisationGroupsGetOrganisationGroupWithRequestBuilder(organisationGroupId: organisationGroupId, xChronosheetsAuth: xChronosheetsAuth).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a particular organisation group.    Requires the 'ManageOrganisationGroups', 'ManageJobsAndTask', 'ManageClientsAndProjects' or 'ManageOrganisationUsers' permissions.
     - GET /api/OrganisationGroups/GetOrganisationGroup
     - examples: [{contentType=application/json, example={
  "Status" : "Succeeded",
  "Message" : "Message",
  "Data" : {
    "IsDeleted" : true,
    "OrganisationGroupName" : "OrganisationGroupName",
    "OrganisationId" : 6,
    "Id" : 0
  }
}}, {contentType=application/xml, example=<null>
  <Status>aeiou</Status>
  <Message>aeiou</Message>
</null>}]
     - examples: [{contentType=application/json, example={
  "Status" : "Succeeded",
  "Message" : "Message",
  "Data" : {
    "IsDeleted" : true,
    "OrganisationGroupName" : "OrganisationGroupName",
    "OrganisationId" : 6,
    "Id" : 0
  }
}}, {contentType=application/xml, example=<null>
  <Status>aeiou</Status>
  <Message>aeiou</Message>
</null>}]
     
     - parameter organisationGroupId: (query) The ID of the OrganisationGroup you want to get 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 

     - returns: RequestBuilder<CSApiResponseOrganisationGroup> 
     */
    open class func organisationGroupsGetOrganisationGroupWithRequestBuilder(organisationGroupId: Int, xChronosheetsAuth: String) -> RequestBuilder<CSApiResponseOrganisationGroup> {
        let path = "/api/OrganisationGroups/GetOrganisationGroup"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "OrganisationGroupId": organisationGroupId.encodeToJSON()
        ])
        
        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<CSApiResponseOrganisationGroup>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get a collection of organisation groups that are under your organisation.    Requires the 'ManageOrganisationGroups', 'ManageJobsAndTask', 'ManageClientsAndProjects' or 'ManageOrganisationUsers' permissions.
     
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func organisationGroupsGetOrganisationGroups(xChronosheetsAuth: String, completion: @escaping ((_ data: CSApiResponseListOrganisationGroup?,_ error: Error?) -> Void)) {
        organisationGroupsGetOrganisationGroupsWithRequestBuilder(xChronosheetsAuth: xChronosheetsAuth).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a collection of organisation groups that are under your organisation.    Requires the 'ManageOrganisationGroups', 'ManageJobsAndTask', 'ManageClientsAndProjects' or 'ManageOrganisationUsers' permissions.
     - GET /api/OrganisationGroups/GetOrganisationGroups
     - examples: [{contentType=application/json, example={
  "Status" : "Succeeded",
  "Message" : "Message",
  "Data" : [ {
    "IsDeleted" : true,
    "OrganisationGroupName" : "OrganisationGroupName",
    "OrganisationId" : 6,
    "Id" : 0
  }, {
    "IsDeleted" : true,
    "OrganisationGroupName" : "OrganisationGroupName",
    "OrganisationId" : 6,
    "Id" : 0
  } ]
}}, {contentType=application/xml, example=<null>
  <Status>aeiou</Status>
  <Message>aeiou</Message>
</null>}]
     - examples: [{contentType=application/json, example={
  "Status" : "Succeeded",
  "Message" : "Message",
  "Data" : [ {
    "IsDeleted" : true,
    "OrganisationGroupName" : "OrganisationGroupName",
    "OrganisationId" : 6,
    "Id" : 0
  }, {
    "IsDeleted" : true,
    "OrganisationGroupName" : "OrganisationGroupName",
    "OrganisationId" : 6,
    "Id" : 0
  } ]
}}, {contentType=application/xml, example=<null>
  <Status>aeiou</Status>
  <Message>aeiou</Message>
</null>}]
     
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 

     - returns: RequestBuilder<CSApiResponseListOrganisationGroup> 
     */
    open class func organisationGroupsGetOrganisationGroupsWithRequestBuilder(xChronosheetsAuth: String) -> RequestBuilder<CSApiResponseListOrganisationGroup> {
        let path = "/api/OrganisationGroups/GetOrganisationGroups"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<CSApiResponseListOrganisationGroup>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get org groups for a particular job.    Requires the 'ManageOrganisationGroups', 'ManageJobsAndTask', 'ManageClientsAndProjects' or 'ManageOrganisationUsers' permissions.
     
     - parameter jobId: (query) The ID of the job 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func organisationGroupsGetOrganisationGroupsForJob(jobId: Int, xChronosheetsAuth: String, completion: @escaping ((_ data: CSApiResponseListOrganisationGroup?,_ error: Error?) -> Void)) {
        organisationGroupsGetOrganisationGroupsForJobWithRequestBuilder(jobId: jobId, xChronosheetsAuth: xChronosheetsAuth).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get org groups for a particular job.    Requires the 'ManageOrganisationGroups', 'ManageJobsAndTask', 'ManageClientsAndProjects' or 'ManageOrganisationUsers' permissions.
     - GET /api/OrganisationGroups/GetOrganisationGroupsForJob
     - examples: [{contentType=application/json, example={
  "Status" : "Succeeded",
  "Message" : "Message",
  "Data" : [ {
    "IsDeleted" : true,
    "OrganisationGroupName" : "OrganisationGroupName",
    "OrganisationId" : 6,
    "Id" : 0
  }, {
    "IsDeleted" : true,
    "OrganisationGroupName" : "OrganisationGroupName",
    "OrganisationId" : 6,
    "Id" : 0
  } ]
}}, {contentType=application/xml, example=<null>
  <Status>aeiou</Status>
  <Message>aeiou</Message>
</null>}]
     - examples: [{contentType=application/json, example={
  "Status" : "Succeeded",
  "Message" : "Message",
  "Data" : [ {
    "IsDeleted" : true,
    "OrganisationGroupName" : "OrganisationGroupName",
    "OrganisationId" : 6,
    "Id" : 0
  }, {
    "IsDeleted" : true,
    "OrganisationGroupName" : "OrganisationGroupName",
    "OrganisationId" : 6,
    "Id" : 0
  } ]
}}, {contentType=application/xml, example=<null>
  <Status>aeiou</Status>
  <Message>aeiou</Message>
</null>}]
     
     - parameter jobId: (query) The ID of the job 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 

     - returns: RequestBuilder<CSApiResponseListOrganisationGroup> 
     */
    open class func organisationGroupsGetOrganisationGroupsForJobWithRequestBuilder(jobId: Int, xChronosheetsAuth: String) -> RequestBuilder<CSApiResponseListOrganisationGroup> {
        let path = "/api/OrganisationGroups/GetOrganisationGroupsForJob"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "JobId": jobId.encodeToJSON()
        ])
        
        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<CSApiResponseListOrganisationGroup>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get org groups for a particular vehicle.    Requires the 'ManageOrganisationGroups', 'ManageFleet' or 'ManageOrganisationUsers' permissions.
     
     - parameter vehicleId: (query) The ID of the vehicle 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func organisationGroupsGetOrganisationGroupsForVehicle(vehicleId: Int, xChronosheetsAuth: String, completion: @escaping ((_ data: CSApiResponseListOrganisationGroup?,_ error: Error?) -> Void)) {
        organisationGroupsGetOrganisationGroupsForVehicleWithRequestBuilder(vehicleId: vehicleId, xChronosheetsAuth: xChronosheetsAuth).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get org groups for a particular vehicle.    Requires the 'ManageOrganisationGroups', 'ManageFleet' or 'ManageOrganisationUsers' permissions.
     - GET /api/OrganisationGroups/GetOrganisationGroupsForVehicle
     - examples: [{contentType=application/json, example={
  "Status" : "Succeeded",
  "Message" : "Message",
  "Data" : [ {
    "IsDeleted" : true,
    "OrganisationGroupName" : "OrganisationGroupName",
    "OrganisationId" : 6,
    "Id" : 0
  }, {
    "IsDeleted" : true,
    "OrganisationGroupName" : "OrganisationGroupName",
    "OrganisationId" : 6,
    "Id" : 0
  } ]
}}, {contentType=application/xml, example=<null>
  <Status>aeiou</Status>
  <Message>aeiou</Message>
</null>}]
     - examples: [{contentType=application/json, example={
  "Status" : "Succeeded",
  "Message" : "Message",
  "Data" : [ {
    "IsDeleted" : true,
    "OrganisationGroupName" : "OrganisationGroupName",
    "OrganisationId" : 6,
    "Id" : 0
  }, {
    "IsDeleted" : true,
    "OrganisationGroupName" : "OrganisationGroupName",
    "OrganisationId" : 6,
    "Id" : 0
  } ]
}}, {contentType=application/xml, example=<null>
  <Status>aeiou</Status>
  <Message>aeiou</Message>
</null>}]
     
     - parameter vehicleId: (query) The ID of the vehicle 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 

     - returns: RequestBuilder<CSApiResponseListOrganisationGroup> 
     */
    open class func organisationGroupsGetOrganisationGroupsForVehicleWithRequestBuilder(vehicleId: Int, xChronosheetsAuth: String) -> RequestBuilder<CSApiResponseListOrganisationGroup> {
        let path = "/api/OrganisationGroups/GetOrganisationGroupsForVehicle"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "VehicleId": vehicleId.encodeToJSON()
        ])
        
        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<CSApiResponseListOrganisationGroup>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Update an organisation group.    Requires the 'ManageOrganisationGroups' permissions.
     
     - parameter request: (body) A Save OrganisationGroup Request object containing updated fields.  Make sure to specify the OrganisationGroup Id in the request object so that ChronoSheets knows which OrganisationGroup to update 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func organisationGroupsUpdateOrganisationGroup(request: CSSaveOrganisationGroupRequest, xChronosheetsAuth: String, completion: @escaping ((_ data: CSApiResponseBoolean?,_ error: Error?) -> Void)) {
        organisationGroupsUpdateOrganisationGroupWithRequestBuilder(request: request, xChronosheetsAuth: xChronosheetsAuth).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Update an organisation group.    Requires the 'ManageOrganisationGroups' permissions.
     - PUT /api/OrganisationGroups/UpdateOrganisationGroup
     - examples: [{contentType=application/json, example={
  "Status" : "Succeeded",
  "Message" : "Message",
  "Data" : true
}}, {contentType=application/xml, example=<null>
  <Data>true</Data>
  <Status>aeiou</Status>
  <Message>aeiou</Message>
</null>}]
     - examples: [{contentType=application/json, example={
  "Status" : "Succeeded",
  "Message" : "Message",
  "Data" : true
}}, {contentType=application/xml, example=<null>
  <Data>true</Data>
  <Status>aeiou</Status>
  <Message>aeiou</Message>
</null>}]
     
     - parameter request: (body) A Save OrganisationGroup Request object containing updated fields.  Make sure to specify the OrganisationGroup Id in the request object so that ChronoSheets knows which OrganisationGroup to update 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 

     - returns: RequestBuilder<CSApiResponseBoolean> 
     */
    open class func organisationGroupsUpdateOrganisationGroupWithRequestBuilder(request: CSSaveOrganisationGroupRequest, xChronosheetsAuth: String) -> RequestBuilder<CSApiResponseBoolean> {
        let path = "/api/OrganisationGroups/UpdateOrganisationGroup"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request)

        let url = NSURLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<CSApiResponseBoolean>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

}

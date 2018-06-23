//
// ClientsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class ClientsAPI {
    /**
     Create a client
     
     - parameter request: (body)  
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func clientsCreateClient(request: CsApiInsertClientRequest, xChronosheetsAuth: String, completion: @escaping ((_ data: CsApiApiResponseInt32?,_ error: Error?) -> Void)) {
        clientsCreateClientWithRequestBuilder(request: request, xChronosheetsAuth: xChronosheetsAuth).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a client
     - PUT /api/Clients/CreateClient
     - examples: [{contentType=application/json, example={
  "Status" : 6,
  "Message" : "Message",
  "Data" : 0
}}, {contentType=application/xml, example=<null>
  <Data>123</Data>
  <Status>123</Status>
  <Message>aeiou</Message>
</null>}]
     - examples: [{contentType=application/json, example={
  "Status" : 6,
  "Message" : "Message",
  "Data" : 0
}}, {contentType=application/xml, example=<null>
  <Data>123</Data>
  <Status>123</Status>
  <Message>aeiou</Message>
</null>}]
     
     - parameter request: (body)  
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 

     - returns: RequestBuilder<CsApiApiResponseInt32> 
     */
    open class func clientsCreateClientWithRequestBuilder(request: CsApiInsertClientRequest, xChronosheetsAuth: String) -> RequestBuilder<CsApiApiResponseInt32> {
        let path = "/api/Clients/CreateClient"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request)

        let url = NSURLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<CsApiApiResponseInt32>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Get a particular client
     
     - parameter clientId: (query) The ID of the client you want to get 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func clientsGetClient(clientId: Int, xChronosheetsAuth: String, completion: @escaping ((_ data: CsApiApiResponseClient?,_ error: Error?) -> Void)) {
        clientsGetClientWithRequestBuilder(clientId: clientId, xChronosheetsAuth: xChronosheetsAuth).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a particular client
     - GET /api/Clients/GetClient
     - examples: [{contentType=application/json, example={
  "Status" : 0,
  "Message" : "Message",
  "Data" : {
    "ClientState" : "ClientState",
    "PersonOfContact" : "PersonOfContact",
    "OrganisationId" : 6,
    "ProjectCount" : 1,
    "ClientName" : "ClientName",
    "ClientPostCode" : "ClientPostCode",
    "ClientAddressLine2" : "ClientAddressLine2",
    "ClientAddressLine1" : "ClientAddressLine1",
    "ClientMobileNumber" : "ClientMobileNumber",
    "ClientWebURL" : "ClientWebURL",
    "Id" : 0,
    "ClientPhoneNumber" : "ClientPhoneNumber",
    "ClientEmailAddress" : "ClientEmailAddress",
    "ClientSuburb" : "ClientSuburb"
  }
}}, {contentType=application/xml, example=<null>
  <Status>123</Status>
  <Message>aeiou</Message>
</null>}]
     - examples: [{contentType=application/json, example={
  "Status" : 0,
  "Message" : "Message",
  "Data" : {
    "ClientState" : "ClientState",
    "PersonOfContact" : "PersonOfContact",
    "OrganisationId" : 6,
    "ProjectCount" : 1,
    "ClientName" : "ClientName",
    "ClientPostCode" : "ClientPostCode",
    "ClientAddressLine2" : "ClientAddressLine2",
    "ClientAddressLine1" : "ClientAddressLine1",
    "ClientMobileNumber" : "ClientMobileNumber",
    "ClientWebURL" : "ClientWebURL",
    "Id" : 0,
    "ClientPhoneNumber" : "ClientPhoneNumber",
    "ClientEmailAddress" : "ClientEmailAddress",
    "ClientSuburb" : "ClientSuburb"
  }
}}, {contentType=application/xml, example=<null>
  <Status>123</Status>
  <Message>aeiou</Message>
</null>}]
     
     - parameter clientId: (query) The ID of the client you want to get 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 

     - returns: RequestBuilder<CsApiApiResponseClient> 
     */
    open class func clientsGetClientWithRequestBuilder(clientId: Int, xChronosheetsAuth: String) -> RequestBuilder<CsApiApiResponseClient> {
        let path = "/api/Clients/GetClient"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "ClientId": clientId.encodeToJSON()
        ])
        
        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<CsApiApiResponseClient>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get a collection of clients that are under your organisation
     
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func clientsGetClients(xChronosheetsAuth: String, completion: @escaping ((_ data: CsApiApiResponseListClient?,_ error: Error?) -> Void)) {
        clientsGetClientsWithRequestBuilder(xChronosheetsAuth: xChronosheetsAuth).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a collection of clients that are under your organisation
     - GET /api/Clients/GetClients
     - examples: [{contentType=application/json, example={
  "Status" : 5,
  "Message" : "Message",
  "Data" : [ {
    "ClientState" : "ClientState",
    "PersonOfContact" : "PersonOfContact",
    "OrganisationId" : 6,
    "ProjectCount" : 1,
    "ClientName" : "ClientName",
    "ClientPostCode" : "ClientPostCode",
    "ClientAddressLine2" : "ClientAddressLine2",
    "ClientAddressLine1" : "ClientAddressLine1",
    "ClientMobileNumber" : "ClientMobileNumber",
    "ClientWebURL" : "ClientWebURL",
    "Id" : 0,
    "ClientPhoneNumber" : "ClientPhoneNumber",
    "ClientEmailAddress" : "ClientEmailAddress",
    "ClientSuburb" : "ClientSuburb"
  }, {
    "ClientState" : "ClientState",
    "PersonOfContact" : "PersonOfContact",
    "OrganisationId" : 6,
    "ProjectCount" : 1,
    "ClientName" : "ClientName",
    "ClientPostCode" : "ClientPostCode",
    "ClientAddressLine2" : "ClientAddressLine2",
    "ClientAddressLine1" : "ClientAddressLine1",
    "ClientMobileNumber" : "ClientMobileNumber",
    "ClientWebURL" : "ClientWebURL",
    "Id" : 0,
    "ClientPhoneNumber" : "ClientPhoneNumber",
    "ClientEmailAddress" : "ClientEmailAddress",
    "ClientSuburb" : "ClientSuburb"
  } ]
}}, {contentType=application/xml, example=<null>
  <Status>123</Status>
  <Message>aeiou</Message>
</null>}]
     - examples: [{contentType=application/json, example={
  "Status" : 5,
  "Message" : "Message",
  "Data" : [ {
    "ClientState" : "ClientState",
    "PersonOfContact" : "PersonOfContact",
    "OrganisationId" : 6,
    "ProjectCount" : 1,
    "ClientName" : "ClientName",
    "ClientPostCode" : "ClientPostCode",
    "ClientAddressLine2" : "ClientAddressLine2",
    "ClientAddressLine1" : "ClientAddressLine1",
    "ClientMobileNumber" : "ClientMobileNumber",
    "ClientWebURL" : "ClientWebURL",
    "Id" : 0,
    "ClientPhoneNumber" : "ClientPhoneNumber",
    "ClientEmailAddress" : "ClientEmailAddress",
    "ClientSuburb" : "ClientSuburb"
  }, {
    "ClientState" : "ClientState",
    "PersonOfContact" : "PersonOfContact",
    "OrganisationId" : 6,
    "ProjectCount" : 1,
    "ClientName" : "ClientName",
    "ClientPostCode" : "ClientPostCode",
    "ClientAddressLine2" : "ClientAddressLine2",
    "ClientAddressLine1" : "ClientAddressLine1",
    "ClientMobileNumber" : "ClientMobileNumber",
    "ClientWebURL" : "ClientWebURL",
    "Id" : 0,
    "ClientPhoneNumber" : "ClientPhoneNumber",
    "ClientEmailAddress" : "ClientEmailAddress",
    "ClientSuburb" : "ClientSuburb"
  } ]
}}, {contentType=application/xml, example=<null>
  <Status>123</Status>
  <Message>aeiou</Message>
</null>}]
     
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 

     - returns: RequestBuilder<CsApiApiResponseListClient> 
     */
    open class func clientsGetClientsWithRequestBuilder(xChronosheetsAuth: String) -> RequestBuilder<CsApiApiResponseListClient> {
        let path = "/api/Clients/GetClients"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<CsApiApiResponseListClient>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Update a client
     
     - parameter request: (body)  
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func clientsUpdateClient(request: CsApiSaveClientRequest, xChronosheetsAuth: String, completion: @escaping ((_ data: CsApiApiResponseBoolean?,_ error: Error?) -> Void)) {
        clientsUpdateClientWithRequestBuilder(request: request, xChronosheetsAuth: xChronosheetsAuth).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Update a client
     - POST /api/Clients/UpdateClient
     - examples: [{contentType=application/json, example={
  "Status" : 0,
  "Message" : "Message",
  "Data" : true
}}, {contentType=application/xml, example=<null>
  <Data>true</Data>
  <Status>123</Status>
  <Message>aeiou</Message>
</null>}]
     - examples: [{contentType=application/json, example={
  "Status" : 0,
  "Message" : "Message",
  "Data" : true
}}, {contentType=application/xml, example=<null>
  <Data>true</Data>
  <Status>123</Status>
  <Message>aeiou</Message>
</null>}]
     
     - parameter request: (body)  
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 

     - returns: RequestBuilder<CsApiApiResponseBoolean> 
     */
    open class func clientsUpdateClientWithRequestBuilder(request: CsApiSaveClientRequest, xChronosheetsAuth: String) -> RequestBuilder<CsApiApiResponseBoolean> {
        let path = "/api/Clients/UpdateClient"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request)

        let url = NSURLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<CsApiApiResponseBoolean>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

}

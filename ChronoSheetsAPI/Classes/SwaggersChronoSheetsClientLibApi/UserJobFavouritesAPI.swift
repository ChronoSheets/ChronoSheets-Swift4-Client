//
// UserJobFavouritesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class UserJobFavouritesAPI {
    /**
     Create a job favourite.    Requires the 'SubmitTimesheets' permission.
     
     - parameter request: (body) An Insert UserJobFavourite Request object containing values for the new UserJobFavourite to create 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func userJobFavouritesCreateJobFavourite(request: CSInsertUserJobFavouriteRequest, xChronosheetsAuth: String, completion: @escaping ((_ data: CSApiResponseInt32?,_ error: Error?) -> Void)) {
        userJobFavouritesCreateJobFavouriteWithRequestBuilder(request: request, xChronosheetsAuth: xChronosheetsAuth).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create a job favourite.    Requires the 'SubmitTimesheets' permission.
     - POST /UserJobFavourites/CreateJobFavourite
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
     
     - parameter request: (body) An Insert UserJobFavourite Request object containing values for the new UserJobFavourite to create 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 

     - returns: RequestBuilder<CSApiResponseInt32> 
     */
    open class func userJobFavouritesCreateJobFavouriteWithRequestBuilder(request: CSInsertUserJobFavouriteRequest, xChronosheetsAuth: String) -> RequestBuilder<CSApiResponseInt32> {
        let path = "/UserJobFavourites/CreateJobFavourite"
        let URLString = ChronoSheetsAPIAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<CSApiResponseInt32>.Type = ChronoSheetsAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Delete a job favourite.    Requires the 'SubmitTimesheets' permission.
     
     - parameter jobId: (query) The ID of the Job for the Job Favourite you want to delete. 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func userJobFavouritesDeleteJobFavourite(jobId: Int, xChronosheetsAuth: String, completion: @escaping ((_ data: CSApiResponseBoolean?,_ error: Error?) -> Void)) {
        userJobFavouritesDeleteJobFavouriteWithRequestBuilder(jobId: jobId, xChronosheetsAuth: xChronosheetsAuth).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete a job favourite.    Requires the 'SubmitTimesheets' permission.
     - DELETE /UserJobFavourites/DeleteJobFavourite
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
     
     - parameter jobId: (query) The ID of the Job for the Job Favourite you want to delete. 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 

     - returns: RequestBuilder<CSApiResponseBoolean> 
     */
    open class func userJobFavouritesDeleteJobFavouriteWithRequestBuilder(jobId: Int, xChronosheetsAuth: String) -> RequestBuilder<CSApiResponseBoolean> {
        let path = "/UserJobFavourites/DeleteJobFavourite"
        let URLString = ChronoSheetsAPIAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "JobId": jobId.encodeToJSON()
        ])
        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<CSApiResponseBoolean>.Type = ChronoSheetsAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get your job favourites.    Requires the 'SubmitTimesheets' permission.
     
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func userJobFavouritesGetJobFavourites(xChronosheetsAuth: String, completion: @escaping ((_ data: CSApiResponseListUserJobFavourite?,_ error: Error?) -> Void)) {
        userJobFavouritesGetJobFavouritesWithRequestBuilder(xChronosheetsAuth: xChronosheetsAuth).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get your job favourites.    Requires the 'SubmitTimesheets' permission.
     - GET /UserJobFavourites/GetJobFavourites
     - examples: [{contentType=application/json, example={
  "Status" : "Succeeded",
  "Message" : "Message",
  "Data" : [ {
    "Id" : 0,
    "JobId" : 6
  }, {
    "Id" : 0,
    "JobId" : 6
  } ]
}}, {contentType=application/xml, example=<null>
  <Status>aeiou</Status>
  <Message>aeiou</Message>
</null>}]
     - examples: [{contentType=application/json, example={
  "Status" : "Succeeded",
  "Message" : "Message",
  "Data" : [ {
    "Id" : 0,
    "JobId" : 6
  }, {
    "Id" : 0,
    "JobId" : 6
  } ]
}}, {contentType=application/xml, example=<null>
  <Status>aeiou</Status>
  <Message>aeiou</Message>
</null>}]
     
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 

     - returns: RequestBuilder<CSApiResponseListUserJobFavourite> 
     */
    open class func userJobFavouritesGetJobFavouritesWithRequestBuilder(xChronosheetsAuth: String) -> RequestBuilder<CSApiResponseListUserJobFavourite> {
        let path = "/UserJobFavourites/GetJobFavourites"
        let URLString = ChronoSheetsAPIAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<CSApiResponseListUserJobFavourite>.Type = ChronoSheetsAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

}

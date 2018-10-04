//
// OrganisationGroupUsersAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class OrganisationGroupUsersAPI {
    /**
     Get a collection of organisation group users that belong to an organisation group.    Requires the 'ManageOrganisationGroups' or 'ManageOrganisationUsers' permissions.
     
     - parameter orgGroupId: (query) An OrganisationGroup Id 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func organisationGroupUsersGetOrganisationGroupUsers(orgGroupId: Int, xChronosheetsAuth: String, completion: @escaping ((_ data: CSApiResponseListUserForManagement?,_ error: Error?) -> Void)) {
        organisationGroupUsersGetOrganisationGroupUsersWithRequestBuilder(orgGroupId: orgGroupId, xChronosheetsAuth: xChronosheetsAuth).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a collection of organisation group users that belong to an organisation group.    Requires the 'ManageOrganisationGroups' or 'ManageOrganisationUsers' permissions.
     - GET /api/OrganisationGroupUsers/GetOrganisationGroupUsers
     - examples: [{contentType=application/json, example={
  "Status" : "Succeeded",
  "Message" : "Message",
  "Data" : [ {
    "SetupWizardRequired" : true,
    "IsSubscribedToNewsletter" : true,
    "UserName" : "UserName",
    "Organisation" : {
      "Timezone" : "Timezone",
      "Suburb" : "Suburb",
      "IsActive" : true,
      "SubscriptionCustomerId" : "SubscriptionCustomerId",
      "SubscriptionCycleStart" : "2000-01-23T04:56:07.000+00:00",
      "Postcode" : "Postcode",
      "EmailAddress" : "EmailAddress",
      "Name" : "Name",
      "PricingPlans" : [ {
        "PlanId" : "PlanId",
        "Quantity" : 6
      }, {
        "PlanId" : "PlanId",
        "Quantity" : 6
      } ],
      "State" : "State",
      "Phone" : "Phone",
      "SubscriptionCycleEnd" : "2000-01-23T04:56:07.000+00:00",
      "AddressLine02" : "AddressLine02",
      "Country" : "Country",
      "Id" : 0,
      "AddressLine01" : "AddressLine01",
      "SignupToken" : "SignupToken"
    },
    "FirstName" : "FirstName",
    "OrganisationId" : 6,
    "Roles" : 1,
    "IsAccountActive" : true,
    "Id" : 0,
    "LastName" : "LastName",
    "AlertSettings" : 5,
    "EmailAddress" : "EmailAddress"
  }, {
    "SetupWizardRequired" : true,
    "IsSubscribedToNewsletter" : true,
    "UserName" : "UserName",
    "Organisation" : {
      "Timezone" : "Timezone",
      "Suburb" : "Suburb",
      "IsActive" : true,
      "SubscriptionCustomerId" : "SubscriptionCustomerId",
      "SubscriptionCycleStart" : "2000-01-23T04:56:07.000+00:00",
      "Postcode" : "Postcode",
      "EmailAddress" : "EmailAddress",
      "Name" : "Name",
      "PricingPlans" : [ {
        "PlanId" : "PlanId",
        "Quantity" : 6
      }, {
        "PlanId" : "PlanId",
        "Quantity" : 6
      } ],
      "State" : "State",
      "Phone" : "Phone",
      "SubscriptionCycleEnd" : "2000-01-23T04:56:07.000+00:00",
      "AddressLine02" : "AddressLine02",
      "Country" : "Country",
      "Id" : 0,
      "AddressLine01" : "AddressLine01",
      "SignupToken" : "SignupToken"
    },
    "FirstName" : "FirstName",
    "OrganisationId" : 6,
    "Roles" : 1,
    "IsAccountActive" : true,
    "Id" : 0,
    "LastName" : "LastName",
    "AlertSettings" : 5,
    "EmailAddress" : "EmailAddress"
  } ]
}}, {contentType=application/xml, example=<null>
  <Status>aeiou</Status>
  <Message>aeiou</Message>
</null>}]
     - examples: [{contentType=application/json, example={
  "Status" : "Succeeded",
  "Message" : "Message",
  "Data" : [ {
    "SetupWizardRequired" : true,
    "IsSubscribedToNewsletter" : true,
    "UserName" : "UserName",
    "Organisation" : {
      "Timezone" : "Timezone",
      "Suburb" : "Suburb",
      "IsActive" : true,
      "SubscriptionCustomerId" : "SubscriptionCustomerId",
      "SubscriptionCycleStart" : "2000-01-23T04:56:07.000+00:00",
      "Postcode" : "Postcode",
      "EmailAddress" : "EmailAddress",
      "Name" : "Name",
      "PricingPlans" : [ {
        "PlanId" : "PlanId",
        "Quantity" : 6
      }, {
        "PlanId" : "PlanId",
        "Quantity" : 6
      } ],
      "State" : "State",
      "Phone" : "Phone",
      "SubscriptionCycleEnd" : "2000-01-23T04:56:07.000+00:00",
      "AddressLine02" : "AddressLine02",
      "Country" : "Country",
      "Id" : 0,
      "AddressLine01" : "AddressLine01",
      "SignupToken" : "SignupToken"
    },
    "FirstName" : "FirstName",
    "OrganisationId" : 6,
    "Roles" : 1,
    "IsAccountActive" : true,
    "Id" : 0,
    "LastName" : "LastName",
    "AlertSettings" : 5,
    "EmailAddress" : "EmailAddress"
  }, {
    "SetupWizardRequired" : true,
    "IsSubscribedToNewsletter" : true,
    "UserName" : "UserName",
    "Organisation" : {
      "Timezone" : "Timezone",
      "Suburb" : "Suburb",
      "IsActive" : true,
      "SubscriptionCustomerId" : "SubscriptionCustomerId",
      "SubscriptionCycleStart" : "2000-01-23T04:56:07.000+00:00",
      "Postcode" : "Postcode",
      "EmailAddress" : "EmailAddress",
      "Name" : "Name",
      "PricingPlans" : [ {
        "PlanId" : "PlanId",
        "Quantity" : 6
      }, {
        "PlanId" : "PlanId",
        "Quantity" : 6
      } ],
      "State" : "State",
      "Phone" : "Phone",
      "SubscriptionCycleEnd" : "2000-01-23T04:56:07.000+00:00",
      "AddressLine02" : "AddressLine02",
      "Country" : "Country",
      "Id" : 0,
      "AddressLine01" : "AddressLine01",
      "SignupToken" : "SignupToken"
    },
    "FirstName" : "FirstName",
    "OrganisationId" : 6,
    "Roles" : 1,
    "IsAccountActive" : true,
    "Id" : 0,
    "LastName" : "LastName",
    "AlertSettings" : 5,
    "EmailAddress" : "EmailAddress"
  } ]
}}, {contentType=application/xml, example=<null>
  <Status>aeiou</Status>
  <Message>aeiou</Message>
</null>}]
     
     - parameter orgGroupId: (query) An OrganisationGroup Id 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 

     - returns: RequestBuilder<CSApiResponseListUserForManagement> 
     */
    open class func organisationGroupUsersGetOrganisationGroupUsersWithRequestBuilder(orgGroupId: Int, xChronosheetsAuth: String) -> RequestBuilder<CSApiResponseListUserForManagement> {
        let path = "/api/OrganisationGroupUsers/GetOrganisationGroupUsers"
        let URLString = ChronoSheetsAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "orgGroupId": orgGroupId.encodeToJSON()
        ])
        
        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<CSApiResponseListUserForManagement>.Type = ChronoSheetsAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Set the users who belong to an organisation group.    Requires the 'ManageOrganisationGroups' permissions.
     
     - parameter request: (body) A request object specifying which users belong to an organisation group.  Make sure to specify the OrganisationGroup Id in the request object so that ChronoSheets knows which OrganisationGroup to update. CsvUserIds is a comma separated list of User Ids, e.g. 1,2,3,4 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func organisationGroupUsersUpdateOrganisationGroupUsers(request: CSSetOrganisationGroupUsersRequest, xChronosheetsAuth: String, completion: @escaping ((_ data: CSApiResponseBoolean?,_ error: Error?) -> Void)) {
        organisationGroupUsersUpdateOrganisationGroupUsersWithRequestBuilder(request: request, xChronosheetsAuth: xChronosheetsAuth).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Set the users who belong to an organisation group.    Requires the 'ManageOrganisationGroups' permissions.
     - PUT /api/OrganisationGroupUsers/UpdateOrganisationGroupUsers
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
     
     - parameter request: (body) A request object specifying which users belong to an organisation group.  Make sure to specify the OrganisationGroup Id in the request object so that ChronoSheets knows which OrganisationGroup to update. CsvUserIds is a comma separated list of User Ids, e.g. 1,2,3,4 
     - parameter xChronosheetsAuth: (header) The ChronoSheets Auth Token 

     - returns: RequestBuilder<CSApiResponseBoolean> 
     */
    open class func organisationGroupUsersUpdateOrganisationGroupUsersWithRequestBuilder(request: CSSetOrganisationGroupUsersRequest, xChronosheetsAuth: String) -> RequestBuilder<CSApiResponseBoolean> {
        let path = "/api/OrganisationGroupUsers/UpdateOrganisationGroupUsers"
        let URLString = ChronoSheetsAPIAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request)

        let url = NSURLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            "x-chronosheets-auth": xChronosheetsAuth
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<CSApiResponseBoolean>.Type = ChronoSheetsAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

}

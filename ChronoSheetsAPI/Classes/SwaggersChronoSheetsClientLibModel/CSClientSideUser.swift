//
// CSClientSideUser.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct CSClientSideUser: Codable {

    public var _id: Int?
    public var organisationId: Int?
    public var userName: String?
    public var firstName: String?
    public var lastName: String?
    public var emailAddress: String?
    public var roles: Int64?
    public var alertSettings: Int64?
    public var setupWizardRequired: Bool?
    public var isSubscribedToNewsletter: Bool?
    public var organisation: CSOrganisation?
    public var isPrimaryAccount: Bool?

    public init(_id: Int?, organisationId: Int?, userName: String?, firstName: String?, lastName: String?, emailAddress: String?, roles: Int64?, alertSettings: Int64?, setupWizardRequired: Bool?, isSubscribedToNewsletter: Bool?, organisation: CSOrganisation?, isPrimaryAccount: Bool?) {
        self._id = _id
        self.organisationId = organisationId
        self.userName = userName
        self.firstName = firstName
        self.lastName = lastName
        self.emailAddress = emailAddress
        self.roles = roles
        self.alertSettings = alertSettings
        self.setupWizardRequired = setupWizardRequired
        self.isSubscribedToNewsletter = isSubscribedToNewsletter
        self.organisation = organisation
        self.isPrimaryAccount = isPrimaryAccount
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "Id"
        case organisationId = "OrganisationId"
        case userName = "UserName"
        case firstName = "FirstName"
        case lastName = "LastName"
        case emailAddress = "EmailAddress"
        case roles = "Roles"
        case alertSettings = "AlertSettings"
        case setupWizardRequired = "SetupWizardRequired"
        case isSubscribedToNewsletter = "IsSubscribedToNewsletter"
        case organisation = "Organisation"
        case isPrimaryAccount = "IsPrimaryAccount"
    }


}


//
// CsApiClientSideUser.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class CsApiClientSideUser: Codable {

    public var id: Int?
    public var organisationId: Int?
    public var userName: String?
    public var firstName: String?
    public var lastName: String?
    public var roles: Int64?
    public var alertSettings: Int64?
    public var setupWizardRequired: Bool?
    public var organisation: CsApiOrganisation?


    
    public init(id: Int?, organisationId: Int?, userName: String?, firstName: String?, lastName: String?, roles: Int64?, alertSettings: Int64?, setupWizardRequired: Bool?, organisation: CsApiOrganisation?) {
        self.id = id
        self.organisationId = organisationId
        self.userName = userName
        self.firstName = firstName
        self.lastName = lastName
        self.roles = roles
        self.alertSettings = alertSettings
        self.setupWizardRequired = setupWizardRequired
        self.organisation = organisation
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(id, forKey: "Id")
        try container.encodeIfPresent(organisationId, forKey: "OrganisationId")
        try container.encodeIfPresent(userName, forKey: "UserName")
        try container.encodeIfPresent(firstName, forKey: "FirstName")
        try container.encodeIfPresent(lastName, forKey: "LastName")
        try container.encodeIfPresent(roles, forKey: "Roles")
        try container.encodeIfPresent(alertSettings, forKey: "AlertSettings")
        try container.encodeIfPresent(setupWizardRequired, forKey: "SetupWizardRequired")
        try container.encodeIfPresent(organisation, forKey: "Organisation")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        id = try container.decodeIfPresent(Int.self, forKey: "Id")
        organisationId = try container.decodeIfPresent(Int.self, forKey: "OrganisationId")
        userName = try container.decodeIfPresent(String.self, forKey: "UserName")
        firstName = try container.decodeIfPresent(String.self, forKey: "FirstName")
        lastName = try container.decodeIfPresent(String.self, forKey: "LastName")
        roles = try container.decodeIfPresent(Int64.self, forKey: "Roles")
        alertSettings = try container.decodeIfPresent(Int64.self, forKey: "AlertSettings")
        setupWizardRequired = try container.decodeIfPresent(Bool.self, forKey: "SetupWizardRequired")
        organisation = try container.decodeIfPresent(CsApiOrganisation.self, forKey: "Organisation")
    }
}


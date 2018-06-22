//
// CsApiInsertOrganisationGroupRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class CsApiInsertOrganisationGroupRequest: Codable {

    public var organisationGroupName: String?
    public var organisationGroupUserIds: [Int]?


    
    public init(organisationGroupName: String?, organisationGroupUserIds: [Int]?) {
        self.organisationGroupName = organisationGroupName
        self.organisationGroupUserIds = organisationGroupUserIds
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(organisationGroupName, forKey: "OrganisationGroupName")
        try container.encodeIfPresent(organisationGroupUserIds, forKey: "OrganisationGroupUserIds")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        organisationGroupName = try container.decodeIfPresent(String.self, forKey: "OrganisationGroupName")
        organisationGroupUserIds = try container.decodeIfPresent([Int].self, forKey: "OrganisationGroupUserIds")
    }
}


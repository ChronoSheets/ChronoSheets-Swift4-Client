//
// CSAggregateJobCode.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class CSAggregateJobCode: Codable {

    public var availableTasks: [CSAggregateJobTask]?
    public var permittedEmployees: [Int]?
    public var id: Int?
    public var code: String?
    public var client: String?
    public var clientId: Int?
    public var project: String?
    public var projectId: Int?
    public var organisationId: Int?
    public var isDeleted: Bool?


    
    public init(availableTasks: [CSAggregateJobTask]?, permittedEmployees: [Int]?, id: Int?, code: String?, client: String?, clientId: Int?, project: String?, projectId: Int?, organisationId: Int?, isDeleted: Bool?) {
        self.availableTasks = availableTasks
        self.permittedEmployees = permittedEmployees
        self.id = id
        self.code = code
        self.client = client
        self.clientId = clientId
        self.project = project
        self.projectId = projectId
        self.organisationId = organisationId
        self.isDeleted = isDeleted
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(availableTasks, forKey: "AvailableTasks")
        try container.encodeIfPresent(permittedEmployees, forKey: "PermittedEmployees")
        try container.encodeIfPresent(id, forKey: "Id")
        try container.encodeIfPresent(code, forKey: "Code")
        try container.encodeIfPresent(client, forKey: "Client")
        try container.encodeIfPresent(clientId, forKey: "ClientId")
        try container.encodeIfPresent(project, forKey: "Project")
        try container.encodeIfPresent(projectId, forKey: "ProjectId")
        try container.encodeIfPresent(organisationId, forKey: "OrganisationId")
        try container.encodeIfPresent(isDeleted, forKey: "IsDeleted")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        availableTasks = try container.decodeIfPresent([CSAggregateJobTask].self, forKey: "AvailableTasks")
        permittedEmployees = try container.decodeIfPresent([Int].self, forKey: "PermittedEmployees")
        id = try container.decodeIfPresent(Int.self, forKey: "Id")
        code = try container.decodeIfPresent(String.self, forKey: "Code")
        client = try container.decodeIfPresent(String.self, forKey: "Client")
        clientId = try container.decodeIfPresent(Int.self, forKey: "ClientId")
        project = try container.decodeIfPresent(String.self, forKey: "Project")
        projectId = try container.decodeIfPresent(Int.self, forKey: "ProjectId")
        organisationId = try container.decodeIfPresent(Int.self, forKey: "OrganisationId")
        isDeleted = try container.decodeIfPresent(Bool.self, forKey: "IsDeleted")
    }
}

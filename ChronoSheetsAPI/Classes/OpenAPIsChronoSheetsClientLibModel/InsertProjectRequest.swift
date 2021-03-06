//
// InsertProjectRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Fields for inserting a new Project */
public struct InsertProjectRequest: Codable { 


    /** The Id of the Client that is associated with the new project */
    public var clientId: Int?
    /** The name of the new Project */
    public var projectName: String?
    /** The estimated cost of work to complete the project.  This value is used in the Organisation Reports view &#39;Project Costs&#39; */
    public var costEstimation: Double?
    /** The start date of the project.  When the project is due to start */
    public var startDate: Date?
    /** The end date of the project.  When the project is due to end */
    public var endDate: Date?

    public init(clientId: Int?, projectName: String?, costEstimation: Double?, startDate: Date?, endDate: Date?) {
        self.clientId = clientId
        self.projectName = projectName
        self.costEstimation = costEstimation
        self.startDate = startDate
        self.endDate = endDate
    }

    public enum CodingKeys: String, CodingKey { 
        case clientId = "ClientId"
        case projectName = "ProjectName"
        case costEstimation = "CostEstimation"
        case startDate = "StartDate"
        case endDate = "EndDate"
    }

}

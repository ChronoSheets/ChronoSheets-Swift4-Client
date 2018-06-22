//
// CsApiInsertVehicleRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class CsApiInsertVehicleRequest: Codable {

    public var name: String?
    public var costPerKilometer: Double?
    public var make: String?
    public var model: String?
    public var year: String?
    public var licencePlateNumber: String?
    public var linkedOrgGroupIds: [Int]?


    
    public init(name: String?, costPerKilometer: Double?, make: String?, model: String?, year: String?, licencePlateNumber: String?, linkedOrgGroupIds: [Int]?) {
        self.name = name
        self.costPerKilometer = costPerKilometer
        self.make = make
        self.model = model
        self.year = year
        self.licencePlateNumber = licencePlateNumber
        self.linkedOrgGroupIds = linkedOrgGroupIds
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(name, forKey: "Name")
        try container.encodeIfPresent(costPerKilometer, forKey: "CostPerKilometer")
        try container.encodeIfPresent(make, forKey: "Make")
        try container.encodeIfPresent(model, forKey: "Model")
        try container.encodeIfPresent(year, forKey: "Year")
        try container.encodeIfPresent(licencePlateNumber, forKey: "LicencePlateNumber")
        try container.encodeIfPresent(linkedOrgGroupIds, forKey: "LinkedOrgGroupIds")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        name = try container.decodeIfPresent(String.self, forKey: "Name")
        costPerKilometer = try container.decodeIfPresent(Double.self, forKey: "CostPerKilometer")
        make = try container.decodeIfPresent(String.self, forKey: "Make")
        model = try container.decodeIfPresent(String.self, forKey: "Model")
        year = try container.decodeIfPresent(String.self, forKey: "Year")
        licencePlateNumber = try container.decodeIfPresent(String.self, forKey: "LicencePlateNumber")
        linkedOrgGroupIds = try container.decodeIfPresent([Int].self, forKey: "LinkedOrgGroupIds")
    }
}


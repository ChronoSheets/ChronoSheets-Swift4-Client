//
// CSUpdateUserRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class CSUpdateUserRequest: Codable {

    public var userId: Int?
    public var emailAddress: String?
    public var firstName: String?
    public var lastName: String?
    public var isSubscribedToNewsletter: Bool?
    public var isAccountActive: Bool?
    public var roles: Int64?
    public var alertSettings: Int64?


    
    public init(userId: Int?, emailAddress: String?, firstName: String?, lastName: String?, isSubscribedToNewsletter: Bool?, isAccountActive: Bool?, roles: Int64?, alertSettings: Int64?) {
        self.userId = userId
        self.emailAddress = emailAddress
        self.firstName = firstName
        self.lastName = lastName
        self.isSubscribedToNewsletter = isSubscribedToNewsletter
        self.isAccountActive = isAccountActive
        self.roles = roles
        self.alertSettings = alertSettings
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(userId, forKey: "UserId")
        try container.encodeIfPresent(emailAddress, forKey: "EmailAddress")
        try container.encodeIfPresent(firstName, forKey: "FirstName")
        try container.encodeIfPresent(lastName, forKey: "LastName")
        try container.encodeIfPresent(isSubscribedToNewsletter, forKey: "IsSubscribedToNewsletter")
        try container.encodeIfPresent(isAccountActive, forKey: "IsAccountActive")
        try container.encodeIfPresent(roles, forKey: "Roles")
        try container.encodeIfPresent(alertSettings, forKey: "AlertSettings")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        userId = try container.decodeIfPresent(Int.self, forKey: "UserId")
        emailAddress = try container.decodeIfPresent(String.self, forKey: "EmailAddress")
        firstName = try container.decodeIfPresent(String.self, forKey: "FirstName")
        lastName = try container.decodeIfPresent(String.self, forKey: "LastName")
        isSubscribedToNewsletter = try container.decodeIfPresent(Bool.self, forKey: "IsSubscribedToNewsletter")
        isAccountActive = try container.decodeIfPresent(Bool.self, forKey: "IsAccountActive")
        roles = try container.decodeIfPresent(Int64.self, forKey: "Roles")
        alertSettings = try container.decodeIfPresent(Int64.self, forKey: "AlertSettings")
    }
}

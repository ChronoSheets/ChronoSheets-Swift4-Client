//
// CSUpdateMyProfileRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct CSUpdateMyProfileRequest: Codable {

    public var emailAddress: String?
    public var firstName: String?
    public var lastName: String?
    public var oldPassword: String?
    public var newPassword: String?
    public var confirmNewPassword: String?
    public var isSubscribedToNewsletter: Bool?
    public var wantsToChangePassword: Bool?

    public init(emailAddress: String?, firstName: String?, lastName: String?, oldPassword: String?, newPassword: String?, confirmNewPassword: String?, isSubscribedToNewsletter: Bool?, wantsToChangePassword: Bool?) {
        self.emailAddress = emailAddress
        self.firstName = firstName
        self.lastName = lastName
        self.oldPassword = oldPassword
        self.newPassword = newPassword
        self.confirmNewPassword = confirmNewPassword
        self.isSubscribedToNewsletter = isSubscribedToNewsletter
        self.wantsToChangePassword = wantsToChangePassword
    }

    public enum CodingKeys: String, CodingKey { 
        case emailAddress = "EmailAddress"
        case firstName = "FirstName"
        case lastName = "LastName"
        case oldPassword = "OldPassword"
        case newPassword = "NewPassword"
        case confirmNewPassword = "ConfirmNewPassword"
        case isSubscribedToNewsletter = "IsSubscribedToNewsletter"
        case wantsToChangePassword = "WantsToChangePassword"
    }


}


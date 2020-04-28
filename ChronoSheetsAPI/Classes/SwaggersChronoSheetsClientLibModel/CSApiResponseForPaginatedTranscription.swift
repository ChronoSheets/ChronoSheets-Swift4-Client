//
// CSApiResponseForPaginatedTranscription.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct CSApiResponseForPaginatedTranscription: Codable {

    public enum CSStatus: String, Codable { 
        case succeeded = "Succeeded"
        case fatalException = "FatalException"
        case generalError = "GeneralError"
        case validationError = "ValidationError"
        case unAuthorized = "UnAuthorized"
        case sessionExpired = "SessionExpired"
    }
    public var totalSetCount: Int?
    public var data: CSTranscription?
    public var status: CSStatus?
    public var message: String?

    public init(totalSetCount: Int?, data: CSTranscription?, status: CSStatus?, message: String?) {
        self.totalSetCount = totalSetCount
        self.data = data
        self.status = status
        self.message = message
    }

    public enum CodingKeys: String, CodingKey { 
        case totalSetCount = "TotalSetCount"
        case data = "Data"
        case status = "Status"
        case message = "Message"
    }


}

//
//  File.swift
//
//
//  Created by LiYan on 3/14/23.
//

import Foundation

public struct SolSignature: Equatable, Codable {
    public var requestId: String
    public var signature: String
    
    enum CodingKeys: String, CodingKey {
        case requestId = "request_id"
        case signature
    }
}

//
//  File.swift
//  
//
//  Created by Janis Kirsteins on 01/01/2022.
//


import Foundation
import XCTest

@testable import SotoCloudFront

/// Tests to check the formatting of various AWSRequest bodies
class CloudFrontHttpVersionTests: XCTestCase {
    func testCaseSensitiveDecoding() throws {
        struct Test : Codable {
            let lowercase: CloudFront.HttpVersion
            let uppercase: CloudFront.HttpVersion
        }
        
        var data = "{\"lowercase\": \"http2\", \"uppercase\": \"HTTP2\"}".data(using: .utf8)!
        var resp = try JSONDecoder().decode(Test.self, from: data)
        
        XCTAssertEqual(resp.lowercase, .http2)
        XCTAssertEqual(resp.uppercase, .http2)
        
        data = "{\"lowercase\": \"http1_1\", \"uppercase\": \"HTTP1_1\"}".data(using: .utf8)!
        resp = try JSONDecoder().decode(Test.self, from: data)
        
        XCTAssertEqual(resp.lowercase, .http11)
        XCTAssertEqual(resp.uppercase, .http11)
    }
}



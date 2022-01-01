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
            let http2: CloudFront.HttpVersion
            let http11: CloudFront.HttpVersion
        }
        
        let data = "{\"http2\": \"http2\", \"http11\": \"http1.1\"}".data(using: .utf8)!
        let resp = try JSONDecoder().decode(Test.self, from: data)
        
        XCTAssertEqual(resp.http2, .http2)
        XCTAssertEqual(resp.http11, .http11)
    }
}



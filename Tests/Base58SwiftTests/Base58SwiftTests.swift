import XCTest
@testable import Base58Swift

final class Base58SwiftTests: XCTestCase {
    func testBase58Encode() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        
        XCTAssertEqual(Base58.encode([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]),
                       "11111111111111111111111111111111")
        
        XCTAssertEqual(Base58.encode([131, 96, 57, 87, 20, 185, 5, 244, 103, 237, 145, 165, 116, 244, 182, 34, 94, 184, 65, 118, 186, 238, 29, 179, 119, 118, 194, 168, 135, 187, 14, 33]),
                       "9qqWYaVHgxtasTFvWgQoiDATARC6a3ZyZ8vohmg77CJC")
        
        XCTAssertEqual("StV1DL6CwTryKyV", Base58.encode("hello world".data(using: .utf8)!))
        
        
        XCTAssertEqual(Base58.decode("9qqWYaVHgxtasTFvWgQoiDATARC6a3ZyZ8vohmg77CJC").bytes(), [131, 96, 57, 87, 20, 185, 5, 244, 103, 237, 145, 165, 116, 244, 182, 34, 94, 184, 65, 118, 186, 238, 29, 179, 119, 118, 194, 168, 135, 187, 14, 33])
    }
}

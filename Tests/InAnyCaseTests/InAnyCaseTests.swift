import XCTest
@testable import InAnyCase

final class InAnyCaseTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(InAnyCase().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}

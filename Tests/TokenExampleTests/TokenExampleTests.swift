import XCTest
@testable import TokenExample

final class TokenExampleTests: XCTestCase {
    
    func testCell() {
        let cell = CustomTokenAttachmentCell()!
        var description = String()
        
        dump(cell, to: &description)
        
        XCTAssertTrue(description.contains("super: NSTokenAttachmentCell"))
        XCTAssertTrue(description.contains("super: NSTextAttachmentCell"))
        XCTAssertTrue(description.contains("super: NSCell"))
        XCTAssertTrue(description.contains("super: NSObject"))
        
    }


    static var allTests = [
        ("testCell", testCell),
    ]
}

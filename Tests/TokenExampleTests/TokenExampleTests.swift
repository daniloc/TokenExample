import XCTest
@testable import TokenExample

final class TokenExampleTests: XCTestCase {
    
    func testCell() {
        let cell = CustomTokenAttachmentCell()!
        
        let description = String(describing: dump(cell))
        
        XCTAssertTrue(description.contains("super: NSTokenAttachmentCell"))
        XCTAssertTrue(description.contains("super: NSTextAttachmentCell"))
        XCTAssertTrue(description.contains("super: NSCell"))
        XCTAssertTrue(description.contains("super: NSObject"))
        
    }


    static var allTests = [
        ("testCell", testCell),
    ]
}

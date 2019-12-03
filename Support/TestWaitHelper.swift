

import XCTest

extension XCTestCase {
    func waitForElementToAppear(_ element: XCUIElement, timeout: TimeInterval = 16, file: String = #file, line: Int = #line) {
        let existsPredicate = NSPredicate(format: "exists == true")
        
        expectation(for: existsPredicate,
                    evaluatedWith: element, handler: nil)
        
        waitForExpectations(timeout: timeout) { (error) -> Void in
            if error != nil {
                let message = "Failed to find \(element) after \(timeout) seconds."
                self.recordFailure(withDescription: message, inFile: file, atLine: line, expected: true)
            }
        }
    }
}

@discardableResult func waiting(for element: XCUIElement, timeout: TimeInterval = 16, file: String = #file, line: UInt = #line) -> XCUIElement? {
    let predicate = NSPredicate(format: "exists == true")
    let expectation = XCTNSPredicateExpectation(predicate: predicate,
                                                object: element)
    
    let result = XCTWaiter().wait(for: [expectation], timeout: timeout)
    switch result {
    case .completed:
        return element
    default:
        XCTFail("Failed to find element: \(element)")
        return nil
    }
}
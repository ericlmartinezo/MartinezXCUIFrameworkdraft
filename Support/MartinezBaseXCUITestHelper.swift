

import os.log
import XCTest

class MartinezBaseXCUITestHelper: XCTestCase {
    
    var application: XCUIApplication!
    
    override func setUp() {
        super.setUp()
        
        self.application = XCUIApplication()
        
        continueAfterFailure = false

        application.launch()
    }
    
    override func tearDown() {
        func pressHome() {
            XCUIDevice.shared.press(.home)
        }
    }
}
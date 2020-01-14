//
//  SampleXCUITestBaseClass.swift
//  SampleXCUITests
//
//  Created by Eric Martinez on 1/13/20.
//  Copyright © 2020 emobile. All rights reserved.
//

import Foundation
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

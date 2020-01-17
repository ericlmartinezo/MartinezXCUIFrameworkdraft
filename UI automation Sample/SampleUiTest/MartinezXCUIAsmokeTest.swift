//
//  MartinezXCUIAsmokeTest.swift
//  SampleXCUITests
//
//  Created by Eric Martinez on 1/13/20.
//  Copyright © 2020 emobile. All rights reserved.
//

import Foundation
import XCTest

class MartinezXCUIAsmokeTest: MartinezBaseXCUITestHelper {

    func testIncrementTotal() {
        
        given("I launch the App I validate all UI element appear") {
            incrementScreenElementValidation()
        }
        
        when("I increment the number to three") {
            typeDefaultUsernanme()
            incrementNumberTest()
        }
        
        then("I validate that the number has been increased") {
            assertTrueStaticTexts(text: "3")
        }
    }
}

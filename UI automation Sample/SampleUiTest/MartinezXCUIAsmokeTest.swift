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
        
        when("I enter the default username for testing") {
            typeDefaultUsernanme()
        }
        
        then("I increment the number to three") {
            incrementNumberTest()
        }
        
        and("I validate that the number has been increased") {
            assertTrueStaticTexts(text: "3")
        }
    }
    
    func testNavigateToSeconview() {
        
        given("I'm on the First View") {
            firstViewValidation()
        }
        
        when("I navigate to the second view") {
            navigateToSecondView()
        }
        
        then("I navigate back to the first view") {
            navigateBackToFirstView()
        }
        
    }
}

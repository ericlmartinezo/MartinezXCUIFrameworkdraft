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
//    SUDO CODE FOR DEMO
    func testSignInScreen() {

        given("I launch the App") {
            self.waitForElementToAppear(application.staticTexts["Hello World"])
        }

        when("I press Sign In button") {
            XCTAssertTrue(application.buttons["Sign In"].exists)
            application.tapIntroScreenButton(.signIn)
        }

        and("I should see") {
            assertTrueStaticTexts(text: "1")
            // Assert true the Screen that appears next : )
            // If there's a loading spinner you can use self.waitForElementToAppear
        }
    }
//    IN PROGRESS
    func testIncrementTotal() {
        
        given("I launch the App I validate all UI element appear") {
            incrementScreenElementValidation()
        }
        
        when("I increment the number to three") {
            incrementNumberTest()
        }
        
        then("I validate that the number has been increased") {
            assertTrueStaticTexts(text: "3")
        }
    }
}

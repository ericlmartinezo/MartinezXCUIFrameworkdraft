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
            self.waitForElementToAppear(application.staticTexts["Username"])
        }

        when("I validate Sign in screen Ui elements") {
            application.tapIntroScreenStaticTexts(.username)
            application.tapIntroScreenTextField(.username)
        }

        then("I press Sign In button") {
            XCTAssertTrue(application.buttons["Sign In"].exists)
            application.tapIntroScreenButton(.signIn)
        }

        and("I should see") {
            // Assert true the Screen that appears next : )
            // If there's a loading spinner you can use self.waitForElementToAppear
        }
    }
//    IN PROGRESS
    func testIncrementTotal() {
        
        given("I launch the App I increment the number to three") {
            incrementNumberTest()
        }
    }
}

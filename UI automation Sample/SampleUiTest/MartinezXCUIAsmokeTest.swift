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
//            assertTrueStaticTexts(object: "Sign In")
            application.tapIntroScreenButton(.signIn)
        }

        and("I should see") {
            // Assert true the Screen that appears next : )
            // If there's a loading spinner you can use self.waitForElementToAppear
        }
    }
    
    func testIncrementTotal() {
        assertTrueStaticTexts(text: "0")
        application.tapIntroScreenButton(.incrementTotal)
        application.tapIntroScreenButton(.signIn)
        application.tapIntroScreenButton(.incrementTotal)
        assertTrueStaticTexts(text: "3")
        sleep(3)
    }
}

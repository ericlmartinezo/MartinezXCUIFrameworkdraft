//
//  SignInScreenPageHelper.swift
//  SampleXCUITests
//
//  Created by Eric Martinez on 1/13/20.
//  Copyright © 2020 emobile. All rights reserved.
//

import Foundation
import XCTest

enum IntroScreenBarHelper: String {
    case username = "Username"
    case signIn = "Sign In"
    case incrementTotal = "Increment Total"
    

    func introScreenStaticTexts(in application: XCUIApplication) -> XCUIElement? {
        return application.staticTexts[self.rawValue]
    }
    
    func introScreenButton(in application: XCUIApplication) -> XCUIElement? {
        return application.buttons[self.rawValue]
    }

    func introTextField(in application: XCUIApplication) -> XCUIElement? {
    return application.textFields[self.rawValue]
    }
}

extension XCUIApplication {
    func tapIntroScreenStaticTexts(_ introScreenStaticTexts: IntroScreenBarHelper) {
        guard let element = introScreenStaticTexts.introScreenStaticTexts(in: self) else {
            XCTFail("failed to tap static text in Sign In screen")
            return
        }
        element.tap()
    }

    func tapIntroScreenButton(_ introScreenButton: IntroScreenBarHelper) {
        guard let element = introScreenButton.introScreenButton(in: self) else {
            XCTFail("failed to tap button in Sign In screen")
            return
        }
        element.tap()
    }

    func tapIntroScreenTextField(_ introTextField: IntroScreenBarHelper) {
        guard let element = introTextField.introTextField(in: self) else {
            XCTFail("failed to tap text field in Sign In screen")
            return
        }
        element.tap()
    }
}

// Step definitions
func incrementNumberTest() {
    assertTrueStaticTexts(text: "0")
    application.tapIntroScreenButton(.incrementTotal)
    application.tapIntroScreenButton(.signIn)
    application.tapIntroScreenButton(.incrementTotal)
    assertTrueStaticTexts(text: "3")
    sleep(3)
}

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
    case helloWorld = "Hello World"
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
func incrementScreenElementValidation() {
    assertTrueStaticTexts(text: "0")
    assertTrueButtons(name: IntroScreenBarHelper.incrementTotal.rawValue)
}

func incrementNumberTest() {
    application.tapIntroScreenButton(.incrementTotal)
    application.tapIntroScreenButton(.incrementTotal)
    application.tapIntroScreenButton(.incrementTotal)
    waiting(for: application.staticTexts["3"])
}

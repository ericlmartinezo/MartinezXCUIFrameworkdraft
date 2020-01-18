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
    case showSecondView = "Show Second View"
    case incrementTotal = "Increment Total"
    case defaultNumber = "0"
    case userName = "Username"
    case defaultNameEntry = "Eric"
    case defaultNameEntryResult = "Your username is: Eric"
    
    func introScreenStaticTexts(in application: XCUIApplication) -> XCUIElement? {
        return application.staticTexts[self.rawValue]
    }
    
    func introScreenButton(in application: XCUIApplication) -> XCUIElement? {
        return application.buttons[self.rawValue]
    }

    func introTextField(in application: XCUIApplication) -> XCUIElement? {
        return application.secureTextFields[self.rawValue]
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


// Write Page methods code below this line
// Like a Loop that taps the increment button three until it sees the number 3 

// write function tha validates all Ui elements on the first view

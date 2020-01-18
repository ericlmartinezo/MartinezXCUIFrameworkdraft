//
//  FirstVIewPageHelper.swift
//  SampleUiTest
//
//  Created by Eric Martinez on 1/18/20.
//  Copyright © 2020 emobile. All rights reserved.
//

import Foundation
//
//  SignInScreenPageHelper.swift
//  SampleXCUITests
//
//  Created by Eric Martinez on 1/13/20.
//  Copyright © 2020 emobile. All rights reserved.
//

import Foundation
import XCTest

enum FirstVIewPageHelper: String {
    case viewTitle = "              First View"
    case showSecondView = "                     Show Second View                            "
    case incrementTotal = "Increment Total"
    case defaultNumber = "0"
    case userName = "Username"
    case defaultNameEntry = "Eric"
    case defaultNameEntryResult = "Your username is: Eric"

    func firstViewStaticTexts(in application: XCUIApplication) -> XCUIElement? {
        return application.staticTexts[self.rawValue]
    }
    
    func firstViewButton(in application: XCUIApplication) -> XCUIElement? {
        return application.buttons[self.rawValue]
    }

    func firstViewTextField(in application: XCUIApplication) -> XCUIElement? {
        return application.secureTextFields[self.rawValue]
    }
}

extension XCUIApplication {
    func tapfirstViewStaticTexts(_ firstViewStaticTexts: FirstVIewPageHelper) {
        guard let element = firstViewStaticTexts.firstViewStaticTexts(in: self) else {
            XCTFail("failed to tap static text in Sign In screen")
            return
        }
        element.tap()
    }

    func tapfirstViewButton(_ firstViewButton: FirstVIewPageHelper) {
        guard let element = firstViewButton.firstViewButton(in: self) else {
            XCTFail("failed to tap button in Sign In screen")
            return
        }
        element.tap()
    }

    func tapfirstViewTextField(_ firstViewTextField: FirstVIewPageHelper) {
        guard let element = firstViewTextField.firstViewTextField(in: self) else {
            XCTFail("failed to tap text field in Sign In screen")
            return
        }
        element.tap()
    }
}


// Write Page methods code below this line
// Like a Loop that taps the increment button three until it sees the number 3

// write function tha validates all Ui elements on the first view

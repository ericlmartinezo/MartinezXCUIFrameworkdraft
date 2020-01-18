//
//  SecondVIewPageHelper.swift
//  SampleUiTest
//
//  Created by Eric Martinez on 1/18/20.
//  Copyright © 2020 emobile. All rights reserved.
//

import Foundation
import XCTest

enum SecondViewPageHelper: String {
    case secondViewTitle = "This is the second view"
    
    func secondViewStaticText(in application: XCUIApplication) -> XCUIElement? {
        return application.staticTexts[self.rawValue]
    }
}

extension XCUIApplication {
    
    func tapSecondViewStaticText(_ secondViewStaticText: SecondViewPageHelper) {
        guard let element = secondViewStaticText.secondViewStaticText(in: self) else {
            XCTFail("failed to tap Static text")
            return
        }
        element.tap()
    }

}

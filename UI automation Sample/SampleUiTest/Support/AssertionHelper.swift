//
//  AssertionHelper.swift
//  SampleXCUITests
//
//  Created by Eric Martinez on 1/13/20.
//  Copyright © 2020 emobile. All rights reserved.
//

import Foundation
import XCTest

var application = XCUIApplication()
    
    func assertTrueStaticTexts(text: String) {
            XCTAssertTrue(application.staticTexts[text].exists)
         }

    func assertTrueButtons(name: String) {
       XCTAssertTrue(application.buttons[name].exists)
     }

    func assertTrueTablesStaticText(object: String) {
       XCTAssertTrue(application.tables.staticTexts[object].exists)
     }

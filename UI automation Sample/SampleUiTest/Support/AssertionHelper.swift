//
//  AssertionHelper.swift
//  SampleXCUITests
//
//  Created by Eric Martinez on 1/13/20.
//  Copyright © 2020 emobile. All rights reserved.
//

import Foundation
import XCTest

var application: XCUIApplication!

func assertTrueStaticTexts(object: String) {
        XCTAssertTrue(application.staticTexts[object].exists)
     }

    func assertTrueButtons(object: String) {
       XCTAssertTrue(application.buttons[object].exists)
     }

    func assertTrueTablesStaticText(object: String) {
       XCTAssertTrue(application.tables.staticTexts[object].exists)
     }

 // Use case
// func testElementExists() {
   //  assertTrueStaticText(elementos: "Hello SwiftUI")
   //  assertTrueStaticText(elementos: "Second line")
   //  assertTrueStaticText(elementos: "Third line")
// }

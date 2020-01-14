//
//  AssertionHelper.swift
//  SampleXCUITests
//
//  Created by Eric Martinez on 1/13/20.
//  Copyright © 2020 emobile. All rights reserved.
//

import Foundation
import XCTest

func assertTrueStaticTexts(object: String) {
    XCTAssertTrue(application.staticTexts[elementos].exists)
 }


func assertTrueButtons(object: String) {
   XCTAssertTrue(application.buttons[elementos].exists)
 }

func assertTrueTablesStaticText(object: String) {
   XCTAssertTrue(application.tables.staticTexts[elementos].exists)
 }



 // Use case
// func testElementExists() {
   //  assertTrueStaticText(elementos: "Hello SwiftUI")
   //  assertTrueStaticText(elementos: "Second line")
   //  assertTrueStaticText(elementos: "Third line")
// }

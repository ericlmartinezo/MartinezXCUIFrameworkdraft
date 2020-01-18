//
//  TestIncrementNumber.swift
//  SampleUiTest
//
//  Created by Eric Martinez on 1/17/20.
//  Copyright © 2020 emobile. All rights reserved.
//

import Foundation
import XCTest

extension XCTestCase {
    func typeDefaultUsernanme() {
        application.tapfirstViewTextField(.userName)
        application.typeText(FirstVIewPageHelper.defaultNameEntry.rawValue)
        application/*@START_MENU_TOKEN@*/.buttons["Return"]/*[[".keyboards",".buttons[\"return\"]",".buttons[\"Return\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap() // Soft keyboard event needs its own helper
        assertTrueStaticTexts(text: FirstVIewPageHelper.defaultNameEntryResult.rawValue)
    }

    func incrementScreenElementValidation() {
        assertTrueStaticTexts(text: FirstVIewPageHelper.defaultNumber.rawValue)
        assertTrueButtons(name: FirstVIewPageHelper.incrementTotal.rawValue)
    }

    func incrementNumberTest() {
        application.tapfirstViewButton(.incrementTotal)
        application.tapfirstViewButton(.incrementTotal)
        application.tapfirstViewButton(.incrementTotal)
        waiting(for: application.staticTexts["3"])
    }
}

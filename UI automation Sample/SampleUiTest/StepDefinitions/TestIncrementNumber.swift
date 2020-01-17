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
        application.tapIntroScreenTextField(.userName)
        application.typeText(IntroScreenBarHelper.defaultNameEntry.rawValue)
        application/*@START_MENU_TOKEN@*/.buttons["Return"]/*[[".keyboards",".buttons[\"return\"]",".buttons[\"Return\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap() // Soft keyboard event needs its own helper
        assertTrueStaticTexts(text: IntroScreenBarHelper.defaultNameEntryResult.rawValue)
    }

    func incrementScreenElementValidation() {
        assertTrueStaticTexts(text: IntroScreenBarHelper.defaultNumber.rawValue)
        assertTrueButtons(name: IntroScreenBarHelper.incrementTotal.rawValue)
    }

    func incrementNumberTest() {
        application.tapIntroScreenButton(.incrementTotal)
        application.tapIntroScreenButton(.incrementTotal)
        application.tapIntroScreenButton(.incrementTotal)
        waiting(for: application.staticTexts["3"])
    }
}

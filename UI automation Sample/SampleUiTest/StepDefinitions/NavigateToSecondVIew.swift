//
//  NavigateToSecondVIew.swift
//  SampleUiTest
//
//  Created by Eric Martinez on 1/18/20.
//  Copyright © 2020 emobile. All rights reserved.
//

import Foundation
import XCTest

extension XCTestCase {
    
    func firstViewValidation() {
        self.waitForElementToAppear(IntroScreenBarHelper.showSecondView.introScreenButton(in: application.self)!)
    }
    
    func navigateToSecondView() {
        application.tapIntroScreenButton(.showSecondView)
        self.waitForElementToAppear(NavigationBarHelper.navBarBackButton.navBarButton(in: application.self)!)
        assertTrueStaticTexts(text: SecondViewPageHelper.secondViewTitle.rawValue)
    }
    
    func navigateBackToFirstView() {
        application.tapNavBarButton(.navBarBackButton)
        self.waitForElementToAppear(IntroScreenBarHelper.showSecondView.introScreenButton(in: application.self)!)
    }
}

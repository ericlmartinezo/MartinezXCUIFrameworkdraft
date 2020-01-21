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
        self.waitForElementToAppear(FirstVIewPageHelper.showSecondView.firstViewButton(in: application.self)!)
    }
    
    func navigateToSecondView() {
        application.tapfirstViewButton(.showSecondView)
        self.waitForElementToAppear(NavigationBarHelper.navBarBackButton.navBarButton(in: application.self)!)
        assertTrueStaticTexts(text: SecondViewPageHelper.secondViewTitle.rawValue)
    }
    
    func validateMoviesInTableView() {
        movieListInTable()
        application.findSecondViewTableStaticText(.propertyJoker)
        application.findSecondViewTableStaticText(.propertyJokerRelease)
    }
    
    func navigateBackToFirstView() {
        application.tapNavBarButton(.navBarBackButton)
        self.waitForElementToAppear(FirstVIewPageHelper.showSecondView.firstViewButton(in: application.self)!)
    }
}

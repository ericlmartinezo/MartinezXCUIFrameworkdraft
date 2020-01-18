//
//  NavigationBarHelper.swift
//  SampleUiTest
//
//  Created by Eric Martinez on 1/18/20.
//  Copyright © 2020 emobile. All rights reserved.
//

import Foundation
import XCTest

enum NavigationBarHelper: String {
    
    case navBarBackButton = "Back"
    
    func navBarButton(in application: XCUIApplication) -> XCUIElement? {
        return application.buttons[self.rawValue]
    }
}

extension XCUIApplication {
    
    func tapNavBarButton(_ navBarButton: NavigationBarHelper) {
        guard let element = navBarButton.navBarButton(in: self) else {
            XCTFail("failed to tap Navigation bar button")
            return
        }
        element.tap()
    }
}


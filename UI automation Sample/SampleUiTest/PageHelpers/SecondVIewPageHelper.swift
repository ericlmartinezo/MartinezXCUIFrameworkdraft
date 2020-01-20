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
    case propertyJoker = "Joker"
    case propertyJokerRelease = "2019"
    
    func secondViewStaticText(in application: XCUIApplication) -> XCUIElement? {
        return application.staticTexts[self.rawValue]
    }
    
    func secondViewTableStaticText(in application: XCUIApplication) -> XCUIElement? {
        return application.tables.staticTexts[self.rawValue]
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
    
    func findSecondViewTableStaticText(_ secondViewTableStaticText: SecondViewPageHelper) {
        guard let element = secondViewTableStaticText.secondViewTableStaticText(in: self) else {
            XCTFail("failed to find Table Static text")
            return
        }
        element.tap()
    }
}

func assertTrueTablesStaticText(_ movieInTable: String) {
    XCTAssertTrue(application.tables.staticTexts[movieInTable].exists)
}

func movieListInTable() {
    let moviesList = ["Joker", "Pulp Fiction", " The Godfather ", "The Dark Knight ",
                      "Fight Club", " Inception", "The Matrix ", "The Shawshank Redemption "]
    print(moviesList)
    for movie in moviesList {
        assertTrueTablesStaticText(movie)
    }
}



import Foundation
import XCTest

enum IntroScreenBarHelper: String {
    case username = "Username"
    case signIn = "Sign In"

    
    func introScreenStaticTexts(in application: XCUIApplication) -> XCUIElement? {
        return application.staticTexts[self.rawValue]
    }
    
    func introScreenButton(in application: XCUIApplication) -> XCUIElement? {
        return application.buttons[self.rawValue]
    }
}

extension XCUIApplication {
    func tapIntroScreenStaticTexts(_ introScreenStaticTexts: IntroScreenBarHelper) {
        guard let element = introScreenStaticTexts.introScreenStaticTexts(in: self) else {
            XCTFail("failed to tap static text in Sign In screen")
            return
        }
        element.tap()
    }

    func tapIntroScreenButton(_ introScreenButton: IntroScreenBarHelper) {
        guard let element = introScreenButton.introScreenButton(in: self) else {
            XCTFail("failed to tap button in Sign In screen")
            return
        }
        element.tap()
    }

}
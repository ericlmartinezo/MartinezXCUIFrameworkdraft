import Foundation
import XCTest

class MartinezXCUIAsmokeTest: MartinezBaseXCUITestHelper {
    
    func testSignInScreen() {

    	given("I launch the App") {
	    	self.waitForElementToAppear(application.staticTexts["Username"])
	    }

	    when("I validate Sign in screen Ui elements") {
	        application.tapIntroScreenStaticTexts(.username)
	        application.tapIntroScreenButton(.signIn)
	    }
    }
}
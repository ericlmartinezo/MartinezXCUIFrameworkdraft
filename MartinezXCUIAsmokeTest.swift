import Foundation
import XCTest

class MartinezXCUIAsmokeTest: MartinezBaseXCUITestHelper {
    
    func testSignInScreen() {

    	given("I launch the App") {
	    	self.waitForElementToAppear(application.staticTexts["Username"])
	    }

	    when("I validate Sign in screen Ui elements") {
	        application.tapIntroScreenStaticTexts(.username)
	    }

	    then("I press Sign In button") {
	    	XCTAssertTrue(application.button["Sign In"].exists)
	    	assertTrueTableStaticText(element: "Sign In")
	        application.tapIntroScreenButton(.signIn)
	    }

	    and("I should see") {
	    	// whatever screen in comes next : )
	    	// If there's a loading spinner you can use self.waitForElementToAppear 
	    }
    }
}


    func assertTrueStaticTexts(object: String) {
        XCTAssertTrue(application.staticTexts[elementos].exists)
     }


	func assertTrueButtons(object: String) {
	   XCTAssertTrue(application.buttons[elementos].exists)
     }

    func assertTrueTablesStaticText(object: String) {
	   XCTAssertTrue(application.tables.staticTexts[elementos].exists)
     }
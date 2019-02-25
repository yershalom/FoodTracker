//
//  FoodTrackerUITests.swift
//  FoodTrackerUITests
//
//  Created by Shalom Yerushalmy on 24/02/2019.
//  Copyright © 2019 Shalom Yerushalmy. All rights reserved.
//

import XCTest

class FoodTrackerUITests: XCTestCase {
    var app: XCUIApplication!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        app = XCUIApplication()
        app.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testAddButtonAndCancel() {
        app.navigationBars.buttons.element(boundBy: 1).tap();
        app.navigationBars.buttons.element(boundBy: 0).tap();
    }
    
    func testEditAndCancelButton() {
        app.navigationBars.buttons.element(boundBy: 0).tap();
        app.navigationBars.buttons.element(boundBy: 0).tap();
    }
    
    func testClickCell() {
        let meals = ["Caprese Salad", "Chicken and Potatoes", "Pasta with Meatballs"];
        for meal in meals {
            let tablesQuery = app.tables.cells.staticTexts[meal];
            tablesQuery.tap();
            XCTAssertTrue(app.textFields[meal].exists);
            app.navigationBars.buttons.element(boundBy: 0).tap();
        }
    }
}

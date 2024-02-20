//
//  DemouiUITests.swift
//  DemouiUITests
//
//  Created by Saritha Parsoya on 2/18/24.
//

import XCTest

final class DemouiUITests: DemouiUITestBase {
    
    func testLogin() {
        // Enter Username
        app.textFields["UserName"].tap()
        app.textFields["UserName"].typeText("Saritha")
        
        // Enter password
        app.secureTextFields["Password"].tap()
        app.secureTextFields["Password"].typeText("Password")
        
        // validate UserName, Password and LoginButton
        app.buttons["loginButton"].tap()
        XCTAssertTrue(app.staticTexts["LoggedInMessage"].exists, "User not logged in")
    }
    
    func testUserName() throws {
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        app.textFields["UserName"].tap()
        app.textFields["UserName"].typeText("Saritha")
        XCTAssertTrue(app.textFields["UserName"].exists)
    }
    
    func testPassword() throws {
        app.secureTextFields["Password"].tap()
        app.secureTextFields["Password"].typeText("Password")
        XCTAssertTrue(app.secureTextFields["Password"].exists)
    }
    
    func testLoginButtonExists() throws {
        XCTAssertTrue(app.buttons["loginButton"].exists)
    }

}

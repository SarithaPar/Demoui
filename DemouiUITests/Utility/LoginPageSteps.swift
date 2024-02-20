//
//  TestLogin.swift
//  DemouiUITests
//
//  Created by Saritha Parsoya on 2/19/24.
//

import Foundation
import XCTest

enum TestUserType: String {
    
    case userName
    case password
    case member, deactivate, nonmember
    
    var userType: String {
        switch self {
        case .userName:
            return "SP_name"
        case .password:
            return "password"
        case .member, .deactivate, .nonmember:
            return "inprocess"
        }
    }
    
}

class LoginPageSteps: DemouiUITestBase {
    
    func openLoginWindow() {
        let app = XCUIApplication()
        
        XCTContext.runActivity(named: "Open login window") { activity in
            let loginButton = app.buttons["Login"]
            XCTAssertTrue(loginButton.exists, "Login button is missing")
            XCTAssertTrue(loginButton.isHittable, "Login button is not hittable")
            XCTAssertFalse(app.staticTexts["Logged In"].exists, "User should not be logged in")
            
            loginButton.tap()
            
            let loginLabel = app.staticTexts["Login:"]
            XCTAssertTrue(loginLabel.waitForExistence(timeout: 3.0), "Login label is missing")
        }
    }
    
    func enterPassword(for userType: TestUserType) {
        let app = XCUIApplication()
        
        XCTContext.runActivity(named: "Enter password") { activity in
            let userNameTextField = app.textFields["user name"]
            userNameTextField.tap()
            userNameTextField.typeText(TestUserType.userName.rawValue)
            
            
            let passwordSecureTextField = app.secureTextFields["password"]
            passwordSecureTextField.tap()
            passwordSecureTextField.typeText(TestUserType.password.rawValue)
            
            // Dismiss keyboard.
            app.children(matching: .window).firstMatch.tap()
        }
    }
    
    func closeLoginWindow() {
        
        let app = XCUIApplication()
        
        XCTContext.runActivity(named: "Close login window") { activity in
            let submitLoginButton = app.buttons["Submit"]
            XCTAssertTrue(submitLoginButton.exists, "Submit button is missing.")
            XCTAssertTrue(submitLoginButton.isHittable, "Submit button is not hittable.")
            submitLoginButton.tap()
            XCTAssertTrue(app.staticTexts["Logged In"].waitForExistence(timeout: 3.0), "Logged In label is missing.")
        }
    }
    
}

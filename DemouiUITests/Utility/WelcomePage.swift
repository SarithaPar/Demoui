//
//  WelcomePage.swift
//  DemouiUITests
//
//  Created by Saritha Parsoya on 2/24/24.
//

import Foundation

class WelcomePage : DemouiUITestBase {
    
    func goToWelcomePage() {
        app.buttons["Registration"].waitForExistence(timeout: 5)
        app.buttons["Registration"].tap()
        app.staticTexts["Welcome"].waitForExistence(timeout: 5)
    }
}

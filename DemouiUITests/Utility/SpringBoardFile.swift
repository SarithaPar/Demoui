//
//  SpringBoardFile.swift
//  DemouiUITests
//
//  Created by Saritha Parsoya on 2/25/24.
//

/*
 SpringBoard: it is a standard application that manages the iPhone's home screen.
 Other tasks includes:
    - Starting WindowServer
    - Launching
    - Bootstrapping application
    - Setting device's settings on startup
 */

import Foundation
import XCTest

class SpringBoardFile {
    
    static let springboard = XCUIApplication(bundleIdentifier: "com.apple.springboard")
    
    class func deleteMyApp(testCase: DemouiUITestBase) {
        let icon = springboard.otherElements["Home screen icons"].icons["Demoui"]
        
        if icon.exists {
            icon.press(forDuration: 2)
            
            icon.buttons["DeleteButton"].tap()
            springboard.alerts.buttons["Delete"].waitForExistence(timeout: 5)
            springboard.alerts.buttons["Delete"].tap()
        }
    }
    
    
}

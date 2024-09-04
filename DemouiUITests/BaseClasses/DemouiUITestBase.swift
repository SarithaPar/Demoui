//
//  BaseClass.swift
//  DemouiUITests
//
//  Created by Saritha Parsoya on 2/19/24.
//

import Foundation
import XCTest

class DemouiUITestBase: XCTestCase {
    var app = XCUIApplication()
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch()
    }
    
    override func tearDown() {
        super.tearDown()
        app.terminate()
    }
}

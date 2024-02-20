//
//  DemouiUITestsLaunchTests.swift
//  DemouiUITests
//
//  Created by Saritha Parsoya on 2/18/24.
//

import XCTest

final class DemouiUITestsLaunchTests: XCTestCase {

    let app = XCUIApplication()
    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launch()
    }

    func testLaunch() throws {
        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}

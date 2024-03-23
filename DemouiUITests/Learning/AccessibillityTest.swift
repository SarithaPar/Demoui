//
//  AccessibillityTest.swift
//  DemouiUITests
//
//  Created by Saritha Parsoya on 2/28/24.
//

import XCTest

final class AccessibillityTest: DemouiUITestBase {

//    func testExample() throws {
//        if #available(iOS 17.2, *) {
//            try app.performAccessibilityAudit()
//        }
//    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}

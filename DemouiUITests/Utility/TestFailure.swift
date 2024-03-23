//
//  TestFailure.swift
//  DemouiUITests
//
//  Created by Saritha Parsoya on 2/25/24.
//

import Foundation
import XCTest

class TestFailure {
    
    // Create an issue for a test failure
    
    let issue = XCTIssue(
        type: .assertionFailure,
        compactDescription: "Unexpected result",
        detailedDescription: "The computed value was out of bounds.",
        sourceCodeContext: XCTSourceCodeContext(
            location: XCTSourceCodeLocation(
                fileURL: URL(fileURLWithPath: "MyTestFile.swift"),
                lineNumber: 42
            )
        ),
        associatedError: nil,
        attachments: []
    )
    
    // Add supporting data (attachments) to the issue if needed
//    let screenshotAttachment = XCTAttachment(screenshot: myScreenshot)
//    issue.add(screenshotAttachment)
}

//
//  WaitForElements.swift
//  DemouiUITests
//
//  Created by Saritha Parsoya on 2/25/24.
//

import Foundation
import XCTest

class WaitForElements : DemouiUITestBase {
    
    func waitforExistence(element: XCUIElement, file: String = #file, line: UInt = #line) {
        let exists = NSPredicate(format: "exists == trur")
        
        expectation(for: exists, evaluatedWith: element, handler: nil)
        waitForExpectations(timeout: 30) { (error) -> Void in
            if (error != nil) {
                let message = "Failed to find \(element) after 30 seconds."
                // recordFailure is deprecated. Use record() to report XCTIssue
                self.recordFailure(withDescription: message,
                                   inFile: file,
                                   atLine: Int(line),
                                   expected: true)
                
//                let location = XCTSourceCodeLocation(filePath: file, lineNumber: line)
//                let context = XCTSourceCodeContext(location: location)
//                self.record(XCTIssue(type: .assertionFailure,
//                                     compactDescription: message,
//                                    sourceCodeContext: context))
            }
        }
    }
}

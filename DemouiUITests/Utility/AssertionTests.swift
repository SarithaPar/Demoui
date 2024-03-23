//
//  AssertionTests.swift
//  DemouiUITests
//
//  Created by Saritha Parsoya on 2/25/24.
//

import Foundation
import XCTest


class AssertionTests: XCTestCase {
    func testExample() throws {
        assert(actual: 10, expected: 20) // asserts in method
        assert(actual: 10, expected: 11) // asserts in method
        assertInLine(actual: 10, expected: 11) // asserts in line
        assertInLine(actual: 10, expected: 11) // asserts in line
    }
}

extension AssertionTests {
    func assert(actual: Int, expected: Int) {
        XCTAssertEqual(actual, expected)
    }
    
    func assertInLine(actual: Int, expected: Int, filePath: String = #file, lineNumber: Int = #line) {
        if actual != expected {
            let location = XCTSourceCodeLocation(filePath: filePath, lineNumber: lineNumber)
            let context = XCTSourceCodeContext(location: location)
            let issue = XCTIssue(type: .assertionFailure,
                                 compactDescription: "\(actual) is not equal to \(expected)",
                                 detailedDescription: nil,
                                 sourceCodeContext: context,
                                 associatedError: nil,
                                 attachments: [])
            record(issue)
            
        }
    }
    
    func forwardFailure(
          withDescription description: String = "Something went wrong",
          inFile filePath: String = #file,
          atLine line: Int = #line,
          expected: Bool = false
      ) {
          self.recordFailure(
              withDescription: description,
              inFile: filePath,
              atLine: line,
              expected: expected
          )
      }
}

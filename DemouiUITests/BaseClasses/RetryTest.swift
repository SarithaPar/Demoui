//
//  RetryTest.swift
//  DemouiUITests
//
//  Created by Saritha Parsoya on 2/20/24.
//

import Foundation
import XCTest

// retry-tests-on-failure
//

class RetryTest {
    
    func retryTest(_ testCase: XCTestCase, maxAttempts: Int) {
        var attempt = 0
        
        while attempt < maxAttempts {
            do {
                try testCase.run()
                break
                
            } catch {
                print("Test failed (attempt \(attempt + 1)): \(error)")
                attempt += 1
            }
        }
    }
}




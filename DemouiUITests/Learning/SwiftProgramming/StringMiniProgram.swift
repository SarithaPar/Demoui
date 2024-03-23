//
//  StringMiniProgram.swift
//  DemouiUITests
//
//  Created by Saritha Parsoya on 2/29/24.
//

import XCTest

final class StringMiniProgram: DemouiUITestBase {

    func testStringPalindrome() {
        print(isPalindrome(str: "Rotator"))
        print(isPalindrome(str: "anna"))
        print(isPalindrome(str: "a"))
        print(isPalindrome(str: "aba"))
    }
    
    func isPalindrome(str: String) -> Bool {
        let characer = Array(str.lowercased())
        var lastIndex = characer.count - 1
        var firstIndex = 0
        
        while firstIndex < lastIndex {
            if characer[firstIndex] != characer[lastIndex] {
                return false
            }
            firstIndex += 1
            lastIndex -= 1
        }
        return true
    }

}

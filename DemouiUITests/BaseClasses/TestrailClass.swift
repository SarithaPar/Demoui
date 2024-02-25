//
//  TestrailClass.swift
//  DemouiUITests
//
//  Created by Saritha Parsoya on 2/20/24.
//

import Foundation
import XCTest

class Testrail {
//    
//    var testData
//   
    /*
    func fetchDataFromPlist() {
        guard let path = Bundle.main.path(forResource: "TestData", ofType: "plist") else {return}
        let url = URL(fileURLWithPath: path)
        let data = try! Data(contentsOf: url)
        guard let plist = try! PropertyListSerialization.propertyList(from: data, options: .mutableContainers, format: nil) as? [[String:String]] else {return}
        
//        let users = plist {
            let user = plist["TestRailUserName"] as? String
        let u = plist.value(forKey: "Tset")
        
            
//        }
        
        //print(plist)
    }
//    
    public func getTestRailCredential() -> (userName: String, password: String) {
        guard let path = Bundle.main.path(forResource: "TestData", ofType: "plist") else {return}
        let url = URL(fileURLWithPath: path)
        let data = try! Data(contentsOf: url)
        guard let plist = try! PropertyListSerialization.propertyList(from: data, options: .mutableContainers, format: nil) as? [[String:String]] else {return}
        
//        let userName1 = testData["user"] as? String
        
        let userName = testData.value(forKey: "TestRailUserName")
        let password = testData.encodedValue(forKey: "TestRailPassword")
        guard let user = userName else {
            XCTAssert(false, "TestRailUserName not found")
            return("", "")
        }
        guard let pass = password else {
            XCTAssert(false, "TestRailPassword not found")
            return("", "")
        }
        return (user, pass)
    }
    */
    
}

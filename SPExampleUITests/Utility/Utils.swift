//
//  Utils.swift
//  Demoui
//
//  Created by Saritha Parsoya on 2/29/24.
//

import Foundation
import XCTest


class Utils: NSObject{
    
    let filename = "UserLoginInfo"
    
    static func loadData(filename: String) -> [Any] {
        let filepath = Bundle(for: self).path(forResource: filename, ofType: "json") ?? "default"
        let url = URL(fileURLWithPath: filepath)
        do {
            let data = try Data(contentsOf: url)
            let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
            let array = json as! [Any]
            if array.isEmpty {
                XCTFail("Source file \(filename) is empty.")
            }
            
            return array
            
        } catch {
            XCTFail("File \(filename) not found.")
            return []
        }
    }
    

}

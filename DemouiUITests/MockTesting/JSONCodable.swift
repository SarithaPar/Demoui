//
//  JSONCodable.swift
//  DemouiUITests
//
//  Created by Saritha Parsoya on 1/12/25.
//

import Foundation

// sample JSON
let jsonUser = """
{"name":"Alice",
"age":25}
"""

// 1. Define the model conforming to codable
struct Person: Codable {
    var name : String
    var age : Int
}

// 2. Converts json to Data object (Same as Codable - decoder)
let jsonData = Data(jsonUser.utf8)

// 3. Decode the jsonData
let decoder = JSONDecoder()
do {
    let jsonBob = try decoder.decode(Person.self, from: jsonData)
    print(jsonBob.name)
} catch {
    print("Failed to decode JSON")
}

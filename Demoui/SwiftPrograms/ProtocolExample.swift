//
//  ProtocolExample.swift
//  Demoui
//
//  Created by Saritha Parsoya on 2/21/24.
//

import Foundation

/*
 Protocol: a blueprint of method and properties taht can be adopted by classes.
 */

protocol Greet {
    var name: String {get}
    func message()
}
class Employee: Greet {         // Employee class conforming to protocol, by implementing all the methods of Greet protocol
    var name = "Perry"
    func message() {
        print("Good")
    }
    func printMessage() {
        print(name)
    }
}

//let employee1 = Employee()
//employee1.message() // Output: Good Morning!
//print(employee1.printMessage())


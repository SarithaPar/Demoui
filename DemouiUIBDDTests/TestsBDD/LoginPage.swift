//
//  LoginPage.swift
//  DemouiUIBDDTests
//
//  Created by Saritha Parsoya on 2/19/24.
//

import Foundation

final class LoginTests: DemouiBDDUITestBase {

    var loginPage = LoginPageSteps()
    
    func testLogin() throws {
        loginPage.openLoginWindow()
        loginPage.enterPassword(for: .member)
        loginPage.closeLoginWindow()
    }

//    func testEmptyTableRowAndColumnCount() {
//        let table = Table()
//        XCTAssertEqual(table.rowCount, 0, "Row count is not zero")
//        XCTAssertEqual(table.columnCount, 0, "Column is not zero")
//    }

}

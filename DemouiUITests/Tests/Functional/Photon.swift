//
//  Photon.swift
//  DemouiUITests
//
//  Created by Saritha Parsoya on 2/20/24.
//

/* launch the app
 login to application
 see dropdown box - TV
 Switch in webview -
 - list of TV.
 - get the tv name  (input: samsung, tosiba)
 if the tv name match then
 - have a list of TV
 -if found go to details. else throw message
 */

import XCTest

final class Photon: XCTestCase {
    
    let app = XCUIApplication()
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launch()
    }

    func testFindTV(searchTVName: String) throws {
        // UI tests must launch the application that they test.
        // tap on picker dropdown to item named "TV"
        app.pickers["TV"].tap()
        // WebView page opens
        // Get the list of TV from webview
        let webView = app.windows.element
        
        // Search for static text
        let predicate = NSPredicate(format: "label CONTAINS[c] %@", searchTVName)
        let matchingElements = webView.staticTexts.containing(predicate)
        if matchingElements.count > 0 {
            // Found the TV
            let predicate = NSPredicate(format: "label CONTAINS[c] enjoy")
            let details = webView.staticTexts.containing(predicate)
            XCTAssertTrue(details.element.exists, "view details missing")
        }
    }

}

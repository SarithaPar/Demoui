//
//  ImageView.swift
//  DemouiUITests
//
//  Created by Saritha Parsoya on 2/20/24.
//

import Foundation
import XCTest

class ImageBaseClass : DemouiUITestBase {
    
    func getImage(imageName: String) -> XCUIElement? {
        let predicate = NSPredicate(format: "identifier == %@", imageName)
        let imageView = app.images.element(matching: predicate)
        if  imageView.exists {
            return imageView
        }
        return nil
    }
}

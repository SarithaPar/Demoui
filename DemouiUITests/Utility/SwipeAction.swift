//
//  SwipeAction.swift
//  DemouiUITests
//
//  Created by Saritha Parsoya on 2/24/24.
//

import Foundation
import XCTest

extension XCUIElement {
    enum Direction: Int {
        case up, down, left, right
    }

    func gentleSwipe(_ direction: Direction) {
        let half: CGFloat = 0.5
        let adjustment: CGFloat = 0.25
        let pressDuration: TimeInterval = 0.05

        let lessThanHalf = half - adjustment
        let moreThanHalf = half + adjustment

        let center = self.coordinate(withNormalizedOffset: CGVector(dx: half, dy: half))
        let aboveCenter = self.coordinate(withNormalizedOffset: CGVector(dx: half, dy: lessThanHalf))
        let belowCenter = self.coordinate(withNormalizedOffset: CGVector(dx: half, dy: moreThanHalf))
        let leftOfCenter = self.coordinate(withNormalizedOffset: CGVector(dx: lessThanHalf, dy: half))
        let rightOfCenter = self.coordinate(withNormalizedOffset: CGVector(dx: moreThanHalf, dy: half))

        switch direction {
            case .up:
                center.press(forDuration: pressDuration, thenDragTo: aboveCenter)
            case .down:
                center.press(forDuration: pressDuration, thenDragTo: belowCenter)
            case .left:
                center.press(forDuration: pressDuration, thenDragTo: leftOfCenter)
            case .right:
                center.press(forDuration: pressDuration, thenDragTo: rightOfCenter)
        }
    }
}

class SwipeAction : DemouiUITestBase {
 
    func scrollDownUntilElementFound(uiElement: XCUIElement, maxSwipe: Int = 10) {
        var swipeCount = 1
        while !uiElement.exists && swipeCount <= maxSwipe {
            app.gentleSwipe(.up)
            swipeCount += 1
        }
    }
}

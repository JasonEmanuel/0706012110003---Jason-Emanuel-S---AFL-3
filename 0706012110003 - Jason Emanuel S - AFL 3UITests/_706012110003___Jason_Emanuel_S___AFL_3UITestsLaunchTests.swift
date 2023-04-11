//
//  _706012110003___Jason_Emanuel_S___AFL_3UITestsLaunchTests.swift
//  0706012110003 - Jason Emanuel S - AFL 3UITests
//
//  Created by MacBook Pro on 11/04/23.
//

import XCTest

final class _706012110003___Jason_Emanuel_S___AFL_3UITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}

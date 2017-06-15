//
//  LocationTrackingTests.swift
//  LocationTrackingTests
//
//  Created by Shridhar Mali on 6/15/17.
//  Copyright © 2017 Shridhar Mali. All rights reserved.
//

import XCTest
@testable import LocationTracking

class LocationTests: XCTestCase {
    
    var sut: HomeViewController!
    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        sut = storyboard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        _ = sut.view
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    func testHomeViewController_LocationTrackingLabelShouldNotBeNil() {
        XCTAssertNotNil(sut.locationLbl)
    }
    func testHomeViewController_LocationEnbleDiableBtnShouldNotBeNil() {
        XCTAssertNotNil(sut.btnLocationUpdate)
    }
    func testHomeViewController_LocationManagerShouldNotBeNil() {
        XCTAssertNotNil(sut.locationManagerHelper)
    }
    func testHomeViewController_IsSetActionToLocationEnableDiableBtn() {
        XCTAssertNotNil(sut.enableLocationUpdates(sut.btnLocationUpdate))
    }
    func testHomeViewController_isLocationEnableDisableBtnDisabled() {
        XCTAssertFalse(sut.btnLocationUpdate.isOn)
    }

    
}

//
//  PhotonTestTests.swift
//  PhotonTestTests
//
//  Created by Puneetpal Singh on 07/02/24.
//

import XCTest
@testable import PhotonTest

class PhotonTestTests: XCTestCase {

    func testFetchSchools() {
        let viewModel = SchoolViewModel()
        let expectation = XCTestExpectation(description: "Fetch school from API")
        
        viewModel.fetchSchools()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            expectation.fulfill()
            XCTAssertFalse(viewModel.schools.isEmpty, "No Schools were fetched")
        }
        
        wait(for: [expectation], timeout: 10.0)
        
    }
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}

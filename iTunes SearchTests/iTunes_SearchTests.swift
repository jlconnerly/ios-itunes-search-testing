//
//  iTunes_SearchTests.swift
//  iTunes SearchTests
//
//  Created by Jake Connerly on 10/14/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import iTunes_Search

//what should we test
    // Does decoding work
    // does decoding fail when given bad data
    // does it build the correct URL
    // Are the results saved properly
    // is completion handler called if the networking fails
    // is the completion handler called if the data is bad
    // is the completion handler called if the data is good

class iTunes_SearchTests: XCTestCase {

    func testForSomeResults() {
        let controller = SearchResultController()
        let resultsExpetation = expectation(description: "Wait for results")
        controller.performSearch(for: "GarageBand", resultType: .software) {
            resultsExpetation.fulfill()
        }
        wait(for: [resultsExpetation], timeout: 2)
        
        XCTAssertTrue(controller.searchResults.count > 0, "Expecting at least one result for GarageBand")
    }

}

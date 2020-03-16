//
//  TrivagasTests.swift
//  TrivagasTests
//
//  Created by Trilogo Dev1 on 09/11/19.
//  Copyright © 2019 Trilogo. All rights reserved.
//

import XCTest
@testable import Trivagas

class OpportunityViewModelTests: XCTestCase {
    var viewModel: OpportunityViewModel?

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        viewModel = OpportunityViewModel()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_posted_1_day() {
        // Given
        let postedDays = 1
        
        // When
        var result = ""
        if let saveViewModel = viewModel {
            result = saveViewModel.formatPostedDays(postedDays)
        }
        
        // Then
        let expected = "1 dia atrás"
        XCTAssertEqual(result, expected)
    }

    func test_posted_3_days() {
        // Given
        let postedDays = 3
        
        // When
        var result = ""
        if let saveViewModel = viewModel {
            result = saveViewModel.formatPostedDays(postedDays)
        }
        
        // Then
        let expected = "3 dias atrás"
        XCTAssertEqual(result, expected)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}

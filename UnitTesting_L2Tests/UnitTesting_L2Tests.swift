//
//  UnitTesting_L2Tests.swift
//  UnitTesting_L2Tests
//
//  Created by Zach Mommaerts on 7/20/23.
//

import XCTest
@testable import UnitTesting_L2

final class UnitTesting_L2Tests: XCTestCase {
    
    var simpleMath: SimpleMath!
    
    override func setUp() {
        simpleMath = SimpleMath()
    }
    
    override func tearDown() {
        simpleMath = nil
    }

    func testAddTenWorks() {
        // Given - Arrange
        var expected: Int = 0
        
        // When - Act
        expected = simpleMath.addTen(10)
        
        // Then - Assert
        XCTAssert(expected == 20, "This should be 20")
        XCTAssertTrue(expected == 20)
        XCTAssertEqual(expected, 20, "This should be 20")
    }
    
    func testBeSquareSucceeds() {
        // Given
        var expected = 0
        
        // When
        expected = simpleMath.beSquare(4)
        
        // Then
        XCTAssertEqual(expected, 16)
    }
}

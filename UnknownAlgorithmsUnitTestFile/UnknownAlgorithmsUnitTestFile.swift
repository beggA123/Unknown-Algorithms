//
//  UnknownAlgorithmsUnitTestFile.swift
//  UnknownAlgorithmsUnitTestFile
//
//  Created by Begg, Alistair (AMM) on 30/11/2021.
//

import XCTest

class UnknownAlgorithmsUnitTestFile: XCTestCase {

    func testFirstAndLastReturnFirstPlusLastIntegers() {
        //arrange
        let algorithms = UnknownAlgorithms()
        let testCases = [([2,5,3,1,7], 9),
                         ([3,6,3,1], 4),
                         ([Int](), 0),
                         ([2], 4)]
        //act
        for testCase in testCases {
            let actual = algorithms.firstAndLast(testCase.0)
            //assert
            XCTAssertEqual(actual, testCase.1)
        }
    }
    
    func testFindModeReturnsModeOfSortedIntegerArray() {
        //arrange
        let algorithms = UnknownAlgorithms()
        let testCases = [([1,1,2,2,2,3,4,5,6], 2),
                         ([1,1,1,1,4,6], 1),
                         ([0,1,2,3,4], 4),
                         ([1,2,3,4,4,55], 4)]
        //act
        for testCase in testCases {
            let actual = algorithms.findMode(testCase.0)
            //assert
            XCTAssertEqual(actual, testCase.1)
        }
    }
}

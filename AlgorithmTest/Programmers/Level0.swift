//
//  Level0.swift
//  Algorithm
//
//  Created by KimDongWoo on 2/14/25.
//

import Testing

struct Level0 {
    @Test func multiplesOfNTest() {
        #expect(solution_MultiplesOfN(98, 2) == 1)
        #expect(solution_MultiplesOfN(34, 3) == 0)
    }
    
    @Test func moreSumTest() {
        #expect(solution_moreSum(9, 91) == 991)
    }
    
    @Test func compareOperationResultTest() {
        #expect(solution_CompareOperationResult(2, 91) == 364)
        #expect(solution_CompareOperationResult(91, 2) == 912)
    }
    
    @Test func commonMultipleTest() {
        #expect(solution_commonMultiple(60, 2, 3) == 1)
        #expect(solution_commonMultiple(55, 10, 5) == 0)
    }
    
    @Test func valueForEvenOrOddTest() {
//        #expect(solution_valueForEvenOrOdd(7) == 16)
        #expect(solution_valueForEvenOrOdd(10) == 220)
    }
}

//
//  CompareOperationResultTest.swift
//  Algorithm
//
//  Created by KimDongWoo on 2/14/25.
//


import Testing

struct CompareOperationResultTest {
    
    
    @Test func test() {
        #expect(solution_CompareOperationResult(2, 91) == 364)
        #expect(solution_CompareOperationResult(91, 2) == 912)
    }
}

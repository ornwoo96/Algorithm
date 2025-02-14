//
//  CompareOperationResult.swift
//  Algorithm
//
//  Created by KimDongWoo on 2/14/25.
//

import Foundation

func solution_CompareOperationResult(_ a:Int,
              _ b:Int) -> Int {
    return max(Int("\(a)\(b)")!,2*a*b)
}

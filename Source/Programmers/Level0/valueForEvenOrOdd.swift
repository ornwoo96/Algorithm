//
//  valueForEvenOrOdd.swift
//  Algorithm
//
//  Created by KimDongWoo on 2/14/25.
//

import Foundation

func solution_valueForEvenOrOdd(_ n: Int) -> Int {
    return (1...n).filter {
        $0 % 2 == n % 2 // n % 2  1인지 0인지 확인하여 또 현재 값 $0이 홀수 있지 짝 수 인지 필터 작업 진행
    }.map {
        n.isMultiple(of: 2) ? $0 * $0 : $0
    }.reduce(0, +)
}

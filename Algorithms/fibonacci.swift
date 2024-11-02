//
//  fibonacci.swift
//  Algorithm
//
//  Created by KimDongWoo on 11/2/24.
//

import Foundation

func fibonacci(_ n: Int) -> Int {
    if n <= 1 {
        return n
    } else {
        return fibonacci(n - 1) + fibonacci(n - 2) // O(2^n)
    }
}

let result = fibonacci(5) // n값이 증가하면 연산 시간이 급격히 증가
print(result) // 출력: 5

//
//  DP.swift
//  Algorithm
//
//  Created by KimDongWoo on 11/2/24.
//

//
// 동적 프로그래밍(Dynamic Programming, DP)
// - 문제를 작은 부분 문제로 나누고, 이 부분 문제들의 결과를 저장하여(메모이제이션) 동일한 계산을 반복하지 않고 문제를 해결하는 최적화 기법입니다.
// - 일반적으로 중복되는 하위 문제(sub-problems) 를 해결해야 하는 최적화 문제에서 사용됩니다.

// 동적 프로그래밍의 핵심 개념
// - 최적 부분 구조(Optimal Substructure): 큰 문제의 최적해가 작은 부분 문제들의 최적해로 구성될 수 있어야 합니다.
// - 중복되는 부분 문제(Overlapping Subproblems): 동일한 부분 문제가 여러 번 반복되어 나타나야 합니다.
// - 동적 프로그래밍은 이 두 특성을 만족하는 문제에서 사용되며, 중복 계산을 피하기 위해 부분 문제의 결과를 저장하고 재사용하는 것이 특징입니다.

// 동적 프로그래밍의 접근 방식
// - Top-Down 방식 (재귀적 + 메모이제이션): 큰 문제를 재귀적으로 나누어 작은 문제를 풀어나가며, 이미 계산된 값은 메모리에 저장하여 다시 계산하지 않습니다.
// - Bottom-Up 방식 (반복문 + 테이블화): 작은 문제부터 시작하여 차례대로 해결해가며, 테이블에 결과를 저장하고 큰 문제를 해결합니다.

import Foundation

// MARK: - 1. Top-Down 방식 (재귀적 + 메모이제이션)
var memo = [Int: Int]()

func fib(_ n: Int) -> Int {
    if n <= 1 { return n }  // 기저 조건
    if let result = memo[n] { return result }  // 이미 계산된 값이 있다면 반환
    
    memo[n] = fib(n - 1) + fib(n - 2)  // 결과 저장
    return memo[n]!
}

print(fib(10))  // 출력: 55


// MARK: - 2. Bottom-Up 방식 (반복문 + 테이블화)
func fib(_ n: Int) -> Int {
    if n <= 1 { return n }
    var dp = [0, 1] + Array(repeating: 0, count: n - 1)
    
    for i in 2...n {
        dp[i] = dp[i - 1] + dp[i - 2]
    }
    return dp[n]
}

print(fib(10))  // 출력: 55

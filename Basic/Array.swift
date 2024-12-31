//
//  Array.swift
//  Algorithm
//
//  Created by KimDongWoo on 12/31/24.
//

/// 1. 배열 (Array)
/// 문제
/// 정수 배열이 주어질 때, 배열에서 중복된 값을 제거하고 정렬된 결과를 반환하는 함수를 작성하세요.

// 예제 입력
let nums = [5, 3, 8, 3, 1, 5]

func removeDuplicatesAndSort(numbers: [Int]) -> [Int] {
    let uniqueNumbers = Set(numbers)
    return Array(uniqueNumbers).sorted() // 작은 수 -> 큰 수로 정렬
}

print("결과 : ",removeDuplicatesAndSort(numbers: nums))

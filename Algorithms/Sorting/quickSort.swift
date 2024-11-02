//
//  quickSort.swift
//  Algorithm
//
//  Created by KimDongWoo on 11/2/24.
//

// 퀵 정렬
// 퀵 정렬은 분할 정복(Divide and Conquer) 방식을 사용하여 리스트를 정렬합니다.
//
// 동작 원리
// 1. 배열에서 하나의 원소를 **피벗(pivot)**으로 선택합니다.
// 2. 피벗을 기준으로 작은 값은 왼쪽, 큰 값은 오른쪽으로 나눕니다.
// 3. 왼쪽과 오른쪽 부분 배열에 대해 재귀적으로 퀵 정렬을 수행합니다.
// 4. 재귀가 끝나면 전체 배열이 정렬됩니다.


// 시간 복잡도
// - 평균 시간 복잡도: O(n log n) – 각 단계에서 배열을 반씩 나누기 때문에 log n 단계를 거치며, 각 단계에서 최대 n번 비교합니다.
// - 최악 시간 복잡도: O(n^2) – 이미 정렬된 배열이나 피벗이 항상 최댓값 또는 최솟값으로 선택되면 성능이 떨어집니다.
// - 공간 복잡도: O(log n) – 재귀 호출로 인해 추가적인 공간이 필요합니다.

// 특징
// - 불안정 정렬 : 동일한 값의 상대적인 위치가 바뀔 수 있습니다.
// - 제자리 정렬 : 추가 메모리 사용이 거의 없습니다.

import Foundation

func quickSort(_ array: [Int]) -> [Int] {
    guard let first = array.first, array.count > 1 else { return array }
 
    let pivot = first
    let left = array.filter { $0 < pivot }
    let right = array.filter { $0 > pivot }
    
    return quickSort(left) + [pivot] + quickSort(right)
}

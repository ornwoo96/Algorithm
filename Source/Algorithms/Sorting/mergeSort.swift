//
//  mergeSort.swift
//  Algorithm
//
//  Created by KimDongWoo on 11/2/24.
//

// 병합 정렬
// 병합 정렬도 분할 정복 방식을 사용하여 리스트를 정렬합니다.
// 
// 동작 원리
// 1. 배열을 절반으로 잘라, 두 배열로 나눔 (배열의 갯수가 7같이 홀수일 경우, 3개&4개로 나눔)
// 2. 배열의 갯수가 1개 이하일 때까지 위 작업을 재귀함수로 반복함
// 3. 재귀 함수는 나눠진 두 배열을 합병 정렬을 이용해 정렬하고 리턴함
//
// 시간 복잡도
// - 평균 및 최악 시간 복잡도: O(n log n) – 매 단계에서 배열을 반으로 나누고, 각 단계에서 병합하는 데 O(n)의 시간이 소요됩니다.
// - 공간 복잡도: O(n) – 추가 배열을 사용하여 정렬하기 때문에 추가 메모리 공간이 필요합니다.
//
// 특징
// - 안정 정렬: 동일한 값의 상대적인 위치가 유지됩니다.
// - 비제자리 정렬: 추가적인 메모리 공간이 필요합니다.

import Foundation

// 병합 정렬 함수 정의
func mergeSort(_ array: [Int]) -> [Int] {
    // 배열의 크기가 1 이하인 경우 이미 정렬된 상태이므로 배열을 그대로 반환
    guard array.count > 1 else { return array }
    
    // 배열을 반으로 나누는 중간 인덱스를 찾음
    let middleIndex = array.count / 2
    
    // 왼쪽 절반을 재귀적으로 병합 정렬
    let leftArray = mergeSort(Array(array[0..<middleIndex]))
    
    // 오른쪽 절반을 재귀적으로 병합 정렬
    let rightArray = mergeSort(Array(array[middleIndex..<array.count]))
    
    // 정렬된 두 배열을 병합하여 반환
    return merge(leftArray, rightArray)
}

// 두 개의 정렬된 배열을 병합하는 함수
func merge(_ left: [Int], _ right: [Int]) -> [Int] {
    // 왼쪽, 오른쪽 배열의 인덱스와 결과 배열 초기화
    var leftIndex = 0
    var rightIndex = 0
    var orderedArray: [Int] = []
    
    // 왼쪽, 오른쪽 배열의 요소를 비교하면서 작은 값부터 결과 배열에 추가
    while leftIndex < left.count && rightIndex < right.count {
        if left[leftIndex] < right[rightIndex] {
            // 왼쪽 배열의 요소가 작으면 결과 배열에 추가하고 왼쪽 인덱스를 증가
            orderedArray.append(left[leftIndex])
            leftIndex += 1
        } else if left[leftIndex] > right[rightIndex] {
            // 오른쪽 배열의 요소가 작으면 결과 배열에 추가하고 오른쪽 인덱스를 증가
            orderedArray.append(right[rightIndex])
            rightIndex += 1
        } else {
            // 두 요소가 같으면 둘 다 결과 배열에 추가하고 인덱스를 각각 증가
            orderedArray.append(left[leftIndex])
            leftIndex += 1
            orderedArray.append(right[rightIndex])
            rightIndex += 1
        }
    }
    
    // 왼쪽 배열에 남은 요소가 있으면 결과 배열에 추가
    while leftIndex < left.count {
        orderedArray.append(left[leftIndex])
        leftIndex += 1
    }
    
    // 오른쪽 배열에 남은 요소가 있으면 결과 배열에 추가
    while rightIndex < right.count {
        orderedArray.append(right[rightIndex])
        rightIndex += 1
    }
    
    // 정렬된 결과 배열 반환
    return orderedArray
}

// 사용 예시
let array = [10, 7, 8, 9, 1, 5]
let sortedArray = mergeSort(array)

print(sortedArray)  // 출력: [1, 5, 7, 8, 9, 10]

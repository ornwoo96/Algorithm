//
//  GetMiddleString.swift
//  Algorithm
//
//  Created by KimDongWoo on 1/14/25.
//

func solution(_ s: String) -> String {
    let array = s.map { $0 }
    
    if (array.count % 2) == 0 {
        // 짝수 인 경우
        let firstMiddleIndex = (array.count / 2) - 1
        let secondMiddleIndex = array.count / 2
        
        return "\(array[firstMiddleIndex])\(array[secondMiddleIndex])"
    } else {
        // 홀수 인 경우
        let middleIndex = (array.count - 1) / 2
        return "\(array[middleIndex])"
    }
}

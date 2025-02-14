//
//  Inputs.swift
//  Algorithm
//
//  Created by KimDongWoo on 12/31/24.
//


// MARK: - 기본적인 입력처리

let input = readLine()! // 한 줄 입력 받기
print(input) // 입력된 내용을 출력


// MARK: - 공백으로 구분된 값 처리
let inputs = readLine()! // 10 20 30
print(inputs.split(separator: " ").map { Int($0)! }) // [10, 20, 30]


// MARK: - 쉼표나 특수 문자를 기준으로 나누기
let input = readLine()! // "10,20,30"
print(input.split(separator: ",").map { Int($0)! }) // [10, 20, 30]


// MARK: - 특정 라인 수만큼 입력 받기
let n = 3 // 입력 줄 수
var numbers = [Int]()

for _ in 0..<n {
    print("숫자를 입력하시오!")
    let num = Int(readLine()!)!
    numbers.append(num)
}

print(numbers) // [10, 20, 30]


// MARK: - 특정 종료 조건으로 입력 받기



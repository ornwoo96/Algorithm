//
//  ValidParentheses.swift
//  Algorithm
//
//  Created by KimDongWoo on 1/4/25.
//

//문제 설명
//괄호가 바르게 짝지어졌다는 것은 '(' 문자로 열렸으면 반드시 짝지어서 ')' 문자로 닫혀야 한다는 뜻입니다. 예를 들어
//
//"()()" 또는 "(())()" 는 올바른 괄호입니다.
//")()(" 또는 "(()(" 는 올바르지 않은 괄호입니다.
//'(' 또는 ')' 로만 이루어진 문자열 s가 주어졌을 때, 문자열 s가 올바른 괄호이면 true를 return 하고, 올바르지 않은 괄호이면 false를 return 하는 solution 함수를 완성해 주세요.
//
//제한사항
//문자열 s의 길이 : 100,000 이하의 자연수
//문자열 s는 '(' 또는 ')' 로만 이루어져 있습니다.
//입출력 예
//s    answer
//"()()"    true
//"(())()"    true
//")()("    false
//"(()("    false
//입출력 예 설명
//입출력 예 #1,2,3,4
//문제의 예시와 같습니다.


// 스택에 "(" 를 쌓아 놓고 ")"가 생기면 그 둘을 삭제
// 이후 스택에 뭐라도 남으면 false
// 비어있으면 true
func solution(_ s:String) -> Bool {
    var stack: [Character] = [] // "(" 만 가지고 있는 스택
    
    for string in s {
        if string == "(" {
            stack.append(string)
        } else {
            if stack.isEmpty {
                // 스택 내부엔 아무것도 없는데 ")" 값이 들어온 경우는 무조건 false
                return false
            }
            stack.removeLast() // 먼저 들어온 "(" 값 삭제
        }
    }
    
    return stack.isEmpty // stack 이 아무것도 없다면 올바른 괄호! true
}

//
//  9012번.swift
//  Algorithm
//
//  Created by 김동우 on 2022/07/04.
//

import Foundation

let startCount = Int(readLine()!)!

for _ in 1...startCount {
    var stack: [String] = []
    let input = String(readLine()!)
    
    for i in input {
        if i == "(" {
            stack.append(String(i))
        } else if i == ")" {
            if stack.last != "(" {
                stack.append(String(i))
            } else {
                stack.removeLast()
            }
        }
    }
    
    if stack.isEmpty {
        print("YES")
    } else {
        print("NO")
    }
}


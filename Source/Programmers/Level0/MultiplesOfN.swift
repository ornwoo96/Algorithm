//
//  MultiplesOfN.swift
//  Algorithm
//
//  Created by KimDongWoo on 2/14/25.
//

import Foundation

func solution_MultiplesOfN(_ num:Int, _ n:Int) -> Int {
    return num % n == 0 ? 1 : 0
}

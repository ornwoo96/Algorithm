//
//  CommonMultiple.swift
//  Algorithm
//
//  Created by KimDongWoo on 2/14/25.
//
import Foundation

func solution_commonMultiple(_ number:Int,
                             _ n:Int,
                             _ m:Int) -> Int {
    return number.isMultiple(of: n) && number.isMultiple(of: m) ? 1 : 0
}

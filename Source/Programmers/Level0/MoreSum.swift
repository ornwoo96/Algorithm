//
//  MoreSum.swift
//  Algorithm
//
//  Created by KimDongWoo on 2/14/25.
//
import Foundation

func solution_moreSum(_ a: Int,
              _ b: Int) -> Int {
    return max(Int("\(a)\(b)")!, Int("\(b)\(a)")!)
}


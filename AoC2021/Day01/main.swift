//
//  main.swift
//  Day01
//
//  Created by Bence Tóth on 2021. 12. 22..
//

import Foundation

func solve1(input: [Int]) -> Int {
    var result = 0
    for i in 0 ..< input.count - 1 {
        if input[i] < input[i + 1] {
            result += 1
        }
    }
    return result
}

func solve2(input: [Int]) -> Int {
    var result = 0
    for i in 0 ..< input.count - 3 {
        if input[i] + input[i + 1] + input[i + 2] < input[i + 1] + input[i + 2] + input[i + 3] {
            result += 1
        }
    }
    return result
}

print(solve1(input: Input.input))
print(solve2(input: Input.input))

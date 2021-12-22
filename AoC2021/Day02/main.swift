//
//  main.swift
//  Day02
//
//  Created by Bence Tóth on 2021. 12. 22..
//

import Foundation

enum Direction: String {
    case forward, up, down
}

struct Command {
    var direction: Direction
    var value: Int
    
    init(_ source: [String]) {
        self.direction = Direction(rawValue: source[0])!
        self.value = Int(source[1])!
    }
}

func solve1(input: [[String]]) -> Int {
    var forward = 0
    var depth = 0
    
    for command in input {
        let cmd = Command(command)
        switch cmd.direction {
        case .forward:
            forward += cmd.value
        case .up:
            depth -= cmd.value
        case .down:
            depth += cmd.value
        }
    }
    return forward * depth
}

func solve2(input: [[String]]) -> Int {
    var forward = 0
    var depth = 0
    var aim = 0
    
    for command in input {
        let cmd = Command(command)
        switch cmd.direction {
        case .forward:
            forward += cmd.value
            depth += aim * cmd.value
        case .up:
            aim -= cmd.value
        case .down:
            aim += cmd.value
        }
    }
    return forward * depth
}

print(solve1(input: Input.input))
print(solve2(input: Input.input))

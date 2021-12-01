//
//  Puzzle.swift
//  AoC 2021
//
//  Created by Bence Tóth on 2021. 11. 30..
//

import Foundation

struct Puzzle: Identifiable {
    var id: Int
    var day: Int
    var title: String
    var problemDescription: String
    var numberOfStars: Int
    var sourceFileName: String
}

protocol PuzzleDelegate {
    func solveDay1(puzzle: Puzzle)
    func solveDay2(puzzle: Puzzle)
}

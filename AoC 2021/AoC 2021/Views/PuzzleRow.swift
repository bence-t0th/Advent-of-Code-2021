//
//  PuzzleRow.swift
//  AoC 2021
//
//  Created by Bence Tóth on 2021. 11. 30..
//

import SwiftUI

struct PuzzleRow: View {
    var puzzle: Puzzle
    
    var body: some View {
        HStack {
            Text("🌲")
                .font(.system(size: 36))
            Spacer()
                .frame(width: 16)
            VStack {
                HStack {
                    Text("Day \(puzzle.day): \(puzzle.title)")
                        .foregroundColor(Color("header"))
                        .lineLimit(1)
                    Spacer()
                }

                HStack {
                    Text(drawStars(puzzle.numberOfStars))
                        .foregroundColor(.red)
                    Spacer()
                }
            }
            Spacer()
        }
        .padding([.top, .bottom], 8)
    }
}

func drawStars(_ stars: Int) -> String {
    if stars == 0 {
        return "Not solved yet"
    }
    var str = ""
    for _ in 0..<stars {
        str += "⭐"
    }
    return str
}

struct PuzzleRow_Previews: PreviewProvider {
    static var previews: some View {
        PuzzleRow(puzzle: Puzzle(id: 0, day: 1, title: "First day", problemDescription: "placeholder", numberOfStars: 2, sourceFileName: "placeholder"))
    }
}

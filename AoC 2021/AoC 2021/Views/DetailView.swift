//
//  DetailView.swift
//  AoC 2021
//
//  Created by Bence Tóth on 2021. 11. 30..
//

import SwiftUI

struct DetailView: View {
    var puzzle: Puzzle
    
    var body: some View {
        List {
            Text("Hello, World!")
        }
        .navigationTitle("Day \(puzzle.day)")
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(puzzle: Puzzle(id: 0, day: 1, title: "First day", problemDescription: "placeholder", numberOfStars: 1, sourceFileName: "placeholder"))
    }
}

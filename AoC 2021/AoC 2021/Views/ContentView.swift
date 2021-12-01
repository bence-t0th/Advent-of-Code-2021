//
//  ContentView.swift
//  AoC 2021
//
//  Created by Bence Tóth on 2021. 11. 30..
//

import SwiftUI

let puzzles = [Puzzle(id: 0, day: 1, title: "First day", problemDescription: "placeholder", numberOfStars: 1, sourceFileName: "placeholder"), Puzzle(id: 1, day: 1, title: "First day", problemDescription: "placeholder", numberOfStars: 1, sourceFileName: "placeholder"), Puzzle(id: 2, day: 1, title: "First day", problemDescription: "placeholder", numberOfStars: 1, sourceFileName: "placeholder")]

struct ContentView: View {
    
    init() {
        UITableView.appearance().backgroundColor = UIColor(named: "background")
        UITableViewCell.appearance().backgroundColor = .green
    }
    
    var body: some View {
        
        NavigationView {
            List(puzzles) { puzzle in
                NavigationLink(destination: DetailView(puzzle: puzzle)) {
                    PuzzleRow(puzzle: puzzle)
                }
                .listRowBackground(Color.clear)
            }
            .navigationTitle("Solutions")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}

extension UINavigationController {
    override open func viewDidLoad() {
        super.viewDidLoad()

        let standard = UINavigationBarAppearance()
        standard.backgroundColor = UIColor(named: "background")?.withAlphaComponent(0.5)
        standard.largeTitleTextAttributes = [.foregroundColor: UIColor(named: "header")!]
        standard.titleTextAttributes = [.foregroundColor: UIColor(named: "header")!]
        
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor(named: "background")
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor(named: "header")!]
        appearance.titleTextAttributes = [.foregroundColor: UIColor(named: "header")!]
    
        navigationBar.standardAppearance = standard
        navigationBar.compactAppearance = appearance
        navigationBar.scrollEdgeAppearance = appearance
    }
}

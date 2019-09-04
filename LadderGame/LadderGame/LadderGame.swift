//
//  LadderGame.swift
//  LadderGame
//
//  Created by MJ.KONG-MAC on 2019/09/04.
//  Copyright © 2019 Codesquad Inc. All rights reserved.
//

import Foundation

struct LadderGame {
    private var heightOfLadders: Int
    
    var ladders : Array<Array<Bool>> = []
    var playerNames: [LadderPlayer]
    
    init(players: [LadderPlayer], ladders: Int) {
        playerNames = players
        heightOfLadders = ladders
    }
    
    mutating func makeLadders() {
        for _ in 1...heightOfLadders {
            var line : Array<Bool> = []
            for _ in 1..<playerNames.count {
                let random = Int.random(in: 0...1)
                line.append(random == 1)
            }
            ladders.append(line)
        }
        printLadders()
    }
    
    private func printLadders() {
        for line in ladders {
            print("|", terminator: "")
            for step in line {
                if step {
                    print("------", terminator: "")
                }
                else {
                    print("      ", terminator: "")
                }
                print("|", terminator: "")
            }
            print("")
        }
    }
}

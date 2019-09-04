//
//  ResultView.swift
//  LadderGame
//
//  Created by MJ.KONG-MAC on 2019/09/04.
//  Copyright © 2019 Codesquad Inc. All rights reserved.
//

import Foundation

struct ResultView {
    
    private var ladders: [[Bool]] = []
    private var players: [LadderPlayer] = []
    
    init(ladders: [[Bool]], players: [LadderPlayer]) {
        self.ladders = ladders
        self.players = players
    }
    
    func printOutput() {
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
        printPlayers()
    }
    
    func printPlayers() {
        for playerName in players {
            print("\(playerName.name) ", terminator: "")
        }
        print("")
    }
}

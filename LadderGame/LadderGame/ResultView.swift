//
//  ResultView.swift
//  LadderGame
//
//  Created by jang gukjin on 12/04/2019.
//  Copyright © 2019 Codesquad Inc. All rights reserved.
//

import Foundation

/// 결과를 출력하는 구조체
struct ResultView {
    func printLayerOfLadder(layerOfLadder : [Bool]){
        print("  |", terminator : "")
        for ladder in layerOfLadder {
            switch ladder{
            case true:
                print("-----|", terminator : "")
            default :
                print("     |", terminator : "")
            }
        }
    }
    
    func printLadder(ladders : [[Bool]], names : [String]){
        for layerOfLadder in ladders{
            printLayerOfLadder(layerOfLadder: layerOfLadder)
            print("")
        }
        for beforeRefineName in names{
            var name = beforeRefineName
            while name.count<5 {
                if name.count % 2 == 0 { name = name + " " }
                else {name = " " + name}
            }
            print(name, terminator : " ")
        }
    }
}

//
//  main.swift
//  LadderGame
//
//  Created by JK on 09/10/2017.
//  Copyright © 2017 Codesquad Inc. All rights reserved.
//
//  Modified by Jamie.

import Foundation

func execute() {
    let playerNames = InputView(guideMessage: "참여할 사람의 이름을 입력하세요. (이름은 쉼표(,)로 구분하세요)").getInput()
    let maxHeight = InputView(guideMessage: "최대 사다리 높이는 몇 개인가요?").getInput()
    
    do { try Validator().checkValidate(height: maxHeight, names: playerNames) }
    catch InputError.outOfNameLength { return }
    catch InputError.notIntType { return }
    catch { return }
    
    let ladderGame = LadderGame(height: Int(maxHeight)!, names: playerNames)
    ResultView(ladder:ladderGame.makeLadder(), players:ladderGame.players).printGame()
}

execute()

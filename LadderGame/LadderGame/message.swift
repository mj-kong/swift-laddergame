//
//  message.swift
//  LadderGame
//
//  Created by JH on 28/04/2019.
//  Copyright © 2019 Codesquad Inc. All rights reserved.
//

import Foundation

//사람수와 사다리수로 enum을 사용하여 구분하고 케이스별로 출력할 문구를 정리.
enum Message {
    case peopleNum
    case ladderNum
    
    var inputMessage: String {
        switch self {
        case .peopleNum:
            return "참여할 사람 이름을 입력하세요. (이름은 쉼표(,)로 구분하세요)"
        case .ladderNum:
            return "최대 사다리 높이는 몇 개인가요?"
        }
    }
}


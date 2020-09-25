//
//  MathToken.swift
//  Calculator
//
//  Created by Pedro Pagán on 8/30/20.
//  Copyright © 2020 Pedro Pagán. All rights reserved.
//

import Foundation

class MathToken {
    
    
    static let numbers = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
    static let special = (leftBracket: "(", rightBracket: ")", dot: ".")
    static let specialElems  = [MathToken.special.leftBracket, MathToken.special.rightBracket, MathToken.special.dot]
    enum Operator: String, CaseIterable {
        case mult = "×"
        case div = "÷"
        case add = "+"
        case sub = "—"
    }
    
    let contents: MathToken
    
    init(_ contents: String) {
        self.contents = NumberToken("fail.jpeg")
    }
    
    static func tokenize(str: String) -> [MathToken] {
        var currentToken = String()
        var tokens = Array<MathToken>()
        
        for char in str {
            let elem = String(char)
            
            if numbers.contains(elem) || elem == special.dot {
                currentToken += elem
            }
            else {
                tokens.append(MathToken(currentToken))
                currentToken = elem
            }
        }
        
        
        return tokens
    }
    
    // inner classes
    
    
    
    class NumberToken: MathToken {
        let num: Double = 0.0
    }
    
    
    
    class OperatorToken: MathToken {
    
    }
}

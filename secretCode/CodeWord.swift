//
//  CodeWord.swift
//  secretCode
//
//  Created by Baldus,Cassandra R on 3/1/18.
//  Copyright © 2018 Baldus,Cassandra R. All rights reserved.
//

import Foundation

class CodeWord {
    var symbols:[String]
    var code: [String]
    var onSymbol:Int
    var status: String
    var guess: [String]
    var attempt: Int
    var count: Int
    
    init() {
        symbols = ["A", "B", "C", "D", "E"]
        code = ["C", "D", "E", "A"]
        onSymbol = 0
        status = ""
        guess = [""]
        attempt = 0
        count = code.count
    }
    
    func addSymbol (guessed:String) {
        onSymbol += 1
        attempt += 1
        guess.append(guessed)
        status = "Attempt \(attempt): \(onSymbol) symbols guessed"
    }
    
    func correctGuesses () -> Int{
        var correct = 0
        for i in 0 ..< count {
            if code[i] == guess[i] {
                correct += 1
            }
        }
        return correct
    }
    
    func getGuess() -> String{
        return guess[count - 1]
    }
    
    func isCorrect() -> DarwinBoolean {
        if guess[onSymbol - 1] == code[onSymbol - 1] {
            return true
        }
        else {
            return false
        }
    }
    
    func reset () {
        symbols = ["E", "D", "A", "C"]
        onSymbol = 0
    }
}

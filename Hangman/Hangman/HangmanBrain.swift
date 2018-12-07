//
//  HangmanBrain.swift
//  Hangman
//
//  Created by Jeffrey Almonte on 11/26/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

var guesses = 0
//var chances = 0

class HangmanBrain {
   // var alphabet = [qwertyuiopasdfghjklzxcvbnm]
    var playerOneWord = [String]()
    
    
    func setUpWord(input: String) -> String {
        let guessedLetters = input.map { _ in return "-" }
        playerOneWord = guessedLetters
        guesses = 6
        return guessedLetters.reduce("", +)
    }
    
    func checkForGuess(word: [String], guess: String) -> String {
        for (index,letter) in word.enumerated() {
            if letter == guess {
                playerOneWord[index] = letter
                guesses += 1
            }
        }
        return playerOneWord.reduce("", +)
    }

    func checkForWord(word: [String], guess: String) -> String {
        for (index, letter) in word.enumerated() {
            if letter == word {
                playerOneWord[index] = letter
            }
        }
        return playerOneWord.reduce("", +)
    }
}

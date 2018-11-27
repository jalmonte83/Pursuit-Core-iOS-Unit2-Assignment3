//
//  HangmanBrain.swift
//  Hangman
//
//  Created by Jeffrey Almonte on 11/26/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

var Alphabet = ["q","w","e","r","t","y","u","i","o","p","a","s","d","f","g","h","j","k","l","z","x","c","v","b","n","m"]
func returnEmpty(playerTwoInputTextField: UITextField) -> String {
    var playerTwoInputTextField = ""
    for _ in playerTwoInputTextField.text {
          playerTwoInputTextField.append("-")
    }
    return playerTwoInputTextField
}
  var hiddeWordArray = [String]()
func setWord(input: String) -> String {
    let secretWord = input.map { _ in return "-"}
    hiddeWordArray = secretWord
    return secretWord.reduce("", +)
}

func checkForGuess(word: [String], guess: String) -> String {
    for (index,letter) in word.enumerated() {
        if letter == guess {
            hiddeWordArray[index] = letter
        }
    }
    return hiddeWordArray.reduce("", +)
}

}

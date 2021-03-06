//
//  ViewController.swift
//  Hangman
//
//  Created by Alex Paul on 11/19/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var hangmanBrain = HangmanBrain()
    
    //@IBOutlet weak var hangmanTitle: UILabel!

    @IBOutlet weak var playerOneInputTextField: UITextField!
    @IBOutlet weak var playerTwoInputTextField: UITextField!
    @IBOutlet weak var hangmanImage: UIImageView!
   

  
        @IBOutlet weak var instructions: UITextView!
    
        @IBOutlet weak var displayRightChoices: UILabel!
    @IBAction func newGame(_ sender: UIButton) {
    }

    override func viewDidLoad() {
    super.viewDidLoad()
    
        //instructions.text = hangmanBrain.instructions
//        playerTwoInputTextField.delegate = self
//        playerOneInputTextField.delegate = self
        
  }


}
//
//extension ViewController: UITextFieldDelegate {
//
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        guard let isThereText = textField.text else { return false }
//        guard !isThereText.isEmpty else { return false }
//
//        textField.resignFirstResponder()
//
//        if textField == playerOneInputTextField{
//            hangmanBrain.playerOneWord = textField.text ?? ""
//            textField.clearButtonMode = .whileEditing
//            print("This is the word: \(hangmanBrain.hiddenWord)")
//
//        } else if textField == playerTwoInputTextField {
//            hangmanBrain.letterByUser = textField.text ?? ""
//            print("This is the letter: \(hangmanBrain.letterByUser)")
//            textField.clearButtonMode = .whileEditing
//            textField.text = ""
//        }
//}
//        if hangmanBrain.letsPlay(wordToGuess: hangmanBrain.playererOneInputTextField, letterGuess: hangmanBrain.playerTwoInputTextField) {
//            displayRightChoices.text = ("\(hangManBrain.arrayToDisplayRigthLetter)")
//
//        } else {
//            hangImage.image = hangManBrain.settingImageToFailedAttempts(attemptNum: hangManBrain.counterFailedAttempts)
//        }
//
//        //    if function to lose is true -> disable all the buttons
//        //update with lose message and word that was supposed to be guessed
//        //
//        //    if function to win is true -> disable all the buttons
//        //    update with win message and guessed word
//        //
//        return true
//    }
//
//
//    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
//        let currentWord = hiddenWord.text ?? ""
//        let currentLetter = letterByUser.text ?? ""
//
//        var isWordRightLength = Bool()
//        var isLetterRightLength = Bool()
//
//        if currentLetter.count > 1{
//            isLetterRightLength = false
//        } else if currentLetter.count < 1 {
//            isLetterRightLength = true
//        }
//
//
//        if currentWord.count < 20 {
//            isWordRightLength = true
//        } else {
//            isWordRightLength = false
//        }
//
//        let allowedCharacters = CharacterSet.letters
//        let characterSet = CharacterSet(charactersIn: string)
//
//
//
//
//
//}
//class ViewController: UIViewController {
//    var guessedArray = [String]()
//    @IBOutlet weak var userInputTextField: UITextField!
//    @IBOutlet weak var guessTextField: UITextField!
//    @IBOutlet weak var hangmanImage: UIImageView!
//    @IBOutlet weak var secretWord: UILabel!
//
//
//    var userInput = ""
//    var hangmanBrain: GameBrain = GameBrain()
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        guessTextField.delegate = self
//        userInputTextField.delegate = self
//        // Do any additional setup after loading the view, typically from a nib.
//    }
//
//
//
//}
//
//
////comform to textfield delegate
////should return
//
//extension ViewController: UITextFieldDelegate {
//    //implement methods
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//
//        switch textField {
//        case userInputTextField:
//            guessedArray = textField.text!.map{String($0)}
//            textField.isHidden = true
//            userInput.append(userInputTextField.text ?? "")
//            let setWord = hangmanBrain.setWord(input: userInputTextField.text!).lowercased()
//            secretWord.text = "\(setWord)"
//
//        case guessTextField:
//            guard let count = guessTextField.text?.count, count == 1 else { return false }
//            let guessedWord = hangmanBrain.checkForGuess(word: guessedArray, guess: guessTextField.text!)
//            guessTextField.text = ""
//            secretWord.text = "\(guessedWord)"
//            if chances == 6 {
//                return false
//            }
//        default:
//            break
//        }
//        textField.resignFirstResponder()
//        return true
//    }
//
//    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
//        print(textField.text ?? "")
//        return true
//    }
//
//}

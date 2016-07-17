//
//  Extensions.swift
//  Extensions
//
//  Created by Jordan Kiley on 7/15/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

extension String {
    func whisper(sentence : String) -> String {
        return sentence.lowercaseString
    }
    func shout(sentence : String) -> String {
        return sentence.uppercaseString
    }
    var pigLatin : String {
        
        switch self.characters.count <= 1 {
        case true :
            return self
        default :
            var esultray = String()
            // doesn't take punctuation into account
            let arrayOfWords = self.componentsSeparatedByString(" ")
            for word in arrayOfWords {
                let firstCharacter = word[word.startIndex]
                var wordToChange = word
                wordToChange.removeAtIndex(wordToChange.startIndex)
                wordToChange.stringByAppendingString("\(firstCharacter)ay")
                esultray = esultray + " " + wordToChange
            }
            return esultray
        }
    }
    var points : Int {
        var totalPoints = 0
        if self.characters.count == 0 {
            return 0
        }
        
        for letter in self.characters {
            switch letter {
            case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "0", " ", ".", ",", "!", "?", "\"", "'" :
                totalPoints += 0
            case "a", "e", "i", "o", "u" :
                totalPoints += 2
            default :
                totalPoints += 1
            }
        }
        return totalPoints
    }
}

extension Int {
    func half(input : Int) -> Int {
        return input / 2
    }
    
    func isDivisibleBy(input : Int, divisor : Int) -> Bool {
        switch input % divisor {
        case 0 :
            return true
        default :
            return false
        }
    }
    var squared : Int {
        return self * self
    }
    var halved : Int {
        return self / 2
    }
}


//
//  main.swift
//  BlackJack
//
//  Created by Alex Paul on 10/15/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation


let game = Game()

print("There are \(Card.newDeck(aceValue: 1).count) cards in a deck of cards")

var playAgain = false

let userPrompt = "Let's Play BlackJack!"

repeat {
    print(userPrompt)
    var _ = readLine()
    game.deck
    
    print("Hit or no")
    let hitOrStay = readLine() ?? ""
    if hitOrStay == "Hit" {
        game.hitme
    } else {
        game.computerVsPlayer
    }
    
    
    print("Do you wish to continue playing? (yes, no)")
    let shouldContinuePlaying = readLine() ?? ""
    if shouldContinuePlaying == "yes" {
        game.newGame()
        playAgain = true
    } else {
        playAgain = false
    }
} while playAgain
//pushing to git hub

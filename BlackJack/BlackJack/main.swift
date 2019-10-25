//
//  main.swift
//  BlackJack
//
//  Created by Alex Paul on 10/15/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

var cards:[Card]!
var player:Player!

let game = Game(deck: cards, player: player, hitPlayer: true)

print("There are \(Card.newDeck(aceValue: 1).count) cards in a deck of cards")

var playAgain = false

let userPrompt = "Let's Play BlackJack!"

    print("Do you wish to continue playing? (yes, no)")
    let shouldContinuePlaying = readLine() ?? ""
    if shouldContinuePlaying == "yes" {
        game.newGame()
        playAgain = true
    } else {
        playAgain = false
    }
} while playAgain {
}
//pushing to git hub


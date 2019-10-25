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
//i am not sure why i had to bang my variables all I know is that it took me over an hour to figure that out to stop the errors
var playAgain = false

print("There are \(Card.newDeck(aceValue: 1).count) cards in a deck of cards")


repeat {
    
    let startPrompt = "Let's Play BlackJack!"
    print(startPrompt)
    let game = Game (deck: Deck(), player: player, hitPlayer: false)
    game.newGame()
    
    
    func play() {
        print("Do you wish to continue playing? (yes, no)")
        let shouldContinuePlaying = readLine() ?? ""
        if shouldContinuePlaying == "yes" {
            game.newGame()
            playAgain = true
        } else {
            playAgain = false
        }
    }
} while playAgain
//At the end of this I was having a hard time to rid ALL the errors. I tried my best and got rid of them but could not get it to work even though build was successful. I will have to keep studying/coding

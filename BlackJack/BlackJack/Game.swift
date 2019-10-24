//
//  Game.swift
//  BlackJack
//
//  Created by Melinda Diaz on 10/24/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation



class Game {
    var deck = [Card]()
    var player = [Player]()
    var hitPlayer = true
    //    var cards = [Card]()
    var userScore:Int = 0
    //    init(deck: [Card],
    //         player: Player,
    //         hitPlayer: Bool) {
    //        self.deck = deck
    //        self.player = [player]
    //        self.hitPlayer = hitPlayer
    //    }
    //fix this
    var hasMoreCards:Bool {
        return self.hasMoreCards
    }
    //I do not need this if I am declaring this in the function
    //    var randomComputerScore = Int.random(in: 17..<24, using: &RandomNumberGenerator) {
    //
    //    }
    
    func newGame() {
        var _ = 0
        deck.removeAll()
    }
    
    func computerVsPLayer(userScore:Int,randomComputerScore:Int) -> Int {
        let randomComputerScore = Int.random(in: 17..<24)
        
        if userScore > randomComputerScore && userScore <= 21{
            print("You win!")
        } else {
            print("You Lose")
        }
        return 0
    }
    //must fix this!
    func hitMe() -> Card {
        if cards.isEmpty {
            print("no more cards")
        } else { //use addition
            result = deck + deck
        } //have no idea how to append a card from the deck
    }
    
    //fix this cause its not what they wanted
    func gamesStatus() {
        if userScore == 21 {
            print("BlackJack! Play Again?")
        } else if userScore <= 22 {
            print("BUST! Play Again?")
            
        }
    }
}

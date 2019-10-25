//
//  Game.swift
//  BlackJack
//
//  Created by Melinda Diaz on 10/24/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation



class Game {
    var deck = Deck()
    var player = Player()
        init(deck: Deck,
             player: Player,
             hitPlayer: Bool) {
            self.deck = deck
            self.player = player
           
        }
    //fix this
    var hasMoreCards:Bool {
        return !deck.cards.isEmpty
    }
   
    
    func newGame() {
        self.player.score = 0
        self.deck = Deck()
    }
    
    
    
    func hitOrStay() {
        print("Hit or stay?")
        
        let hitOrStay = readLine() ?? ""
        if hitOrStay == "Hit" {
            self.hitMe()
        } else {
            self.computerVsPlayer()
        }
        
        
    }
    
        
 
   
        func hitMe() {
            let hitCard = self.deck.takeFromDeck()
            let cardScore = hitCard.value
            self.player.score += cardScore
    }
        
    func computerVsPlayer() {
        let randomComputerScore = Int.random(in: 17...23)
        let userScore = self.player.score
        if userScore > randomComputerScore && userScore <= 21{
            print("You win!")
        } else {
            print("You Lose")
        }
       
    }
 
    //fix this cause its not what they wanted
//    func gamesStatus() {
//        if userScore == 21 {
//            print("BlackJack! Play Again?")
//        } else if userScore <= 22 {
//            print("BUST! Play Again?")
//
//        }
   }


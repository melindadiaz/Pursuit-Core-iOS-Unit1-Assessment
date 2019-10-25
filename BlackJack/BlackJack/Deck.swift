//
//  Deck.swift
//  BlackJack
//
//  Created by Melinda Diaz on 10/24/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

class Deck {
    var cards: [Card]
    
    init() {
        self.cards = Card.newDeck(aceValue: 1)
    }
    
    func takeFromDeck() -> Card {
        let cardNumber = Int.random(in: 1..<self.cards.count)
        let card = self.cards[cardNumber]
        cards.remove(at: cardNumber)
        return card
    }
}

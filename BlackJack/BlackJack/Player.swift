//
//  Player.swift
//  BlackJack
//
//  Created by Melinda Diaz on 10/24/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

struct Player {
    var score: Int = 0
    var cards = [Card]()
    var playerName:String = readLine() ?? "Player"
    
}



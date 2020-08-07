//
//  Player.swift
//  Tic_Tac_Toe
//
//  Created by - on 07/08/20.
//  Copyright © 2020. All rights reserved.
//

import Foundation

enum Player : Int {
    case x = 1
    case o = 2
    
    var text: String {
        switch self {
        case .x: return "❌"
        case .o: return "⭕"
        }
    }
    
     static var currentPlayer : Player = .x
    
    static func changePlayer(){
     switch Player.currentPlayer {
        case .x:
         Player.currentPlayer = .o
        case .o:
         Player.currentPlayer = .x
        }
    }
}

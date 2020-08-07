//
//  Game.swift
//  Tic_Tac_Toe
//
//  Created by - on 07/08/20.
//  Copyright © 2020. All rights reserved.
//

import Foundation

class Game {
    
    var gameBoard = [Int](repeating: 0, count: 9)
    
    func updateGameBoard(index : Int, value:Int){
        gameBoard[index] = value
    }
    
    func checkWinner() -> Player? {
//        let firstRowCombination = [0,1,2]
        if (gameBoard[0] != 0 && gameBoard[0] == gameBoard[1] && gameBoard[0] == gameBoard[2]){
            return Player.currentPlayer
        }
        return nil
    }
}

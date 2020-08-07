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
        var winner : Player? = nil
        
        let winCombinations = [
            [0,1,2],
            [3,4,5],
            [6,7,8],
            [0,3,6],
            [1,4,7],
            [2,5,8],
            [0,4,8],
            [2,4,6]
        ]
        
        for combination in winCombinations{
            if gameBoard[combination[0]] == Player.currentPlayer.rawValue && gameBoard[combination[0]] == gameBoard[combination[1]] && gameBoard[combination[0]] == gameBoard[combination[2]] {
                winner = Player.currentPlayer
            }
        }
        return winner
    }
    
    func reset() {
        Player.currentPlayer = .x
        gameBoard = [Int](repeating: 0, count: 9)
    }
}

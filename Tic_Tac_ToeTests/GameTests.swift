//
//  GameTests.swift
//  Tic_Tac_ToeTests
//
//  Created by Shukla, Nishant on 07/08/20.
//  Copyright © 2020 Shukla, Nishant. All rights reserved.
//

import XCTest
@testable import Tic_Tac_Toe

class GameTests: XCTestCase {
    
    var game : Game!
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        game = Game()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        game = nil
    }
    
    func testGameObjectShouldNotBeNil() {
        XCTAssertNotNil(game)
    }
    
    func testGameShouldHaveGameboard() {
        XCTAssertNotNil(game.gameBoard)
    }
    
    func testGameBoardShouldReturnCount_9(){
        XCTAssertEqual(game.gameBoard.count, 9, "gameboard count is not equal to 9.")
    }
    
    func testGameBoard_ValueForAnyIndex_ShouldReturn_UpdatedValue(){
        game.updateGameBoard(index: 1, value: 2)
        XCTAssertEqual(game.gameBoard[1], 2, "gameboard is not updated for given index.")
    }
    
    func testCheckWinnerInFirstRowForCurrentUserShouldReturn_Nil(){
        let firstRowCombination = [0,1,2]
        for index in firstRowCombination {
            if index == 1 { game.gameBoard[index] = 2; continue}
            game.gameBoard[index] = 1
        }
        let winner = game.checkWinner()
        XCTAssertNil(winner)
    }
    
    
    func testCheckWinnerInFirstRowForCurrentUser_X_ShouldReturn_PlayerX(){
        let firstRowCombination = [0,1,2]
        Player.currentPlayer = .x
        firstRowCombination.forEach { (index) in
            game.gameBoard[index] = Player.currentPlayer.rawValue
        }
        let winner = game.checkWinner()
        XCTAssertEqual(winner, Player.x, "player X didn't win in first row.")
    }
    
    func testCheckWinnerInFirstRowForCurrentUser_O_ShouldReturn_PlayerO(){
        let firstRowCombination = [0,1,2]
        Player.currentPlayer = .o
        firstRowCombination.forEach { (index) in
            game.gameBoard[index] = Player.currentPlayer.rawValue
        }
        let winner = game.checkWinner()
        XCTAssertEqual(winner, Player.o, "player O didn't win in first row.")
    }
    
}

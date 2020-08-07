//
//  GameTests.swift
//  Tic_Tac_ToeTests
//
//  Created by - on 07/08/20.
//  Copyright © 2020. All rights reserved.
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
        self.updateGameBoardForNilCase(combination: firstRowCombination)
        let winner = game.checkWinner()
        XCTAssertNil(winner)
    }
    
    
    func testCheckWinnerInFirstRowForCurrentUser_X_ShouldReturn_PlayerX(){
        let firstRowCombination = [0,1,2]
        Player.currentPlayer = .x
        self.updateGameBoardSuccessCase(combination: firstRowCombination)
        let winner = game.checkWinner()
        XCTAssertEqual(winner, Player.x, "player X didn't win in first row.")
    }
    
    func testCheckWinnerInFirstRowForCurrentUser_O_ShouldReturn_PlayerO(){
        let firstRowCombination = [0,1,2]
        Player.currentPlayer = .o
        self.updateGameBoardSuccessCase(combination: firstRowCombination)
        let winner = game.checkWinner()
        XCTAssertEqual(winner, Player.o, "player O didn't win in first row.")
    }
    
    func testCheckWinnerInSecondRowForCurrentUserShouldReturn_Nil(){
        let secondRowCombination = [3,4,5]
        self.updateGameBoardForNilCase(combination: secondRowCombination)
        let winner = game.checkWinner()
        XCTAssertNil(winner)
    }
    
    
    func testCheckWinnerInSecondRowForCurrentUser_X_ShouldReturn_PlayerX(){
        let secondRowCombination = [3,4,5]
        Player.currentPlayer = .x
        self.updateGameBoardSuccessCase(combination: secondRowCombination)
        let winner = game.checkWinner()
        XCTAssertEqual(winner, Player.x, "player X didn't win in Second row.")
    }
    
    func testCheckWinnerInSecondRowForCurrentUser_O_ShouldReturn_PlayerO(){
        let secondRowCombination = [3,4,5]
        Player.currentPlayer = .o
        self.updateGameBoardSuccessCase(combination: secondRowCombination)
        let winner = game.checkWinner()
        XCTAssertEqual(winner, Player.o, "player O didn't win in Second row.")
    }
    
    func testCheckWinnerInThirdRowForCurrentUserShouldReturn_Nil(){
        let thirdRowCombination = [6,7,8]
        self.updateGameBoardForNilCase(combination: thirdRowCombination)
        let winner = game.checkWinner()
        XCTAssertNil(winner)
    }
    
    
    func testCheckWinnerInThirdRowForCurrentUser_X_ShouldReturn_PlayerX(){
        let thirdRowCombination = [6,7,8]
        Player.currentPlayer = .x
        self.updateGameBoardSuccessCase(combination: thirdRowCombination)
        let winner = game.checkWinner()
        XCTAssertEqual(winner, Player.x, "player X didn't win in Third row.")
    }
    
    func testCheckWinnerInThirdRowForCurrentUser_O_ShouldReturn_PlayerO(){
        let thirdRowCombination = [6,7,8]
        Player.currentPlayer = .o
        self.updateGameBoardSuccessCase(combination: thirdRowCombination)
        let winner = game.checkWinner()
        XCTAssertEqual(winner, Player.o, "player O didn't win in Third row.")
    }
    
    func testCheckWinnerInFirstColumnForCurrentUserShouldReturn_Nil(){
        let firstColumnCombination = [0,3,6]
        self.updateGameBoardForNilCase(combination: firstColumnCombination)
        let winner = game.checkWinner()
        XCTAssertNil(winner)
    }
    
    
    func testCheckWinnerInFirstColumnForCurrentUser_X_ShouldReturn_PlayerX(){
        let firstColumnCombination = [0,3,6]
        Player.currentPlayer = .x
        self.updateGameBoardSuccessCase(combination: firstColumnCombination)
        let winner = game.checkWinner()
        XCTAssertEqual(winner, Player.x, "player X didn't win in First column.")
    }
    
    func testCheckWinnerInFirstColumnForCurrentUser_O_ShouldReturn_PlayerO(){
        let firstColumnCombination = [0,3,6]
        Player.currentPlayer = .o
        self.updateGameBoardSuccessCase(combination: firstColumnCombination)
        let winner = game.checkWinner()
        XCTAssertEqual(winner, Player.o, "player O didn't win in First column.")
    }
    
    func testCheckWinnerInSecondColumnForCurrentUserShouldReturn_Nil(){
        let secondColumnCombination = [1,4,7]
        self.updateGameBoardForNilCase(combination: secondColumnCombination)
        let winner = game.checkWinner()
        XCTAssertNil(winner)
    }
    
    
    func testCheckWinnerInSecondColumnForCurrentUserShouldReturn_PlayerX(){
        let secondColumnCombination = [1,4,7]
        Player.currentPlayer = .x
        self.updateGameBoardSuccessCase(combination: secondColumnCombination)
        let winner = game.checkWinner()
        XCTAssertEqual(winner, Player.x, "player X didn't win in Second column.")
    }
    
    func testCheckWinnerInThirdColumnForCurrentUserShouldReturn_Nil(){
        let thirdColumnCombination = [2,5,8]
        self.updateGameBoardForNilCase(combination: thirdColumnCombination)
        let winner = game.checkWinner()
        XCTAssertNil(winner)
    }
    
    
    func testCheckWinnerInThirdColumnForCurrentUserShouldReturn_PlayerO(){
        let thirdColumnCombination = [2,5,8]
        Player.currentPlayer = .o
        self.updateGameBoardSuccessCase(combination: thirdColumnCombination)
        let winner = game.checkWinner()
        XCTAssertEqual(winner, Player.o, "player O didn't win in Second column.")
    }
    
    func testCheckWinnerInFirstDiagonalForCurrentUserShouldReturn_Nil(){
        let firstDiagonalCombination = [0,4,8]
        self.updateGameBoardForNilCase(combination: firstDiagonalCombination)
        let winner = game.checkWinner()
        XCTAssertNil(winner)
    }
    
    
    func testCheckWinnerInFirstDiagonalForCurrentUserShouldReturn_PlayerO(){
        let firstDiagonalCombination = [0,4,8]
        Player.currentPlayer = .o
        self.updateGameBoardSuccessCase(combination: firstDiagonalCombination)
        let winner = game.checkWinner()
        XCTAssertEqual(winner, Player.o, "player O didn't win in Second column.")
    }
    
    func testCheckWinnerInSecondDiagonalForCurrentUserShouldReturn_Nil(){
        let secondDiagonalCombination = [2,4,6]
        self.updateGameBoardForNilCase(combination: secondDiagonalCombination)
        let winner = game.checkWinner()
        XCTAssertNil(winner)
    }
    
    
    func testCheckWinnerInSecondDiagonalForCurrentUserShouldReturn_PlayerO(){
        let secondDiagonalCombination = [2,4,6]
        Player.currentPlayer = .o
        self.updateGameBoardSuccessCase(combination: secondDiagonalCombination)
        let winner = game.checkWinner()
        XCTAssertEqual(winner, Player.o, "player O didn't win in Second column.")
    }
    
    func testGameDrawCondition_ShouldReturn_Nil(){
        game.gameBoard = [1,1,2,1,2,1,2,1,1]
        let winner = game.checkWinner()
        XCTAssertNil(winner)
    }
    
    func testReset(){
        game.reset()
        XCTAssertEqual(Player.currentPlayer, .x, "on reset current player does not become X.")
        let randomIndex = Int.random(in: 0..<9)
        XCTAssertEqual(game.gameBoard[randomIndex], 0, "Gameboard array's all values are not 0.")
    }
    
    func updateGameBoardSuccessCase(combination : [Int]){
        combination.forEach { (index) in
            game.gameBoard[index] = Player.currentPlayer.rawValue
        }
    }
    
    func updateGameBoardForNilCase(combination : [Int]){
        for index in combination {
            if index == combination[1] { game.gameBoard[index] = 1; continue}
            game.gameBoard[index] = 2
        }
    }
}


//
//  PlayerTests.swift
//  Tic_Tac_ToeTests
//
//  Created by - on 07/08/20.
//  Copyright © 2020. All rights reserved.
//

import XCTest
@testable import Tic_Tac_Toe

class PlayerTests: XCTestCase {
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testPlayerFor_X_ShouldNotbeNil(){
        let playerX = Player.x
        XCTAssertNotNil(playerX)
    }
    
    func testPlayerFor_O_ShouldNotbeNil(){
        let playerO = Player.o
        XCTAssertNotNil(playerO)
    }
    
    func testPlayer_X_shouldReturnText_X(){
        XCTAssertEqual(Player.x.text, "❌","Text Equality mismatch for Player x.")
    }
    
    func testPlayer_O_shouldReturnText_O(){
        XCTAssertEqual(Player.o.text, "⭕","Text Equality mismatch for Player o.")
    }
    
    func testCurrentPlayerShouldReturnText_X(){
        Player.currentPlayer = .x
        XCTAssertEqual(Player.currentPlayer.text, "❌", "Text Equality mismatch for Player o.")
    }
    
    func testCurrentPlayerFor_O_ShouldReturnText_O(){
        Player.currentPlayer = .o
        XCTAssertEqual(Player.currentPlayer.text, "⭕", "Text Equality mismatch for Player o.")
    }
    
    func testChangePlayerShouldReturn_x(){
        Player.currentPlayer = .o
        Player.changePlayer()
        XCTAssertEqual(Player.currentPlayer, Player.x, "Current player is not x.")
    }
    
    func testChangePlayerShouldReturn_o(){
        Player.currentPlayer = .x
        Player.changePlayer()
        XCTAssertEqual(Player.currentPlayer, Player.o, "Current player is not x.")
    }
    
}

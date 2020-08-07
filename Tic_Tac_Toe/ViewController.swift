//
//  ViewController.swift
//  Tic_Tac_Toe
//
//  Created by - on 07/08/20.
//  Copyright © 2020. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var gameStateLabel: UILabel!
    @IBOutlet weak var verticalStackView: UIStackView!
    @IBOutlet weak var playAgainBtn: UIButton!
    
    var game = Game()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        verticalStackView.addBackground(color:.lightGray)
        resetGame()
    }
    
    @IBAction func gameBoardButtonTapped(_ sender: Any) {
        let btn = sender as! UIButton
        guard game.gameBoard[btn.tag - 1] == 0 && game.checkWinner() == nil else {
            return
        }
        play(cellButton: btn)
    }
    
    @IBAction func playAgainTapped(_ sender: Any) {
        resetGame()
    }
    
    func play(cellButton : UIButton) {
        
        game.updateGameBoard(index: cellButton.tag - 1, value: Player.currentPlayer.rawValue)
        
        showTextOnBoardButton(cellButton: cellButton)
        
        if let winner = game.checkWinner() {
            updateUIOnGameEnd(text: "Player \(winner.text) wins!")
        }else if game.gameBoard.contains(0) {
            Player.changePlayer()
            gameStateLabel.text = "Player \(Player.currentPlayer.text) turn"
        }else{
            // match draw
            updateUIOnGameEnd(text: "Match draw!")
        }
    }
    
    func showTextOnBoardButton(cellButton : UIButton){
        switch Player.currentPlayer {
        case .o:
            cellButton.setTitle(Player.o.text, for: .normal)
            break
        case .x:
            cellButton.setTitle(Player.x.text, for: .normal)
            break
        }
    }
    
    func updateUIOnGameEnd(text : String){
        UIView.transition(with: self.gameStateLabel, duration: 1.5, options: .transitionFlipFromTop, animations: {
           self.gameStateLabel.text = text
           self.gameStateLabel.backgroundColor = .green
           self.playAgainBtn.isHidden = false
        })
    }
    
    func resetGame() {
        game.reset()
        gameStateLabel.text = "Player \(Player.currentPlayer.text) turn"
        gameStateLabel.backgroundColor = .clear
        playAgainBtn.isHidden = true
        self.verticalStackView.subviews.forEach { (stackView) in
            for j in 1...9{
                if let btn = stackView.viewWithTag(j) as? UIButton {
                    btn.setTitle("", for: .normal)
                }
            }
        }
    }
    
}


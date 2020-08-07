//
//  ViewController.swift
//  Tic_Tac_Toe
//
//  Created by - on 07/08/20.
//  Copyright © 2020. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var lblGameState: UILabel!
    @IBOutlet weak var verticalStackView: UIStackView!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        verticalStackView.addBackground(color:.lightGray)
        lblGameState.text = "Player \(Player.currentPlayer.text) turn"
    }
    
    @IBAction func btnTapped(_ sender: Any) {
        let btn = sender as! UIButton
        
        switch Player.currentPlayer {
        case .o:
            Player.currentPlayer = .x
            btn.setTitle(Player.o.text, for: .normal)
            break
        case .x:
            Player.currentPlayer = .o
            btn.setTitle(Player.x.text, for: .normal)
            break
        }
        
        lblGameState.text = "Player \(Player.currentPlayer.text) turn"
        
    }
    
}


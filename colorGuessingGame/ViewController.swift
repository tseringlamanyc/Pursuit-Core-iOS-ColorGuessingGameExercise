//
//  ViewController.swift
//  colorGuessingGame
//
//  Created by C4Q  on 10/16/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var newGameLabel: UIButton!
    @IBOutlet weak var gameOverLabel: UILabel!
    @IBOutlet weak var currentScoreLabel: UILabel!
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var highScoreLabel: UILabel!
    
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.colorView.backgroundColor = gameModel.getNewColor()
    }
    
    var gameModel: ColorGuessingModel = ColorGuessingModel()
    
    @IBAction func guessColor(_ sender: UIButton) {
        var guess: UIColor
        switch sender.tag {
        case 0:
            guess = .red
        case 1:
            guess = .green
        case 2:
            guess = .blue
        default:
            guess = .white
            fatalError("Invalid Tag")
        }
        if gameModel.isDominant(guess: guess) {
            currentScoreLabel.text = String(gameModel.currentScore)
            self.colorView.backgroundColor = gameModel.getNewColor()
        } else {
            gameOverLabel.isHidden = false
            newGameLabel.isHidden = false
            [redButton, greenButton, blueButton].forEach{$0?.isEnabled = false}
        }
    }
    @IBAction func newGameButtonPressed(_ sender: UIButton) {
        highScoreLabel.text = String(max(Int(highScoreLabel.text!)!, Int(currentScoreLabel.text!)!))
        currentScoreLabel.text = "0"
        gameModel = ColorGuessingModel()
        gameOverLabel.isHidden = true
        newGameLabel.isHidden = true
        [redButton, greenButton, blueButton].forEach{$0?.isEnabled = true}
        self.colorView.backgroundColor = gameModel.getNewColor()
    }
}


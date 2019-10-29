//
//  ViewController.swift
//  colorGame
//
//  Created by Tsering Lama on 10/29/19.
//  Copyright © 2019 Tsering Lama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var red: UIButton!
    @IBOutlet weak var blue: UIButton!
    @IBOutlet weak var green: UIButton!
    @IBOutlet weak var playAgain: UIButton!
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var displayText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayText.text = "Pick the correct color"
        // Do any additional setup after loading the view.
        let randNum = CGFloat.random(in: 0...1)
        let myColor = UIColor(red: randNum, green: randNum, blue: randNum, alpha: randNum)
        let colors: [UIColor] = [.red, .blue, .green]
        let colorsRand = colors.randomElement()
        colorView.backgroundColor = colorsRand
        blue.backgroundColor = .blue
        red.backgroundColor = .red
        green.backgroundColor = .green
        
    }
    
    @IBAction func userGuess(_ sender: UIButton) {
        var score = 0
//        var correctGuess = true
//        repeat {
        if sender.backgroundColor == colorView.backgroundColor {
            displayText.text = "correct"
            score += 1
//            correctGuess = true
        } else {
            displayText.text = "wrong"
//            correctGuess = false
        }
//        } while correctGuess == true
}
    
    @IBAction func playAgain(_ sender: UIButton) {
        }
    
    
}


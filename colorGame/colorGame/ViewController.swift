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
    @IBOutlet weak var scoreText: UILabel!
    
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayText.text = "Pick the correct color"
        scoreText.text = "Your current score is 0"
        // Do any additional setup after loading the view.
//        let randNum = CGFloat.random(in: 0...1)
//        let myColor = UIColor(red: randNum, green: randNum, blue: randNum, alpha: randNum)
//        let colors: [UIColor] = [.systemRed, .systemBlue, .systemGreen]
//        let colorsRand = colors.randomElement()
//        colorView.backgroundColor = colorsRand

        
    }
    
    @IBAction func userGuess(_ sender: UIButton) {
        if sender.backgroundColor == colorView.backgroundColor {
            score += 1
            displayText.text = "correct"
            scoreText.text = "Your score is \(score)"
            newColorPrint()
            }
        else {
            displayText.text = "wrong"
        }
  
}
    
    func newColorPrint () {
        let colors: [UIColor] = [.systemRed, .systemBlue, .systemGreen]
        let colorsRand = colors.randomElement()
        colorView.backgroundColor = colorsRand
    }
    
    
    @IBAction func playAgain(_ sender: UIButton) {
    }

}
    
    



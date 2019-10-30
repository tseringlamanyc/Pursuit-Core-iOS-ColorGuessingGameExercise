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
    
    var redNum: CGFloat = 0.0
    var greenNum: CGFloat = 0.0
    var blueNum: CGFloat = 0.0
    
    var emptyArr = [CGFloat]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayText.text = "Pick the correct color"
        scoreText.text = "Your current score is 0"
        emptyArr = [CGFloat]()
        newColorPrint()
 }
    
    @IBAction func userGuess(_ sender: UIButton) {

        switch sender.tag {
        case 0:
            if emptyArr[0] == emptyArr.max() ?? 0.0 {
                displayText.text = "Correct"
                score += 1
                scoreText.text = "Your score is \(score)"
                emptyArr = [CGFloat]()
                newColorPrint()
            } else {
                displayText.text = "Wrong, your highscore is \(score)"
                            red.isEnabled = false
                            blue.isEnabled = false
                            green.isHidden = false
            }
        case 1:
            if emptyArr[1] == emptyArr.max() ?? 0.0 {
                displayText.text = "Correct"
                score += 1
                scoreText.text = "Your score is \(score)"
                emptyArr = [CGFloat]()
                newColorPrint()
            } else {
                displayText.text = "Wrong, your highscore is \(score)"
                            red.isEnabled = false
                            blue.isEnabled = false
                            green.isHidden = false
            }
        case 2:
            if emptyArr[2] == emptyArr.max() ?? 0.0 {
                displayText.text = "Correct"
                score += 1
                scoreText.text = "Your score is \(score)"
                emptyArr = [CGFloat]()
                newColorPrint()
            } else {
                displayText.text = "Wrong, your highscore is \(score)"
                                           red.isEnabled = false
                                           blue.isEnabled = false
                                           green.isHidden = false
            }
        default:
            displayText.text = "N/A"
        }
        
}
    
    func newColorPrint () {
        redNum = CGFloat.random(in: 0...1) // 0.1
        greenNum = CGFloat.random(in: 0...1) //0.9
        blueNum = CGFloat.random(in: 0...1)//0.5
        let myColor = UIColor(red: redNum, green: greenNum, blue: blueNum, alpha: 1)
        emptyArr.append(redNum)
        emptyArr.append(greenNum)
        emptyArr.append(blueNum)
        
        colorView.backgroundColor = myColor
    }
    
    
    @IBAction func playAgain(_ sender: UIButton) {
        score = 0
        viewDidLoad()
        red.isEnabled = true
        blue.isEnabled = true
        green.isEnabled = true
        
    }

}
    
    



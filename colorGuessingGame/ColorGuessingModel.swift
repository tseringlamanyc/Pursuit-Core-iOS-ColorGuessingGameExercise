//
//  ColorGuessingModel.swift
//  colorGuessingGame
//
//  Created by C4Q  on 10/16/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import Foundation
import UIKit

class ColorGuessingModel {
    
    private var currentColor: UIColor
    private var currentDominantRGBColor: UIColor
    
    var currentScore: Int = 0
    
    func getNewColor() -> UIColor {
        let randomColor = ColorGuessingModel.randColor()
        currentColor = randomColor.color
        currentDominantRGBColor = randomColor.dominantColor
        return currentColor
    }
    
    func isDominant(guess: UIColor) -> Bool {
        if currentDominantRGBColor == guess {
            currentScore += 1
            return true
        } else {
            return false
        }
    }
        
    static private func randColor() -> (color: UIColor, dominantColor: UIColor) {
        let redValue = CGFloat(drand48())
        let greenValue = CGFloat(drand48())
        let blueValue = CGFloat(drand48())
        let color = UIColor(displayP3Red: redValue, green: greenValue, blue: blueValue, alpha: 1)
        let dominantColor: UIColor
        if max(redValue, greenValue, blueValue) == redValue {
            dominantColor = UIColor.red
        } else if max(redValue, greenValue, blueValue) == greenValue {
            dominantColor = UIColor.green
        } else {
            dominantColor = UIColor.blue
        }
        return (color, dominantColor)
        
    }
    
    init() {
        let randomColor = ColorGuessingModel.randColor()
        let currentColor = randomColor.color
        let currentDominantColor = randomColor.dominantColor
        self.currentColor = currentColor
        self.currentDominantRGBColor = currentDominantColor
    }
    
}

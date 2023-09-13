//
//  ViewController.swift
//  DiceApp
//
//  Created by Mirrai Yessilbayeva on 13.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var dice1: UIImageView!
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet var dice2: UIImageView!
    @IBOutlet var dicePrime: UIImageView!
    
    let diceeArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.stackView.isHidden = true
        self.dice1.isHidden = true
        self.dicePrime.isHidden = true
        self.dice2.isHidden = true
        
    }
    
    @IBAction func didTapDiceRoll(_ sender: UIButton) {
        let tag = sender.tag
        switch tag {
        case 1:
            dicePrime.isHidden = false
            
            stackView.isHidden = true
            self.dice2.isHidden = true
            self.dice1.isHidden = true
            for _ in 0..<diceeArray.count {
                dicePrime.image = diceeArray.randomElement()
            }
        case 2:
            dicePrime.isHidden = true
            stackView.isHidden = false
            self.dice2.isHidden = false
            self.dice1.isHidden = false
            for _ in 0..<diceeArray.count {
                dice1.image = diceeArray.randomElement()
                dice2.image = diceeArray.randomElement()
            }
        default:
            print("Error")
        }
    }
}

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var dice1: UIImageView!
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet var dice2: UIImageView!
    @IBOutlet var dicePrime: UIImageView!
    
    let diceImages = [
        #imageLiteral(resourceName: "DiceOne"),
        #imageLiteral(resourceName: "DiceTwo"),
        #imageLiteral(resourceName: "DiceThree"),
        #imageLiteral(resourceName: "DiceFour"),
        #imageLiteral(resourceName: "DiceFive"),
        #imageLiteral(resourceName: "DiceSix")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupInitialState()
    }
    
    @IBAction func didTapDiceRoll(_ sender: UIButton) {
        let tag = sender.tag
        switch tag {
        case 1:
            dicePrime.isHidden = false
            stackView.isHidden = true
            dice2.isHidden = true
            dice1.isHidden = true
            dicePrime.image = diceImages.randomElement()
            
        case 2:
            dicePrime.isHidden = true
            stackView.isHidden = false
            dice2.isHidden = false
            dice1.isHidden = false
            dice1.image = diceImages.randomElement()
            dice2.image = diceImages.randomElement()
            
        default:
            print("Error")
        }
    }
    
    private func setupInitialState() {
        dice1.isHidden = true
        dicePrime.isHidden = true
        dice2.isHidden = true
    }
}

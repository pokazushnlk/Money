//
//  ViewController.swift
//  Money
//
//  Created by Ярослав on 01.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    var stillTyping = false
    @IBOutlet var ButtonKeyboard: [UIButton]! {
        didSet {
            for button in ButtonKeyboard {
                button.layer.cornerRadius = 11
            }
        }
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func pressNumber(_ sender: UIButton) {
        let number = sender.currentTitle!
        if stillTyping == true {
            if displayLabel.text!.count < 10 {
                
                displayLabel.text = displayLabel.text! + number
                
                
            }
        } else {
            displayLabel.text! = number
            stillTyping = true
        }
    }
}


//
//  ViewController.swift
//  newCalculator
//
//  Created by Евгений Таран on 11/29/17.
//  Copyright © 2017 Zhenya Taran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var calc = Calculator()
    @IBOutlet weak var resultArea: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didgitButtonTapped(_ sender: Any) {
        guard let button = sender as? UIButton else {
            return
        }
        let buttonText = button.titleLabel!.text
        if resultArea.text == "0" {
            resultArea.text = buttonText
        }
        else {
            resultArea.text! += buttonText!
        }
    }
    
    @IBAction func eraseButtonTapped(_ sender: Any) {
        resultArea.text = "0"
    }
    
    @IBAction func resultButtonTapped(_ sender: Any) {
        guard let resultNumber = Double(resultArea.text!) else {
            return
        }
        calc.nextNumber(resultNumber)
        resultArea.text = String(calc.result!)
    }
    
    
    @IBAction func operationWithResultButtonTapped(_ sender: Any) {
        let button = sender as! UIButton
        let inputValueButton = Double(resultArea.text!)
        calc.inputValue = inputValueButton!
        let resultValueButton = Double(resultArea.text!)
        switch button.titleLabel!.text!{
        case "+/-":
            calc.nextOperation = .plusMinus
        case "√":
            calc.nextOperation = .sqrt
        case "x^2":
            calc.nextOperation = .doublle
        default:
            resultArea.text = "Error"
        }
        calc.nextNumber(resultValueButton!)
        resultArea.text = String(calc.result!)
    }
    
    
}


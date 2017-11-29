//
//  ViewController.swift
//  test1
//
//  Created by Евгений Таран on 11/24/17.
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
        let button = sender as! UIButton
        let buttonText = button.titleLabel!.text!
        if resultArea.text! == "0"{
            resultArea.text = buttonText
        }
        else {
        resultArea.text! += buttonText
        }
        Int(resultArea.text!) = calc.inputValue
        
    }
    
    
}


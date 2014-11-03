//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Donnie Wang on 11/1/14.
//  Copyright (c) 2014 Donnie Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enterHumanYearsTextField: UITextField!
    @IBOutlet weak var dogYearsLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToDogYearsButtonPressed(sender: UIButton) {
        let yearsFromTextField = enterHumanYearsTextField.text.toInt()!
        
        let conversionConstant = 7
        
        dogYearsLabel.hidden = false

        dogYearsLabel.text = "\(yearsFromTextField * conversionConstant)" + " human years"
        
        enterHumanYearsTextField.resignFirstResponder()
    }

    @IBAction func convertToRealDogYearsButtonPressed(sender: UIButton) {
        let stringFromTextField = enterHumanYearsTextField.text
        let doubleValueFromTextField = Double((stringFromTextField as NSString).doubleValue)
        
        var realDogYears:Double
        
        if doubleValueFromTextField > 2 {
            realDogYears = (2 * 10.5) + (doubleValueFromTextField - 2) * 4
        }
        else {
            realDogYears = doubleValueFromTextField * 10.5
        }
        
        dogYearsLabel.text = "\(realDogYears)" + " real human years"

        dogYearsLabel.hidden = false
        
        enterHumanYearsTextField.resignFirstResponder()
    }
}


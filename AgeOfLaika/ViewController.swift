//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Matthew Wood on 2015-04-21.
//  Copyright (c) 2015 Matthew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var humanYearsTextField: UITextField!
    @IBOutlet weak var dogYearsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func convertToDogYearsButtonPressed(sender: AnyObject) {
        let humanYears = humanYearsTextField.text.toInt()!
        var dogYears:Int        // can't infer the type because we're not assigning it here
        dogYears = humanYears * 7
        
        dogYearsLabel.hidden = false
        humanYearsTextField.text = " "
        humanYearsTextField.resignFirstResponder()
        
        dogYearsLabel.text = "Your dog is " + "\(dogYears)" + " in human years."
    
    }

    @IBAction func convertToRealDoYearsButtonPressed(sender: AnyObject) {
        let humanYears = Double((humanYearsTextField.text as NSString).doubleValue)
        var realDogYears = 0.0
        
        if humanYears <= 2 {
            realDogYears = 10.5 * humanYears
        } else {
            realDogYears = (2 * 10.5) + (4 * (humanYears - 2))
        }
        
        dogYearsLabel.hidden = false
        humanYearsTextField.text = " "
        humanYearsTextField.resignFirstResponder()
        
        dogYearsLabel.text = "Your dog is " + "\(realDogYears)" + " in human years."
    }

}


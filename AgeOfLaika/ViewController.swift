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
        var dogYears = humanYears * 7
        
        dogYearsLabel.hidden = false
        humanYearsTextField.text = " "
        
        dogYearsLabel.text = "Your dog is " + "\(dogYears)" + " in human years."
    
    }


}


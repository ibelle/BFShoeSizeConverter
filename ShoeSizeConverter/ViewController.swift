//
//  ViewController.swift
//  ShoeSizeConverter
//
//  Created by HUGE | Isaiah Belle on 1/6/15.
//  Copyright (c) 2015 IsaiahBelleDigital. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mensShoeSizeTF: UITextField!
    @IBOutlet weak var convertedLabel: UILabel!
    @IBOutlet weak var convertButton: UIButton!
    @IBOutlet weak var warningLabel: UILabel!
    let CONV_CONSTANT = 9
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func convertButtonPressed(sender: UIButton) {
        let fromSize = mensShoeSizeTF.text
        let numberFromSizeTxt = fromSize.toInt()
        if (numberFromSizeTxt != nil) {
            var integerFromTextField =  numberFromSizeTxt!
            integerFromTextField*=CONV_CONSTANT
            convertedLabel.hidden=false
            let stringWithUpdatedShoeSize = "\(integerFromTextField)"
            convertedLabel.text = stringWithUpdatedShoeSize
        }else{
            convertedLabel.hidden=true
            convertedLabel.text = ""

        }
        mensShoeSizeTF.resignFirstResponder()
    }
    
}


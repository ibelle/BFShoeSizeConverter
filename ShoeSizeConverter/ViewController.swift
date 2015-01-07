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
    let CONV_CONSTANT = 8.75
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func convertButtonPressed(sender: UIButton) {
        if((mensShoeSizeTF.text.toInt()) != nil){
            let integerFromTextField = mensShoeSizeTF.text.toInt()!
            convertedLabel.hidden=false
    
            let stringWithUpdatedShoeSize = "\(Int(Double(integerFromTextField) * CONV_CONSTANT)) in EU Shoe Size"
            convertedLabel.text = stringWithUpdatedShoeSize
        }else{
            convertedLabel.hidden=true
            convertedLabel.text = ""
        }
    
        mensShoeSizeTF.resignFirstResponder()
    }
    
}


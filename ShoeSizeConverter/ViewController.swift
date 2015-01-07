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
    @IBOutlet weak var mensConvertedLabel: UILabel!
    @IBOutlet weak var convertButton: UIButton!
    @IBOutlet weak var warningLabel: UILabel!
    
    @IBOutlet weak var womensShoeSizeTF: UITextField!
    @IBOutlet weak var womensConvertedLabel: UILabel!
    
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
        
        
        if let integerFromTextField =
            mensShoeSizeTF.text.toInt() {
            mensConvertedLabel.hidden=false
            let stringWithUpdatedShoeSize = converShoeSize(integerFromTextField) +
            " in EU Shoe Size"
            mensConvertedLabel.text = stringWithUpdatedShoeSize
        }else{
            mensConvertedLabel.hidden=true
            mensConvertedLabel.text = ""

        }
        
        if  let integerFromTextField = womensShoeSizeTF.text.toInt() {
            womensConvertedLabel.hidden=false
            
            let stringWithUpdatedShoeSize = converShoeSize(integerFromTextField) +
            " in EU Shoe Size"
            womensConvertedLabel.text = stringWithUpdatedShoeSize
        }else{
            womensConvertedLabel.hidden=true
            womensConvertedLabel.text=""
        }
        
        mensShoeSizeTF.resignFirstResponder()
    }
    
    
    
    func converShoeSize(usShoeSize:Int) -> String {
        let returnVal = "\(Int(Double(usShoeSize) * CONV_CONSTANT))"
        return returnVal;
    }
    

}


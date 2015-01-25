//
//  ViewController.swift
//  ShoeSizeConverter
//
//  Created by Trayan Azarov on 1/25/15.
//  Copyright (c) 2015 Chaos Labs OOD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    @IBOutlet weak var womensShowSizeTextField: UITextField!
    @IBOutlet weak var womensConvertedShowSizeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        let sizeFromTextField = mensShoeSizeTextField.text.toInt()!
        let conversionConstant = 30
        mensConvertedShoeSizeLabel.hidden=false
        mensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"
    }

    @IBAction func convertShoeSizeButtonPresses(sender: UIButton) {
        let sizeFromTextField=Double((womensShowSizeTextField.text as NSString).doubleValue)
        let conversionConstant = 30.5
        womensConvertedShowSizeLabel.hidden=false
        womensConvertedShowSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"
        
        
    }
}


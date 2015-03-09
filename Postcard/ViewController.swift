//
//  ViewController.swift
//  Postcard
//
//  Created by Emerald Chung on 3/2/15.
//  Copyright (c) 2015 PCRethinking.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var sendMailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = enterNameTextField.text
        
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
        sendMailButton.setTitle("Happy", forState: UIControlState.Normal)
        
    }

}


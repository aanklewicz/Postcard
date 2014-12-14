//
//  ViewController.swift
//  Postcard
//
//  Created by Adam M. Anklewicz on 2014-12-13.
//  Copyright (c) 2014 Never Had To Fight. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var nickItButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nickItButtonPressed(sender: UIButton) {
        // Unhides nameLabel, sets it to the value of enterNameTextField with a To: prepending it, and makes it blue.
        nameLabel.hidden = false
        nameLabel.text =  "To: " + enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        
        
        // Unhides messageLabel, sets it to the value of enterMessageTextField, and makes it red.
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        // Clears out the text to blank, and hides the keyboard.
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()

        // Clears out the text to blank, and hides the keyboard.
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        // Here we set the button text to "Mail Sent" rather than "Nick It!"
        nickItButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}


//
//  ViewController.swift
//  tempconverter
//
//  Created by Pedro Miguel Rodrigues Soares on 11/02/16.
//  Copyright © 2016 Pedro Miguel Rodrigues Soares. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var temEntry: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func submitClick(sender: UIButton) {
        if (temEntry.text == "") {
            ShowMessage("Error", message: "Please enter a temperature")
            return
        }
        
        let temp = Double(temEntry.text!)
        let tempF = temp! * (9/5) + 32
        ShowMessage("Complete", message: "Temperature in Farenheit = " + String(tempF))
        
        temEntry.text = ""
    }
    
    func ShowMessage (title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alertController, animated: true, completion: nil)
    }

}


//
//  ViewController.swift
//  SenWelcome
//
//  Created by Rajarshi Sen on 1/18/18.
//  Copyright © 2018 Rajarshi Sen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var display: UILabel!
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func buttonTouch(_ sender: UIButton) {
        if (sender.currentTitle == "CSCI321") {
            // Display a welcome message on the console.
            print ("Welcome iOS UNDERGRADUATE students 👋 👋 👋 ") // Display a welcome message in the lable on the view.
            display.text = "Welcome iOS UNDERGRADUATE students \n 👋 👋 👋 " //Display undergraduate group photo.
            imageView.image = UIImage(named: "ustudents.jpg")
        }
        // Check to see if the current title of the button is "CSCI321."
        else if (sender.currentTitle! == "CSCI521") {
            // Display a welcome message on the console.
            print ("Welcome iOS GRADUATE students 👏 👏 👏 ") // Display a welcome message on the console.
            
            display.text = "Welcome iOS GRADUATE students \n 👏 👏 👏 "
            // Display graduate group photo; within a half of the screen.
            imageView.image = UIImage(named: "gstudents.jpg")
        }    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}


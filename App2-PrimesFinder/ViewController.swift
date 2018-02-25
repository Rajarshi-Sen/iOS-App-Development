//  ViewController.swift
/**********************************************************************************************************************************************
 * Name             : Rajarshi Sen
 * Z-ID             : z1816768
 * Course Number    : CSCI-521
 * Assignment Number: 2 - Part-II
 * Purpose          : to fulfill the coding requirements of FirstView or WelcomeScreen
 * Due Date         : February 15, 2018 by 11:59 pm
 * Copyright © 2018 Northern Illinois University. All rights reserved.
 **********************************************************************************************************************************************/

import UIKit

class ViewController: UIViewController {
    
    /*
 * class attributes:
 */
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var primeCount: UILabel!
    @IBOutlet weak var textPrimes: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib
        specificTextFieldConfiguration()
        
    }
    
    func specificTextFieldConfiguration() {
        inputTextField.placeholder = NSLocalizedString("Enter integer 25 or above", comment: "")
        inputTextField.keyboardType = .numberPad
        inputTextField.returnKeyType = .done
    }
    
    @IBAction func primeCoder(_ sender: UIButton) {
        
        inputTextField.resignFirstResponder()
        let userInput:Int? = Int(inputTextField.text!) //optional wrapped
        if  userInput == nil || userInput! < 25 { // ! -> extracts it
            primeCount.textColor = UIColor.red
            primeCount.text = "Please enter an integer greater than 24"
            //return
        } else{
            generatePrimes(userInput!)
        }
    }
    
    //function header:purpose
    
    func generatePrimes(_ userInput: Int) {
        var maxInt = [Bool](repeating: true, count: userInput+1) // to accomodate till maxInt[29]
        
        var i = 2
        while i <= Int(sqrt(Double(userInput))){
            var j = 2
            while i * j <= userInput{
                maxInt[i*j] = false
                j += 1
            }
            i += 1
        }
        
        i = 2
        var count:Int = 0
        var primeArray = Array<Int>()
        repeat{
            if maxInt[i]{
                primeArray.append(i)
                count += 1
            }
            i += 1
        }while i <= userInput
        primeCount.textColor = UIColor.blue
        primeCount.text = "\(count) Primes found from 0 to \(userInput)"
        textPrimes.text = "\(primeArray)"
        
    }
    
    @IBAction func clearOutput(_ sender: UIButton) {
        primeCount.textColor = UIColor.black
        primeCount.text = ""
        inputTextField.text = ""
        inputTextField.placeholder = NSLocalizedString("Enter integer 25 or above", comment: "")
        textPrimes.text = ""
        
    }
    
    
}


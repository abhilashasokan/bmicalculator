//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Abhilash on 29/10/18.
//  Copyright © 2018 SweetGodzillas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userWeight: UITextField!
    @IBOutlet weak var userHeightFt: UITextField!
    @IBOutlet weak var userHeightInch: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var imgResult: UIImageView!
    
    var weight:Float = 0.0
    var heightFt:Float = 0.0
    var heightInch:Float = 0.0
    var heightTotalInch:Float = 0.0
    var userBMI:Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
         
    }
    
    
    @IBAction func calculateBMI(_ sender: UIButton) {
        weight     = Float(userWeight.text!)!
        heightFt   = Float(userHeightFt.text!)!
        heightInch = Float(userHeightInch.text!)!
        heightTotalInch = (heightFt * 12) + heightInch
        print(heightTotalInch)
        userBMI = round(weight / ((heightTotalInch / 39.37) * 2))
        
        if userBMI >= 30 {
            lblResult.text = "You have obese. \nYour BMI is : \(userBMI) "
            imgResult.image = UIImage(named: "overweight")
        }
        else if userBMI >= 25 {
            lblResult.text = "You are overweight. \nYour BMI is : \(userBMI) "
            imgResult.image = UIImage(named: "overweight")
        }
        else if userBMI >= 19 {
            lblResult.text = "You have healthy weight. \nYour BMI is : \(userBMI) "
            imgResult.image = UIImage(named: "underweight")
        }
        else {
            lblResult.text = "You are underweight. \nYour BMI is : \(userBMI) "
            imgResult.image = UIImage(named: "underweight")
        }
    }
    


    @IBAction func resetPage(_ sender: UIButton) {
        userWeight.text = ""
        userHeightFt.text = ""
        userHeightInch.text = ""
    }
}

//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Carmen Lucas on 14/06/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var recalculateButton: UIButton!
    
    @IBOutlet weak var backgroundResult: UIImageView!
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color

        // Do any additional setup after loading the view.
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
       
        self.dismiss(animated: true, completion: nil)
        
        
    }
    
  
   

}

//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

  
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var heightValue: UILabel!
    @IBOutlet weak var weightValue: UILabel!
    var calculatorBrain = CalculatorBrain()
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightValue.text = " \(calculatorBrain.getHeightSlider(sender.value)) m"
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightValue.text = "\(calculatorBrain.getWeightSlider(sender.value)) Kg"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateButton(_ sender: UIButton) {
        
        calculatorBrain.getBMIValue()
        calculatorBrain.getAdvice()
        calculatorBrain.getColor()
      
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
        
       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
             if segue.identifier == "goToResult"{
                 let destinationVC = segue.destination as! ResultViewController
                destinationVC.bmiValue = calculatorBrain.bmiValue
                destinationVC.advice = calculatorBrain.bmiAdvice
                destinationVC.color = calculatorBrain.bmiColor
             }
         }
        
        
    
    
}


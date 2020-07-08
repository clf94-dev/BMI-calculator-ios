//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Carmen Lucas on 14/06/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var heightValue: Float?
    var weightValue: Float?
     
    var bmi:  BMI?
       var bmiValue = "0.0"
    var bmiAdvice: String?
    var bmiColor: UIColor?
    
    mutating func getHeightSlider(_ heightValue: Float) -> Float{
        
        self.heightValue = (heightValue * 100).rounded()/100
       
        return (self.heightValue ?? 0.0)
       
    
    }
    
    mutating func getWeightSlider(_ weightValue: Float) -> Float {
          
          self.weightValue = (weightValue * 10).rounded()/10
      
        return (self.weightValue ?? 0.0)
       
      }
    
    mutating func getBMIValue()  {
        
            let BMIValue = Float(weightValue ?? 0.0)/Float(pow(heightValue ?? 0.0 ,2))
          print((BMIValue*10).rounded()/10)
        self.bmiValue = String (format: "%.1f", BMIValue )
        
        if( BMIValue < 18.5){
            bmi = BMI(value: BMIValue ,advice: "Eat more pies" , color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }else if (BMIValue < 24.9){
            bmi = BMI(value: BMIValue, advice: "Fit as a fiddle", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        }else{
            bmi = BMI(value: BMIValue ,advice: "Eat less pies", color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        }
        
        }
    
    
    mutating func getAdvice()  {
        bmiAdvice = bmi?.advice as! String
      }
    mutating func getColor()  {
        bmiColor = bmi?.color as! UIColor
    }

    
}


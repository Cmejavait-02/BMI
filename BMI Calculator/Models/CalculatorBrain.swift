//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Accrete mac 3 on 28/11/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIvalue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
        
    }
    func getAdvice() -> String{
        return bmi?.advice ?? "No advice"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? .white
    }
    
    mutating func calculateBMI(height: Float, weight: Float){
       let bmiValue =  weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: .blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: .green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: .red)
        }
        
        
        
         // bmi = BMI(value: bmiValue, advice: <#T##String#>, color: <#T##UIColor#>)
    }
    
    
    
}

//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Accrete mac 3 on 28/11/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmivalue : String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmivalue
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
    

}

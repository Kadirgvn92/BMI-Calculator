//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Kadir on 12.12.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblMetre: UILabel!
    @IBOutlet weak var lblKilo: UILabel!
    
    @IBOutlet weak var sliderHeight: UISlider!
    @IBOutlet weak var sliderWeight: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func sliderWeightChanged(_ sender: UISlider) {
        let kilo = String(format: "%.1f", sender.value)
        lblKilo.text = "\(kilo) kg"
    }
    
    @IBAction func sliderHeightChanged(_ sender: UISlider) {
        let boy = String(format: "%.0f", sender.value)
        lblMetre.text = "\(boy) cm"
    }

    @IBAction func btnCalculatePressed(_ sender: UIButton) {
        var height = sliderHeight.value
        var weight = sliderWeight.value
        
        var calculate = weight / (height / 100)
        print(calculate)
    }
    
}


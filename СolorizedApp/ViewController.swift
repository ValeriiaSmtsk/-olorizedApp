//
//  ViewController.swift
//  СolorizedApp
//
//  Created by Валерия Сальник on 05.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var resultColorView: UIView!
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultColorView.layer.cornerRadius = 20
        
        redColorAction()
        greenColorAction()
        blueColorAction()
    }

    @IBAction func redColorAction() {
        redSlider.minimumValue = 0.00
        redSlider.maximumValue = 1
        redSlider.minimumTrackTintColor = .red
        redValueLabel.text = String(format: "%.2f", redSlider.value)
    }
    
    @IBAction func greenColorAction() {
        greenSlider.minimumValue = 0.00
        greenSlider.maximumValue = 1
        greenSlider.minimumTrackTintColor = .green
        greenValueLabel.text = String(format: "%.2f", greenSlider.value)
    }
    
    @IBAction func blueColorAction() {
        blueSlider.minimumValue = 0.00
        blueSlider.maximumValue = 1
        blueSlider.minimumTrackTintColor = .blue
        blueValueLabel.text = String(format: "%.2f", blueSlider.value)
    }
    
    
    
}


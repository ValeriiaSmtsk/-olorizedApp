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
    }

    @IBAction func redColorAction() {
        redValueLabel.text = String(format: "%.2f", redSlider.value)
    }
    
    @IBAction func greenColorAction() {
        greenValueLabel.text = String(format: "%.2f", greenSlider.value)
    }
    
    @IBAction func blueColorAction() {
        blueValueLabel.text = String(format: "%.2f", blueSlider.value)
    }
    
    @IBAction func createNewColorView() {
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        resultColorView.backgroundColor = UIColor(
            red: red,
            green: green,
            blue: blue,
            alpha: 1
        )
    }
}


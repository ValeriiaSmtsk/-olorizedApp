//
//  ViewController.swift
//  СolorizedApp
//
//  Created by Валерия Сальник on 05.03.2022.
//

import UIKit

class SettingsViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet var resultColorView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redTextField: UITextField!
    @IBOutlet var greenTextField: UITextField!
    @IBOutlet var blueTextField: UITextField!
    
    // MARK: - Public Properties
    var delegate: SettingsViewControllerDelegate!
    var backgroundColor: UIColor!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        resultColorView.layer.cornerRadius = 20
        
        getColor(from: backgroundColor)
        createColor()
        
        setValueLabelAndTF(
            for: redLabel, greenLabel, blueLabel,
            and: redTextField, greenTextField, blueTextField
        )
    }
    
    //MARK: - IB Actions
    @IBAction func rgbSlider(_ sender: UISlider) {
        createColor()
        switch sender {
        case redSlider:
            redLabel.text = string(from: redSlider)
            redTextField.text = string(from: redSlider)
        case greenSlider:
            greenLabel.text = string(from: greenSlider)
            greenTextField.text = string(from: greenSlider)
        default:
            blueLabel.text = string(from: blueSlider)
            blueTextField.text = string(from: blueSlider)
        }
    }
    
    @IBAction func doneButtonPressed() {
        dismiss(animated: true)
        delegate.setColor(color: backgroundColor)
    }
    
    // MARK: - Private Methods
    private func setValueLabelAndTF(for labels: UILabel..., and textFields: UITextField...) {
        zip(labels, textFields).forEach { label, textField in
            switch (label, textField) {
            case (redLabel, redTextField):
                redLabel.text = string(from: redSlider)
                redTextField.text = string(from: redSlider)
            case (greenLabel, greenTextField):
                greenLabel.text = string(from: greenSlider)
                greenTextField.text = string(from: greenSlider)
            default:
                blueLabel.text = string(from: blueSlider)
                blueTextField.text = string(from: blueSlider)
            }
        }
    }
    
    private func createColor() {
        resultColorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
        
        backgroundColor = resultColorView.backgroundColor
    }
    
    private func getColor(from color: UIColor) {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        
        color.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        
        redSlider.value = Float(red)
        greenSlider.value = Float(green)
        blueSlider.value = Float(blue)
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}

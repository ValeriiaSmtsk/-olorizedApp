//
//  MainViewController.swift
//  СolorizedApp
//
//  Created by Валерия Смецкая on 19.03.2022.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func setColor(color: UIColor)
}

class MainViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.delegate = self
        settingsVC.backgroundColor = view.backgroundColor
    }
}

// MARK: - SettingsViewControllerDelegate
extension MainViewController: SettingsViewControllerDelegate {
    func setColor(color: UIColor) {
        view.backgroundColor = color
    }
}



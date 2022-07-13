//
//  StartViewController.swift
//  ChangeColorWithSliders
//
//  Created by user on 13.07.2022.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func setUpColor(backgroundColor: UIColor)
}

class StartViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsViewController = segue.destination as? SettingsViewController else { return }
        settingsViewController.lastBackgroundColor = view.backgroundColor
        settingsViewController.delegate = self
    }
}

// MARK: - SettingsViewControllerDelegate
extension StartViewController: SettingsViewControllerDelegate {
    func setUpColor(backgroundColor: UIColor) {
        view.backgroundColor = backgroundColor
    }
}

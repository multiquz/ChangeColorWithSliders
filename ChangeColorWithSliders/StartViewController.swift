//
//  StartViewController.swift
//  ChangeColorWithSliders
//
//  Created by user on 13.07.2022.
//

import UIKit

class StartViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsViewController = segue.destination as? SettingsViewController else { return }
        settingsViewController.lastBackgroundColor = view.backgroundColor
    }
}

// MARK: - SettingsViewControllerDelegate


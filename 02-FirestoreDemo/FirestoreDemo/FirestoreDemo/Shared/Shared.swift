//
//  Shared.swift
//  FirestoreDemo
//
//  Created by Sanghun Park on 2021/12/25.
//

import Foundation
import UIKit


func showError(_ errorLabel: UILabel, _ message: String) {
    errorLabel.text = message
    errorLabel.alpha = 1
}


func transitionToHome(_ storyboard: UIStoryboard?, _ view: UIView) {
    
    let homeViewController = storyboard?.instantiateViewController(withIdentifier: Constants.Storyboard.homeViewController) as? HomeViewController
    
    view.window?.rootViewController = homeViewController
    view.window?.makeKeyAndVisible()
}

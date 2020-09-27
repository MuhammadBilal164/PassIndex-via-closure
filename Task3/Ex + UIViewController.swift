//
//  Ex + UIViewController.swift
//  Task3
//
//  Created by Umer Farooq on 25/09/2020.
//  Copyright © 2020 Umer Farooq. All rights reserved.
//

import Foundation
import UIKit
extension UIViewController {

func showAlertToUser(title: String, message: String, buttonTitle: String) {
    
    let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
    let action = UIAlertAction(title: buttonTitle, style: .default)
    alert.addAction(action)
    present(alert, animated: true)
}
}

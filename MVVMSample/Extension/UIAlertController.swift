//
//  UIAlertController.swift
//  MVVMSample
//
//  Created by Sumit on 07/03/22.
//

import Foundation
import UIKit

extension UIAlertController {

    class func showAlert(_ controller: UIViewController, title: String?, message: String?) {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: { (action) in
           
        })
        alertController.addAction(action)
        controller.present(alertController, animated: true, completion: nil)
    }
}



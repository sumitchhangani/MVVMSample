//
//  LoginViewController.swift
//  MVVMSample
//
//  Created by Sumit on 07/03/22.
//

import UIKit


class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    lazy var viewModel: LoginViewModel = {
        let vwModel = LoginViewModel()
        return vwModel
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onLoginButtonClick(_ sender: UIButton) {
        viewModel.onLoginClick(email: emailTextField.text, password: passwordTextField.text) { (isSuccess, message) in
            if isSuccess {
                UIAlertController.showAlert(self, title: "Success", message: message ?? "")
            } else {
                UIAlertController.showAlert(self, title: "Error!", message: message ?? "")
            }
        }
    }
}

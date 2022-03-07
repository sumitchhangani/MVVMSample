//
//  RegisterViewController.swift
//  MVVMSample
//
//  Created by Sumit on 07/03/22.
//

import UIKit


/*
  This controller will be attached to register screen
  Will connect with RegisterViewModel
  
*/

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    lazy var viewModel: RegisterViewModel = {
        let vwModel = RegisterViewModel()
        return vwModel
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func onRegisterButtonClick(_ sender: UIButton) {
        viewModel.registerUser(with: emailTextField.text, password: passwordTextField.text) { (isSuccess, errorMessage) in
            
        }
    }
}

//
//  LoginViewModel.swift
//  MVVMSample
//
//  Created by Sumit on 07/03/22.
//

import UIKit

class LoginViewModel: NSObject {

    func onLoginClick(email: String?, password: String?, complition:@escaping(Bool, String?) -> Void) {
        
        guard let _email = email?.trimmed, !_email.isEmpty else {
            complition(false, "Please enter email")
            return
        }
        if !_email.isValidEmail {
            complition(false, "Please enter a valid email")
            return
        }
        
        guard let _password = password?.trimmed, !_password.isEmpty else {
            complition(false, "Please enter password")
            return
        }
        
        FirebaseManager.shared.loginWith(email: _email, password: _password) { result in
            switch result {
            case .success(let user):
                complition(true, "User Logged In")
            case .failure(let error):
                complition(false, error.localizedDescription)
            }
        }
    }
}

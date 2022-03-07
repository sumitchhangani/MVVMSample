//
//  FirebaseManager.swift
//  MVVMSample
//
//  Created by Sumit on 07/03/22.
//

import UIKit
import Firebase
import FirebaseAuth

class FirebaseManager: NSObject {

    static let shared = FirebaseManager()
    
    func registerWith(email: String, password: String, completion:@escaping (Result<Any, Error>) -> Void) {
        Auth.auth().createUser(withEmail: email, password: password) {(authData, error) in
            if let user = authData?.user {
                completion(.success(user))
            } else {
                completion(.failure(error!))
            }
        }
    }
    
    func loginWith(email: String, password: String, completion: @escaping (Result<Any, Error>) -> Void) {
        Auth.auth().signIn(withEmail: email, password: password) { (authData, error) in
            if let user = authData?.user {
                completion(.success(user))
            } else {
                completion(.failure(error!))
            }
        }
    }
}

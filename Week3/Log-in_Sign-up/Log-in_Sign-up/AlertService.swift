//
//  File.swift
//  Log-in_Sign-up
//
//  Created by JimmyChao on 2023/9/15.
//

import Foundation
import UIKit


struct AlertService {
    
    //The options for alert
    enum AlertOption: String, CaseIterable {
        case emptyAccount
        case emptyPassword
        case emptyCheckPassword
        case signUpFailed
        case logInFailed
        case success
        
        var info: AlertInfo{

            switch self {
            case .emptyAccount: return AlertInfo(title: "Error", message: "Account should not be empty")
            case .emptyPassword: return AlertInfo(title: "Error", message: "Password should not be empty")
            case .emptyCheckPassword: return AlertInfo(title: "Password not check", message: "Check password field should not be empty")
            case .logInFailed: return AlertInfo(title: "Error", message: "Login failed")
            case .signUpFailed: return AlertInfo(title: "Error", message: "Signup failed")
            case .success: return AlertInfo(title: "Welcome", message: "Welcome to appworks school")
                
            }
        }
    }
    

    //The structure that'll held info of each alter
    struct AlertInfo{
        let title: String
        let message: String
        
        init(title: String = "", message: String = "") {
            self.title = title
            self.message = message
        }
    }
    

    
    
    //Define and assign information corresponding to the alert
    func createAlert(with info: AlertInfo) -> UIAlertController {
        let alertInfo = info
            
        let alertController = UIAlertController(title: alertInfo.title, message: alertInfo.message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(alertAction)
        
        return alertController
    }
}

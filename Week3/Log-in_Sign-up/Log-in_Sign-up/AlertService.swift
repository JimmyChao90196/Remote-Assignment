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
    
    
    struct AlertData{
        //A dictionary use enum as key and struct as value
        var data = [AlertOption: AlertInfo]()
        
        init() {
            self.data[.emptyAccount] = AlertInfo(title: "Error", message: "Account should not be empty")
            self.data[.emptyPassword] = AlertInfo(title: "Error", message: "Password should not be empty")
            self.data[.emptyCheckPassword] = AlertInfo(title: "Password not check", message: "Check password field should not be empty")
            self.data[.logInFailed] = AlertInfo(title: "Error", message: "Login failed")
            self.data[.signUpFailed] = AlertInfo(title: "Error", message: "Signup failed")
            self.data[.success] = AlertInfo(title: "Welcome", message: "Welcome to appwork school")
        }
    }
    
    
    //Define and assign information corresponding to the alert
    func createAlert(info: AlertInfo) -> UIAlertController {
        let alertInfo = info
            
        let alertController = UIAlertController(title: alertInfo.title, message: alertInfo.message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(alertAction)
        
        return alertController
    }
}

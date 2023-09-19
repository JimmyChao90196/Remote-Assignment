//
//  ViewController.swift
//  Log-in_Sign-up
//
//  Created by JimmyChao on 2023/9/15.
//

import UIKit

class ViewController: UIViewController {

    
    //MARK: - IBOutlets
    @IBOutlet weak var segmentControlView: UISegmentedControl!
    @IBOutlet weak var checkLabel: UILabel!
    @IBOutlet weak var accountTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var checkTextField: UITextField!
    
    
    var userInput = UserInput()
    var alertInfo = AlertService.AlertOption.emptyAccount

    
    
    
    //MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeSegment()
        assignDelegat()
    }
    


    //MARK: - functions: Store user input
    
    func storeUserInput(){
        userInput.account = accountTextField.text
        userInput.password = passwordTextField.text
        userInput.check = checkTextField.text
    }
    
    
    //MARK: - function: Input validation
    func validateUserInput() {
        

        //Pass guard if login == false
        guard userInput.login != true else{
            
            guard userInput.account != "" else {  alertInfo = .emptyAccount  ; return }
            guard userInput.password != "" else {  alertInfo = .emptyPassword  ; return }
            
            switch (userInput.account, userInput.password) {
            case ("appworks_school", "1234"): alertInfo = .success
            default: alertInfo = .logInFailed
            }
            return
        }

        
        //If any textfield is not empty, resume the execution
        guard userInput.account != "" || userInput.password != "" || userInput.check != "" else{ alertInfo = .signUpFailed; return }

        guard userInput.account != "" else {  alertInfo = .emptyAccount; return }
        guard userInput.password != "" else {  alertInfo = .emptyPassword; return }
        guard userInput.check != "" else { alertInfo = .emptyCheckPassword; return }
        guard userInput.check == userInput.password else { alertInfo = .signUpFailed; return }

        alertInfo = .success
    }
    
    
    
    
    //MARK: - function: confirmButton
    @IBAction func confirmButtonTapped(_ sender: UIButton) {
        //First store user input to a struct for better management
        storeUserInput()
        
        //Check if everything is validate
        validateUserInput()
      
        //Show alert according to validation result
        let alert = AlertService().createAlert(with: alertInfo.info)
        present(alert, animated: true)
        
    }
    
    
    
    
    
    //Disable password check field according to the segmentSwitch
    @IBAction func segmentSwitch(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0{
            checkTextField.isEnabled = false
            checkTextField.text = ""
            checkTextField.backgroundColor = .gray
            checkLabel.textColor = .gray
            userInput.login = true
            
        }else {
            checkTextField.isEnabled = true
            checkTextField.backgroundColor = .white
            checkLabel.textColor = .black
            userInput.login = false
        }
    }
    
    
    
    
    //Initialize the appearance of segmentControl
    func initializeSegment(){
        
        //Initialize segment control
        segmentControlView.selectedSegmentTintColor = .black
        segmentControlView.backgroundColor = .white
        
        segmentControlView.layer.borderColor = UIColor.black.cgColor
        segmentControlView.layer.borderWidth = 1
        
        let normalAttrib = [NSAttributedString.Key.foregroundColor: UIColor.black]
        segmentControlView.setTitleTextAttributes(normalAttrib, for: .normal)
        
        let selectedAttrib = [NSAttributedString.Key.foregroundColor: UIColor.white]
        segmentControlView.setTitleTextAttributes(selectedAttrib, for: .selected)
        
        
        //Initialize check textfield
        checkTextField.isEnabled = false
        checkTextField.backgroundColor = .gray
        checkLabel.textColor = .gray
    }
    
}




//MARK: - Extension for folding the keyboard
extension ViewController: UITextFieldDelegate{
    
    //AssignDeleget
    func assignDelegat(){
        accountTextField.delegate = self
        passwordTextField.delegate = self
        checkTextField.delegate = self
    }
    
    //Fold the keyboard by using return key
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}


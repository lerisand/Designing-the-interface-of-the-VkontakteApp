//
//  LoginViewController.swift
//  Vkontakte
//
//  Created by Lera on 20.12.20.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var LoginScrollView: UIScrollView?
    @IBOutlet weak var Logo: UIImageView?
    
    @IBOutlet weak var LoginTextField: UITextField?
    @IBOutlet weak var PasswordTextField: UITextField?
    
    @IBAction func LoginButton(_ sender: Any) {}
    
    @IBAction func FacebookLoginButton(_ sender: Any) {}
    @IBAction func AppleLoginButton(_ sender: Any) {}
    
    @IBAction func myUnwindAction (unwindSegue: UIStoryboardSegue) {}
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        LoginScrollView?.addGestureRecognizer(tapGesture)
    }
        

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShown(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)

        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    @objc func keyboardWillShown(notification: Notification) {
        let info = notification.userInfo! as NSDictionary
        let kbSize = (info.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as! NSValue).cgRectValue.size
        
        let contentInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: kbSize.height, right: 0)

        LoginScrollView?.contentInset = contentInsets
        LoginScrollView?.scrollIndicatorInsets = contentInsets
    }

    @objc func keyboardWillHide(notification: Notification) {
        LoginScrollView?.contentInset = UIEdgeInsets.zero
        LoginScrollView?.scrollIndicatorInsets = UIEdgeInsets.zero
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
    }

    @objc func hideKeyboard() {
        LoginScrollView?.endEditing(true)
    }

    private func checkLoginInfo() -> Bool {
        guard let loginText = LoginTextField?.text else { return false }
        guard let passwordText = PasswordTextField?.text else { return false }

        if loginText == "1", passwordText == "1" {
            print("Успешно!")
            return true
        }
        else {
            print("Не успешно")
            return false
        }
    }

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {

        if identifier == "LogInCorrectSegue" {
            if checkLoginInfo() {
                return true
            }
            else {
                showLoginError()
                return false
            }
        }

        return true
    }
    
    private func showLoginError() {
        let alert = UIAlertController(title: "Ошибка!", message: "Логин и/или пароль не верны", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
}
    


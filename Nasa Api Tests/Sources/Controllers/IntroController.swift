//
//  IntroController.swift
//  Nasa Api Tests
//
//  Created by Chrystian Salgado on 02/03/2018.
//  Copyright © 2018 Chrystian Salgado. All rights reserved.
//

import UIKit

class IntroController: UIViewController {

    @IBOutlet weak var loginTf: UITextField!
    @IBOutlet weak var passwordTf: UITextField!
    
    @IBOutlet weak var signInBtn: UIButton!
    @IBOutlet weak var signUpBtn: UIButton!
    
    fileprivate var utils = Utilites()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Adiciona um titulo ao navigation bar
        title = utils.setLocalizableText("WELLCOME")
        
        loginTf.placeholder = utils.setLocalizableText("EMAIL_PLACEHOLDER")
        passwordTf.placeholder = utils.setLocalizableText("PASSWORD_PLACEHOLDER")
        signInBtn.setTitle(utils.setLocalizableText("SIGNIN_BUTTON_TITLE"), for: .normal)
        signUpBtn.setTitle(utils.setLocalizableText("SIGNUP_BUTTON_TITLE"), for: .normal)
    }
    
<<<<<<< HEAD
    private func verifyFields() {
        var alert: UIAlertController!
        if utils.haveEmptyFields([loginTf, passwordTf]) {
            alert = utils.buildAlert(title: utils.setLocalizableText("ERROR"), mensage: utils.setLocalizableText("ERROR_LOGIN"), alertButtons: [.DISMISS], completion: { (_) -> Void? in
                return
            })
        }
        else {
            alert = utils.buildAlert(title: utils.setLocalizableText("LOGIN"), mensage: utils.setLocalizableText("SUCESS_LOGIN"), alertButtons: [.OK]) { (_) -> Void? in
                // chamar aplicação
                print("Retornou aqui")
            }
=======
    private func validLogin()-> Bool {
        if !verifyFields() {
            let alert = utils.buildAlert(title: "ERROR", mensage: "LOGIN_ERROR_BLANK_FIELDS", alertButtons: [.DISMISS]) { (_) -> Void? in return }
            present(alert, animated: true, completion: {
                self.passwordTf.text = ""
            })
        }
        
    }
    
    private func verifyFields()-> Bool {
        var isValid: Bool!
        if (loginTf  != nil) && (passwordTf != nil) {
            isValid = true
        }
        return isValid == true ? true : false
    }
    
    private func validateUser()-> Bool {
        //verificar se existe no CoreData os dados
    }
    
    //MARK: Actions
    
    @IBAction func actionSignIn(_ sender: Any) {
        if validLogin() {
            // chamar menu
            //salvar no userdefaults
>>>>>>> apagar
        }
    }
    
    @IBAction func actionSignIn(_ sender: Any) {
        verifyFields()
    }
    
    @IBAction func actionSignUp(_ sender: Any) {
        // criar uma tela de signup
    }
        
}

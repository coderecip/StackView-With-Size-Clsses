//
//  LoginViewController.swift
//  StackView
//
//  Created by MAC on 04/02/2019.
//  Copyright © 2019 MAC. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var SignuPBtn: UIButton!
    @IBOutlet weak var LoginBtn: UIButton!
    @IBOutlet weak var UserNameTF: UITextField!
    @IBOutlet weak var PasswordTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

       UserNameTF.leftViewMode = .unlessEditing
        PasswordTF.leftViewMode = .unlessEditing
        createImageView()
        LoginBtn.layer.cornerRadius = 10
        
        SignuPBtn.layer.cornerRadius =  10
        
        
    }
    

    func createImageView() {
        let userimage = UIImage(named: "usename.png")!
        let frame = CGRect(x: 0, y: 0, width: 30, height: 20)
        let imageView = UIImageView()
        imageView.frame = frame
        imageView.image = userimage
        UserNameTF.leftView = imageView
        let passImage = UIImage(named: "password.img")!
        let passwordImageView = UIImageView()
        passwordImageView.frame = frame
        passwordImageView.image = passImage
        PasswordTF.leftView = passwordImageView
        
    }

    @IBAction func SignUpVC(_ sender: Any) {
        performSegue(withIdentifier: "SignupID", sender: self)
    }
}

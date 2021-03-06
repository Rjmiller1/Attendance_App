//
//  MenuViewController.swift
//  Attendance_App
//
//  Created by Robert Miller on 3/24/18.
//  Copyright © 2018 Robert Miller. All rights reserved.
//


import UIKit
import Firebase

class MenuViewController: UIViewController {
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var signupButton: UIButton!
    
    @IBAction func handleLogin(_ target: UIButton){
        self.performSegue(withIdentifier: "toLoginScreen", sender: self)
    }
    
    @IBAction func handleSignUp(_ target: UIButton){
        self.performSegue(withIdentifier: "toSignUpScreen", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add the background gradient
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if let user = Auth.auth().currentUser {
            // toHomeScreen is Segue name
            /*
             self.performSegue(withIdentifier: "toHomeScreen", sender: self)
             */
            
            if(user.email?.contains("mail.wvu.edu"))!{
                self.performSegue(withIdentifier: "toInstructorScreen", sender: self)
            }
            
            if(user.email?.contains("mix.wvu.edu"))!{
                self.performSegue(withIdentifier: "toStudentScreen", sender: self)
            }
        }
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        get {
            return .lightContent
        }
    }
    
}

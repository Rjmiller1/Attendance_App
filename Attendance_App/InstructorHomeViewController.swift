//
//  InstructorHomeViewController.swift
//  Attendance_App
//
//  Created by Nicholas Furbee on 3/27/18.
//  Copyright © 2018 Robert Miller. All rights reserved.
//

import Foundation
import UIKit
import Firebase

class InstructorHomeViewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func handleLogout(_ target: UIBarButtonItem){
        try! Auth.auth().signOut()
        self.dismiss(animated: false, completion: nil)
    }
}

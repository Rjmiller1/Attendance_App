//
//  HomeViewController.swift
//  Attendance_App
//
//  Created by Robert Miller on 3/24/18.
//  Copyright © 2018 Robert Miller. All rights reserved.
//

import Foundation
import UIKit
import Firebase

class HomeViewController:UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func handleLogout(_ sender:Any) {
        try! Auth.auth().signOut()
        self.dismiss(animated: false, completion: nil)
    }
}

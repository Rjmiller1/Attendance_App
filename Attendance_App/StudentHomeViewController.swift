//
//  StudentHomeViewController.swift
//  Attendance_App
//
//  Created by Robert Miller on 4/4/18.
//  Copyright © 2018 Robert Miller. All rights reserved.
//

import UIKit
import Foundation
import Firebase

class StudentHomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func handleLogout(_ target: UIBarButtonItem){
        try! Auth.auth().signOut()
        self.dismiss(animated: false, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

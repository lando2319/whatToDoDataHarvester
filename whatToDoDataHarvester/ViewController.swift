//
//  ViewController.swift
//  whatToDoDataHarvester
//
//  Created by MIKE LAND on 3/8/15.
//  Copyright (c) 2015 MIKE LAND. All rights reserved.
//

import UIKit

class ViewController: UIViewController, FBLoginViewDelegate {

    @IBOutlet var fbLoginView : FBLoginView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.fbLoginView.delegate = self
        self.fbLoginView.readPermissions = ["public_profile", "email", "user_friends"]
    }

    func loginViewShowingLoggedInUser(loginView: FBLoginView!) {
        println("User Logged In")
        println("stuff happens")

    }

    func loginViewFetchedUserInfo(loginView: FBLoginView!, user: FBGraphUser!) {
        println("User Name: \(user.name)")
    }

    func loginViewShowingLoggedOutUser(loginView: FBLoginView!) {
        println("User Logged Out")
    }

    func loginView(loginView: FBLoginView!, handleError error: NSError!) {
//        println("Error: \(handleError.localizationDescription)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  AutoLogin
//
//  Created by JIJO G OOMMEN on 12/08/19.
//  Copyright © 2019 JIJO G OOMMEN. All rights reserved.
//

import UIKit

let obj = UserDefaults.standard

class ViewController: UIViewController {
    
   

    @IBOutlet var usernameoutlet: UITextField!
    @IBOutlet var passwordoutlet: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
     obj.set( "aa", forKey: "name")
        obj.set( "aa", forKey: "password")
        
    }

    @IBAction func signiAction(_ sender: Any) {
        
        
        
        let regname = obj.value(forKey: "name") as! String
        let regpass = obj.value(forKey: "password") as! String
        
        if ( usernameoutlet.text == regname &&  passwordoutlet.text == regpass) {
            
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "HomePageid") as! HomePage
            
            self.navigationController?.pushViewController(vc, animated: true)
            
            usernameoutlet.text = ""
            passwordoutlet.text = ""
            
        }
            
            else if (usernameoutlet.text != regname && passwordoutlet.text != regpass)
        {
            print("invalid user")
        }
            
        else if (usernameoutlet.text == "" && passwordoutlet.text == ""){
            
            print("Empty Fields")
            
        }
        
        else {
            print("invalid user")
        }
        
        
    }
    
}

// ref AppDelegate for login checking condition

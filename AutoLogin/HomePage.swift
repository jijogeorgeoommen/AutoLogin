//
//  HomePage.swift
//  AutoLogin
//
//  Created by JIJO G OOMMEN on 12/08/19.
//  Copyright © 2019 JIJO G OOMMEN. All rights reserved.
//

import UIKit


class HomePage: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    

    @IBAction func signoutAction(_ sender: Any) {
       
        obj.removeObject(forKey: "name")
        obj.removeObject(forKey: "password")
        
        
        let bc = self.storyboard?.instantiateViewController(withIdentifier: "ViewControllerid") as! ViewController
        
        self.navigationController?.popToRootViewController(animated: true)
        
    }
    

}

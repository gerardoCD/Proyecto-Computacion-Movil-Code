//
//  ViewController.swift
//  ProyectoCompuMovil
//
//  Created by Caro Kennedy on 04/06/18.
//  Copyright © 2018 Gerardo Castillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnLogin(_ sender: UIButton) {
        
        performSegue(withIdentifier: "login", sender: nil)
    }
    
}


//
//  ViewControllerSinIn.swift
//  ProyectoCompuMovil
//
//  Created by Caro Kennedy on 04/06/18.
//  Copyright © 2018 Gerardo Castillo. All rights reserved.
//

import UIKit
import RealmSwift

class ViewControllerSinIn: UIViewController {

    @IBOutlet weak var imgPerfil: UIImageView!
    

    @IBOutlet weak var lblUser: UITextField!
    
    
    @IBOutlet weak var lblLastName: UITextField!
    @IBOutlet weak var lblName: UITextField!
    
    @IBOutlet weak var lblAddres: UITextField!
    
    @IBOutlet weak var lblPayment: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    @IBAction func btnSignIn(_ sender: UIButton) {
        
        if lblUser.text! == "" && lblName.text == "" && lblLastName.text == "" && lblAddres.text == "" && lblPayment.text == "" {
            let userTemp = User()
            userTemp.user = lblUser.text!
            userTemp.name = lblName.text!
            userTemp.lastName = lblLastName.text!
            userTemp.Addres = lblAddres.text!
            userTemp.paymentMethod = lblPayment.text!
            
            // Get the default Realm
            let realm = try! Realm()
            // Persist your data easily
            try! realm.write {
                realm.add(userTemp)
            }
            
            
        }else{
            print("Poner una alerta de llenar campos")
        }
        
       

    }
}

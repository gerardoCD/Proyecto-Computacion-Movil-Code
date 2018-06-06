//
//  ViewControllerExtraServices.swift
//  ProyectoCompuMovil
//
//  Created by Caro Kennedy on 05/06/18.
//  Copyright © 2018 Gerardo Castillo. All rights reserved.
//

import UIKit

class ViewControllerExtraServices: UIViewController {
    var costBoat = 0
    
    @IBOutlet weak var sw1: UISwitch!
    
    @IBOutlet weak var sw2: UISwitch!
    
    @IBOutlet weak var sw3: UISwitch!
    
    @IBOutlet weak var sw5: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sw1.setOn(false, animated: false)
        sw2.setOn(false, animated: false)
        sw3.setOn(false, animated: false)
        sw5.setOn(false, animated: false)
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
        sw1.setOn(false, animated: false)
        sw2.setOn(false, animated: false)
        sw3.setOn(false, animated: false)
        sw5.setOn(false, animated: false)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func actsw1(_ sender: UISwitch) {
        if(sender.isOn){
            
        }else{
            
        }
    }
    @IBAction func actsw2(_ sender: UISwitch) {
        if sender.isOn {
            
        }else{
            
        }
    }
    
    @IBAction func actsw3(_ sender: UISwitch) {
        if sender.isOn{
            
        }else{
            
        }
    }
    
    @IBAction func actsw4(_ sender: UISwitch) {
        if sender.isOn {
            
        }else{
            
        }
    }
    
    
    @IBAction func btnRentar(_ sender: UIButton) {
        if sw1.isOn {
            costBoat += 500
        }else if sw2.isOn{
            costBoat += 1350
        }else if sw3.isOn{
            costBoat += 1350
        }else if sw5.isOn{
            costBoat += 2000
        }
        
        let alertController = UIAlertController(title: "Success", message: "Tu precio por el bote es: \(costBoat)", preferredStyle: .alert)
        
        let action1 = UIAlertAction(title: "Aceptar", style: .default) { (action:UIAlertAction) in
        }
        alertController.addAction(action1)
        self.present(alertController, animated: true, completion: nil)
        
    }
    
    
  

}

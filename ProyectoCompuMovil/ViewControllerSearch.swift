//
//  ViewControllerSearch.swift
//  ProyectoCompuMovil
//
//  Created by Caro Kennedy on 05/06/18.
//  Copyright © 2018 Gerardo Castillo. All rights reserved.
//

import UIKit
import RealmSwift

class ViewControllerSearch: UIViewController {
    let realm = try! Realm()
    var boatArray = [Boat]()
    var contador = 0
    @IBOutlet weak var imgBoat: UIImageView!
    @IBOutlet weak var txtDescription: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let boats = realm.objects(Boat.self)
        print(boats)
        for boat in boats{
            boatArray.append(boat)
        }
        imgBoat.image = UIImage(data: boatArray[0].imageBoat)
        txtDescription.text = boatArray[0].descriptions
    }
    
    override func viewDidAppear(_ animated: Bool) {
            boatArray.removeAll()
        let boats = realm.objects(Boat.self)
        for boat in boats{
            boatArray.append(boat)

    }
    }

  
    
    @IBAction func btnNext(_ sender: UIButton) {
        
        performSegue(withIdentifier: "segueExtraServices", sender: nil)
    }
    
    @IBAction func swipeLeft(_ sender: UISwipeGestureRecognizer) {
        if( 0 == contador){
            imgBoat.image = UIImage(data: boatArray[contador].imageBoat)
            txtDescription.text = boatArray[contador].descriptions
            contador = boatArray.count - 1
        }else if (0 < contador){
            imgBoat.image = UIImage(data: boatArray[contador].imageBoat)
            txtDescription.text = boatArray[contador].descriptions
            contador -= 1
        }
        
        print("izquierda")
    }
    
  
 
    @IBAction func swipeRigth(_ sender: UISwipeGestureRecognizer) {
        if( boatArray.count - 1  >= contador){
            imgBoat.image = UIImage(data: boatArray[contador].imageBoat)
            txtDescription.text = boatArray[contador].descriptions
            contador += 1
        }else{
            contador = 0
            imgBoat.image = UIImage(data: boatArray[contador].imageBoat)
            txtDescription.text = boatArray[contador].descriptions
            contador += 1
        }
        print("Derecha")
    }
    
}

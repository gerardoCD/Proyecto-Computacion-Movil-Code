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
    var boatArray = [Boat]()
    var contador = 0
    var precio = 0
    let realm = try! Realm()
    @IBOutlet weak var imgBoat: UIImageView!
    @IBOutlet weak var txtDescription: UITextView!
    
    @IBOutlet weak var lblPrecio: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let config = Realm.Configuration(
            schemaVersion: 2,
            migrationBlock: { migration, oldSchemaVersion in
        })
        Realm.Configuration.defaultConfiguration = config
        
        
        
        let boats = realm.objects(Boat.self)
        print(boats)
        for boat in boats{
            boatArray.append(boat)
        }
        imgBoat.image = UIImage(data: boatArray[0].imageBoat)
        txtDescription.text = boatArray[0].descriptions
        lblPrecio.text = String(boatArray[0].precio)
    }
    
    override func viewDidAppear(_ animated: Bool) {
            boatArray.removeAll()
        let boats = realm.objects(Boat.self)
        for boat in boats{
            boatArray.append(boat)

    }
    }

  
    
    @IBAction func btnNext(_ sender: UIButton) {
        
        performSegue(withIdentifier: "qs1", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? ViewControllerExtraServices {
            destination.costBoat = precio
        }
        
    }
    
    
    @IBAction func swipeLeft(_ sender: UISwipeGestureRecognizer) {
        if( 0 == contador){
            imgBoat.image = UIImage(data: boatArray[contador].imageBoat)
            txtDescription.text = boatArray[contador].descriptions
            lblPrecio.text = String(boatArray[contador].precio)
            precio = boatArray[contador].precio
            contador = boatArray.count - 1
        }else if (0 < contador){
            imgBoat.image = UIImage(data: boatArray[contador].imageBoat)
            txtDescription.text = boatArray[contador].descriptions
            lblPrecio.text = String(boatArray[contador].precio)
            precio = boatArray[contador].precio
            contador -= 1
        }
        
        print("izquierda")
        print(contador)
    }
    
  
 
    @IBAction func swipeRigth(_ sender: UISwipeGestureRecognizer) {
        if( boatArray.count - 1  >= contador){
            imgBoat.image = UIImage(data: boatArray[contador].imageBoat)
            txtDescription.text = boatArray[contador].descriptions
            lblPrecio.text = String(boatArray[contador].precio)
            precio = boatArray[contador].precio
            contador += 1
        }else{
            contador = 0
            imgBoat.image = UIImage(data: boatArray[contador].imageBoat)
            txtDescription.text = boatArray[contador].descriptions
            lblPrecio.text = String(boatArray[contador].precio)
            precio = boatArray[contador].precio
            contador += 1
        }
        print("Derecha")
        print(contador)
    }
    
}

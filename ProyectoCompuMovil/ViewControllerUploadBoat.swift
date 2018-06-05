//
//  ViewControllerUploadBoat.swift
//  ProyectoCompuMovil
//  Copyright © 2018 Gerardo Castillo. All rights reserved.
//

import UIKit
import RealmSwift

class ViewControllerUploadBoat: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    var imageData = Data()
    var boatTemp = Boat()
    @IBOutlet weak var imgBoat: UIImageView!
    
    @IBOutlet weak var txtDescription: UITextView!
    
    @IBOutlet weak var lblPrice: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  
    @IBAction func btnAdd(_ sender: UIButton) {
        if (lblPrice.text != "" && txtDescription.text != "" && !imageData.isEmpty) {
            // Get the default Realm
            let config = Realm.Configuration(
                schemaVersion: 2,
                migrationBlock: { migration, oldSchemaVersion in
            })
            Realm.Configuration.defaultConfiguration = config
            let realm = try! Realm()
            boatTemp.imageBoat = imageData
            boatTemp.descriptions = txtDescription.text 
            boatTemp.precio = Int(lblPrice.text!)!
            try! realm.write {
                realm.add(boatTemp)
            }
            
            txtDescription.text = ""
            imgBoat.image = UIImage(named: "barco2")
            lblPrice.text = ""
            
        }else{
                print("Poner una alerta de llenar campos")
        }
    }
    
    
    @IBAction func gstImage(_ sender: UITapGestureRecognizer) {
        
        let image = UIImagePickerController()
        image.delegate = self
        
        image.sourceType = UIImagePickerControllerSourceType.photoLibrary
        
        image.allowsEditing = false
        
        self.present(image, animated: true)
        {
            //After it is complete
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any])
    {
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage
        {
            imgBoat.image = image
            imageData =  UIImagePNGRepresentation(image)!
        }
        else
        {
            //Error message
        }
        
        self.dismiss(animated: true, completion: nil)
    }
    
}

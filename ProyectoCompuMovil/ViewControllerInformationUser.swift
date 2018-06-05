//
//  ViewControllerInformationUser.swift
//  ProyectoCompuMovil
//
//  Copyright © 2018 Gerardo Castillo. All rights reserved.
//

import UIKit
import RealmSwift

class ViewControllerInformationUser: UIViewController {

    @IBOutlet weak var imgUser: UIImageView!
    
    @IBOutlet weak var lblUser: UILabel!
    
    @IBOutlet weak var lbName: UILabel!
    
    @IBOutlet weak var lbladdres: UILabel!
    
    @IBOutlet weak var lblPayMethod: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblUser.text = UserData.user
        lbName.text = UserData.name
        lbladdres.text = UserData.addres
        lblPayMethod.text = UserData.paymentmethod
        imgUser.image = UIImage(data: UserData.img)
//        var imageUIImage: UIImage = UIImage(data: imageData)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}

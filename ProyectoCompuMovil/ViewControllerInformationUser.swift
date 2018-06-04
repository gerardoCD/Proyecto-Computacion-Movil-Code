//
//  ViewControllerInformationUser.swift
//  ProyectoCompuMovil
//
//  Created by Caro Kennedy on 04/06/18.
//  Copyright © 2018 Gerardo Castillo. All rights reserved.
//

import UIKit

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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

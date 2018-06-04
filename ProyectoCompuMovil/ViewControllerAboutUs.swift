//
//  ViewControllerAboutUs.swift
//  ProyectoCompuMovil
//
//  Created by Caro Kennedy on 04/06/18.
//  Copyright © 2018 Gerardo Castillo. All rights reserved.
//

import UIKit



class ViewControllerAboutUs: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnCorreo(_ sender: UIButton) {
        UIApplication.shared.openURL(NSURL(string:"https://login.live.com/login.srf?wa=wsignin1.0&rpsnv=13&ct=1528154713&rver=6.7.6640.0&wp=MBI_SSL&wreply=https%3a%2f%2foutlook.live.com%2fowa%2f%3fauthRedirect%3dtrue%26RpsCsrfState%3da229cd4b-50b6-4fd0-38c9-075960400999&id=292841&whr=live.com.mx&CBCXT=out&lw=1&fl=dob%2cflname%2cwld&cobrandid=90015")! as URL)
    }
    
    @IBAction func btnFacebook(_ sender: UIButton) {
        UIApplication.shared.openURL(NSURL(string:"https://www.facebook.com/")! as URL)
    }
    
}

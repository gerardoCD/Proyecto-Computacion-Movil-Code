//
//  Models.swift
//  ProyectoCompuMovil
//
//  Created by Caro Kennedy on 04/06/18.
//  Copyright © 2018 Gerardo Castillo. All rights reserved.
//

import Foundation
import RealmSwift

// Dog model
class User: Object {
    @objc dynamic var imagePerfil = Data()
    @objc dynamic var user = ""
    @objc dynamic var name = ""
    @objc dynamic var lastName = ""
    @objc dynamic var Addres = ""
    @objc dynamic var paymentMethod = ""
}

class Boat: Object {
    @objc dynamic var imageBoat = Data()
    @objc dynamic var descriptions = ""

}



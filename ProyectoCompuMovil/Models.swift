//
//  Models.swift
//  ProyectoCompuMovil
//
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
    @objc dynamic var total = 0
    
}

class Boat: Object {
    @objc dynamic var imageBoat = Data()
    @objc dynamic var descriptions = ""
    @objc dynamic var precio = 0

}



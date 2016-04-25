//
//  UserLogged.swift
//  iOSTodoApp
//
//  Created by daferpi on 25/04/16.
//  Copyright © 2016 daferpi. All rights reserved.
//

import UIKit

struct UserLogged:User, UserValidator {
    
    var userName:String!
    var password:String!
    
    init(userName:String, password:String) {
        self.userName = userName
        self.password = password
    }
    
    func validateCredentials(password: String?) -> Bool {
        if let pass = password where self.password == pass {
            return true
        }
        return false
    }
    
    
}

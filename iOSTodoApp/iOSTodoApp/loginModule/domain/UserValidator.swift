//
//  UserValidator.swift
//  iOSTodoApp
//
//  Created by daferpi on 25/04/16.
//  Copyright © 2016 daferpi. All rights reserved.
//

import UIKit

protocol UserValidator {
    
    func validateCredentials(password:String?) -> Bool
    
}

//
//  PersonViewModel.swift
//  Test-1
//
//  Created by Hassan Abbasi on 10/08/2020.
//  Copyright © 2020 Hassan Abbasi. All rights reserved.
//

import Foundation
import UIKit

class PersonViewModel{
    
    var name:String
    var loginImage:UIImage?
    
    init(person:Person){
        name = person.name
        loginImage = person.isLoggedIn ?  UIImage(named:"LoggedIN") :   UIImage(named:"NotLoggedIN")


//        if person.isLoggedIn{
//            icon.image = UIImage(named:"LoggedIN")
//
//        }
//        else{
//            icon.image = UIImage(named:"NotLoggedIN")
//
//        }
    }
    
}

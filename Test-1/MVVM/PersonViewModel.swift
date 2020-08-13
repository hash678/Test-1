//
//  PersonViewModel.swift
//  Test-1
//
//  Created by Hassan Abbasi on 10/08/2020.
//  Copyright © 2020 Hassan Abbasi. All rights reserved.
//

import Foundation
import UIKit

class PersonViewModel:MyTutorCollectionVIewDataProtcol{
    var image: UIImage
    
    
    var name:String
    
    init(person:Person){
        name = person.name
        image = person.isLoggedIn ?  UIImage(named:"LoggedIN")! :   UIImage(named:"NotLoggedIN")!


    }
    
}

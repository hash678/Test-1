//
//  PersonModel.swift
//  Test-1
//
//  Created by Hassan Abbasi on 10/08/2020.
//  Copyright © 2020 Hassan Abbasi. All rights reserved.
//

import Foundation



struct Person{
    var name:String
    var gender:Gender
    var ethincity:String
    var isLoggedIn:Bool
    
    
    enum Gender:String{
        case Male
        case Female
    }
}

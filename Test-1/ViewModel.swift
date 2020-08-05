//
//  ViewModel.swift
//  Test-1
//
//  Created by Hassan Abbasi on 03/08/2020.
//  Copyright © 2020 Hassan Abbasi. All rights reserved.
//

import Foundation
import UIKit

class ViewModel{


    
    func sendData(completion:() -> Void){
        completion()
    }
    
    
    static var sharedInstance = ViewModel()
    var myViewController:UIViewController?
    
}

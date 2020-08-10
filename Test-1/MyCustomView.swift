//
//  MyCustomView.swift
//  Test-1
//
//  Created by Hassan Abbasi on 10/08/2020.
//  Copyright © 2020 Hassan Abbasi. All rights reserved.
//

import Foundation
import UIKit



class MyGenericObject<MyType>:UIView{
   
    private var myNameLabel = UILabel()
    
    
    var item:MyType?
    
    func setDatasource(item:MyType, howToSetValue:(MyType) -> String){
        self.item = item
        self.myNameLabel.text = howToSetValue(item)

    }
    
    
    
}


//
//  PersonView.swift
//  Test-1
//
//  Created by Hassan Abbasi on 10/08/2020.
//  Copyright © 2020 Hassan Abbasi. All rights reserved.
//

import Foundation
import UIKit

class PersonView<ViewModel>:UIView{
    
    var nameLabel = UILabel()
    
    var icon:UIImageView = UIImageView()
    
    
    
    
    init(frame:CGRect, viewModel:ViewModel, setData:(ViewModel, PersonView) -> Void){
        super.init(frame: frame)
        setData(viewModel,self)
        //setData(viewModel: viewModel)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
//
//    fileprivate func setData(viewModel:ViewModel){
////        nameLabel.text = person.name
////        icon.image = person.loginImage
//    }
}

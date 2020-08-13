//
//  MyTutorCollectionVIewCell.swift
//  Test-1
//
//  Created by Hassan Abbasi on 11/08/2020.
//  Copyright © 2020 Hassan Abbasi. All rights reserved.
//

import Foundation
import UIKit

protocol MyTutorCollectionVIewDataProtcol{
    var name:String{
        get set
    }
    var image:UIImage{
        get set
    }
    
}

//Section 1, horizontal item

//This represents the cell for each item in the horizontal list of our first Section
class MyTutorCollectionVIewCell:UICollectionViewCell{
    var imageView = UIImageView()
    var name = UILabel()
    
   func setDataForCell(withModel model:MyTutorCollectionVIewDataProtcol){
    name.text = model.name
    imageView.image = model.image
    }
}


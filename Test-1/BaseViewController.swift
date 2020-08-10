//
//  BaseViewController.swift
//  Test-1
//
//  Created by Hassan Abbasi on 06/08/2020.
//  Copyright © 2020 Hassan Abbasi. All rights reserved.
//

import Foundation
import UIKit

class BaseViewController:UIViewController{
    
    //Pan gesture
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
    }
    
    func showError(){
        
        let myView = PersonView<PersonViewModel>(frame: .zero, viewModel: PersonViewModel(person: Person(name: "Name", gender: .Male, ethincity: "", isLoggedIn: true))) { (person, view) in
            view.nameLabel.text = person.name
            view.icon.image = person.loginImage
        }
        
        
    }
    
    
    
    
    
}


/**
 MVC
 
 Model -> Data Model -> Object
 
 View -> Display part of the app (Storyboard)
 Controller -> Connects your model to your view
 */


/**
 MVVM (Overkill for small projects)
 
 
Model -> Data Model -> Object
 Favouritie Color:
 
 View -> This has no idea about the model. It is only concerned with how things will look
 
 ViewModel -> Translates model into the view
 If favColor == "Black"{

 }
 
 */

struct Car{
    var color:String
    
    
}

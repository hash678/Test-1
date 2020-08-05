//
//  SecondViewController.swift
//  Test-1
//
//  Created by Hassan Abbasi on 04/08/2020.
//  Copyright © 2020 Hassan Abbasi. All rights reserved.
//

import Foundation
import UIKit


class SecondViewController:UIViewController{
    
    //Strong Ref
    var myOldViewController:UIViewController?
    
    deinit {
        print("Deinitailzing Second Viecontroller")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemPink
 
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.dismiss(animated: true, completion: nil)
        }
    }
  
    
}

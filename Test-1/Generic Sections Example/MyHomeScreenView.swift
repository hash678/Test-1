
//
//  MyHomeScreenView.swift
//  Test-1
//
//  Created by Hassan Abbasi on 11/08/2020.
//  Copyright © 2020 Hassan Abbasi. All rights reserved.
//

import Foundation
import UIKit




//Main Screen
class MyHomeScreenView:UIView, UITableViewDataSource,UITableViewDelegate{
    
    
    
    //TableView : This holds all the sections

     lazy var tableView:UITableView = {
         let tableView = UITableView()
         tableView.register(TableViewSectionCell<MyTutorCollectionVIewCell,Person>.self, forCellReuseIdentifier: "personSection")

         return tableView
     }()
     
     
    
    //This is the number of sections in our example.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    
    
      //This is the mapping of a horizontal list item to its' view model
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0{
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "personSection") as! TableViewSectionCell<MyTutorCollectionVIewCell,Person>
        cell.setupCell = {(cell,viewModel) in
            
            cell.setupCell(model: viewModel)
            return cell
        }
        return cell
    }
     
        return UITableViewCell()
    
    }
 
    
}


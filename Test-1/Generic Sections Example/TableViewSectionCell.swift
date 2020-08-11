//
//  TableViewSectionCell.swift
//  Test-1
//
//  Created by Hassan Abbasi on 11/08/2020.
//  Copyright © 2020 Hassan Abbasi. All rights reserved.
//

import Foundation
import UIKit


//Each Section Cell
class TableViewSectionCell<MyOwnCell:UICollectionViewCell, ViewModel>:UITableViewCell,
UICollectionViewDelegate,UICollectionViewDataSource
{
    
    
    
    //Items of the horizontal list
    var datasource = [ViewModel]()
    
    //Horizontal list

    fileprivate lazy var collectionView:UICollectionView = {
        let c = UICollectionView()
        c.translatesAutoresizingMaskIntoConstraints = false
        c.register(MyOwnCell.self, forCellWithReuseIdentifier: "")
        
        return c
    }()
    
    //Function to map each item in the horizontal list
    var setupCell:( (MyOwnCell,ViewModel) -> MyOwnCell)?

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return datasource.count
    }
    
    
  
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "", for: indexPath) as! MyOwnCell
        return setupCell?(cell,datasource[indexPath.row]) ?? cell
       
    }
    
    

    



    
    
    
}

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
    
    //Function to map each item in the horizontal list
    var setupCell:( (MyOwnCell,ViewModel) -> Void)?

    
    //Items of the horizontal list
    var datasource = [ViewModel]()
    
    //Horizontal list

    fileprivate lazy var collectionView:UICollectionView = {
        let c = UICollectionView()
        c.translatesAutoresizingMaskIntoConstraints = false
        c.register(MyOwnCell.self, forCellWithReuseIdentifier: "")
        
        return c
    }()
    

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    
  
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "", for: indexPath) as! MyOwnCell
        setupCell?(cell,datasource[indexPath.row])
        return  cell
       
    }
    
    

    



    
    
    
}

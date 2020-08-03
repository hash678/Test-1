//
//  AlertBox.swift
//  Test-1
//
//  Created by Hassan Abbasi on 03/08/2020.
//  Copyright © 2020 Hassan Abbasi. All rights reserved.
//

import Foundation
import UIKit

class AlertBox:UIView{
    
    fileprivate lazy var mainBackground:UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = .white
        
        return v
    }()
    
    
    fileprivate lazy var stackView:UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.distribution = .equalSpacing
        stack.spacing = 8
        stack.axis = .vertical
        return stack
    }()
    
    
    
    fileprivate func setupViews(){
        self.addSubview(mainBackground)
        mainBackground.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        mainBackground.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        mainBackground.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.8).isActive = true
        
        mainBackground.addSubview(stackView)
         stackView.leftAnchor.constraint(equalTo: mainBackground.leftAnchor,constant: 8).isActive = true
               stackView.rightAnchor.constraint(equalTo: mainBackground.rightAnchor,constant: -8).isActive = true
               stackView.topAnchor.constraint(equalTo: mainBackground.topAnchor,constant: 8).isActive = true
               stackView.bottomAnchor.constraint(equalTo: mainBackground.bottomAnchor,constant: -8).isActive = true
        
        //Right Anchor | Bottom Anchor
        // Negative Spacing
       

    }
    
    
    func addButtons(text:String, completion:@escaping () -> Void){
        let view = Button()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.heightAnchor.constraint(equalToConstant: 50).isActive = true
        view.backgroundColor = .blue
        
        view.action = {
            
            completion()
            
        }
        stackView.addArrangedSubview(view)
        
    }
    
    @objc fileprivate func didClick(){
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupViews()
    }
    
    
    
}

class Button:UIButton{
    
    var action:( () -> Void)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addTarget(self, action: #selector(didClick), for: .touchUpInside)
    }
    
    @objc fileprivate func didClick(){
        action?()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    
    
}

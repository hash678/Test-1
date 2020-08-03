//
//  ViewController.swift
//  Test-1
//
//  Created by Hassan Abbasi on 03/08/2020.
//  Copyright © 2020 Hassan Abbasi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    static var font:UIFont = UIFont.systemFont(ofSize: 12)
    
    
     override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        
       //  myName = "Hassan"
        
        let alertBox = AlertBox()
        alertBox.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(alertBox)
        
        alertBox.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        alertBox.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        alertBox.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        alertBox.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        alertBox.addButtons(text:"Okay",completion: {
            print("Hello there")
            
            
        })
     }
    
    
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)


    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

    }

}


//Retain Cycle
//Strong Ref | Weak Ref


//Abstraction
class LoadingView:UIView{
    static var loadingView:LoadingView?

    
   static func hideLoading(){
    print("Hide Loading")
    
    UIView.animate(withDuration: 0.5
        , animations: {
            loadingView?.label.transform = CGAffineTransform(scaleX: 2, y: 2)
    }) { (_) in
        loadingView?.removeFromSuperview()

    }
    
    }
    
    
    static func showLoading(viewControllerView:UIView? = nil){
        guard let mainView:UIView = UIApplication.shared.keyWindow ?? viewControllerView else{return}

        loadingView = LoadingView()
        
        guard let loadingView = loadingView else{return}
        loadingView.translatesAutoresizingMaskIntoConstraints = false
        mainView.addSubview(loadingView)
        loadingView.leftAnchor.constraint(equalTo: mainView.leftAnchor).isActive = true
        loadingView.rightAnchor.constraint(equalTo: mainView.rightAnchor).isActive = true
        loadingView.topAnchor.constraint(equalTo: mainView.topAnchor).isActive = true
        loadingView.bottomAnchor.constraint(equalTo: mainView.bottomAnchor).isActive = true

    }
    
    
    var font:UIFont?{
        didSet{
            label.font = font
        }
    }
    
    var backgroundAlpha:CGFloat = 0.6{
        didSet{}
    }
    
    
    
      fileprivate lazy var overlay:UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = .black
        v.alpha = 0.6
        return v
    }()
    
    fileprivate lazy var label:UILabel = {
        let labl = UILabel()
        labl.translatesAutoresizingMaskIntoConstraints = false
        labl.text = "Loading..."
        labl.textColor = .white
        return labl
    }()
    
    

fileprivate func setupViews(){
        self.addSubview(overlay)
        overlay.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        overlay.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        overlay.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        overlay.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true

    
    self.addSubview(label)
    label.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    label.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true

    }
    
    
    //When you're inflating with code
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        
    }
    
    //When you're inflating with storyboard/xib
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupViews()

    }
  
    
}

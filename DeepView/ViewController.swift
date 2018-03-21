//
//  ViewController.swift
//  DeepView
//
//  Created by Michael Vilabrera on 3/20/18.
//  Copyright © 2018 Michael Vilabrera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layerView(inside: self.view, number: 3)
        
    }
    
    func layerView(inside view: UIView, number: Int) {
        
        if number == 0 {
            return
        }
        
        let reducedWidth = view.bounds.width / 2
        let reducedHeight = view.bounds.height / 2
        let smallerOfHeightWidth = (reducedWidth > reducedHeight ? reducedWidth : reducedHeight)
        
        let newView = UIView(frame: CGRect(x: 0, y: 0, width: reducedWidth, height: reducedHeight))
        if number % 2 == 0 {
            newView.backgroundColor = UIColor.orange
        } else {
            newView.backgroundColor = UIColor.green
        }
        
        newView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(newView)
        
        newView.widthAnchor.constraint(equalToConstant: smallerOfHeightWidth).isActive = true
        newView.heightAnchor.constraint(equalToConstant: smallerOfHeightWidth).isActive = true
        newView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        newView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        layerView(inside: newView, number: number - 1)
    }
}


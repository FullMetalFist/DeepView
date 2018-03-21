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
        
        let newView = UIView(frame: CGRect(x: 0, y: 0, width: reducedWidth, height: reducedHeight))
        if number % 2 == 0 {
            newView.backgroundColor = UIColor.orange
        } else {
            newView.backgroundColor = UIColor.green
        }
        
        newView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(newView)
        
//        var constraints = NSLayoutConstraint.constraints(withVisualFormat: "H:[superview]-(<=1)-[newView]",
//                                                         options: NSLayoutFormatOptions.alignAllCenterY,
//                                                         metrics: nil,
//                                                         views: ["superview":
//                                                            view, "newView": newView])
//        view.addConstraints(constraints)
//
//        constraints = NSLayoutConstraint.constraints(withVisualFormat: "V:[superview]-(<=1)-[newView]",
//                                                     options: NSLayoutFormatOptions.alignAllCenterX,
//                                                     metrics: nil,
//                                                     views: ["superview": view, "newView": newView])
//        view.addConstraints(constraints)
        
//        newView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//        newView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
//        let widthC = NSLayoutConstraint(item: newView, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0.5, constant: 1)
//        let heightC = NSLayoutConstraint(item: newView, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 0.5, constant: 1)
//        let midXC = NSLayoutConstraint(item: newView, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 0.5, constant: 1)
//        let midYC = NSLayoutConstraint(item: newView, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 0.5, constant: 1)
        
        
        newView.widthAnchor.constraint(equalToConstant: reducedWidth).isActive = true
        newView.heightAnchor.constraint(equalToConstant: reducedHeight).isActive = true
        newView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        newView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        layerView(inside: newView, number: number - 1)
    }
}


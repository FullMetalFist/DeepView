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
        
        let newView = UIView(frame: CGRect(x: 0, y: 0, width: view.bounds.width / 2, height: view.bounds.height / 2))
        if number % 2 == 0 {
            newView.backgroundColor = UIColor.orange
        } else {
            newView.backgroundColor = UIColor.green
        }
        view.addSubview(newView)
        
        var constraints = NSLayoutConstraint.constraints(withVisualFormat: "H:[superview]-(<=1)-[newView]",
                                                         options: NSLayoutFormatOptions.alignAllCenterY,
                                                         metrics: nil,
                                                         views: ["superview":
                                                            view, "newView": newView])
        view.addConstraints(constraints)
        
        constraints = NSLayoutConstraint.constraints(withVisualFormat: "V:[superview]-(<=1)-[newView]",
                                                     options: NSLayoutFormatOptions.alignAllCenterX,
                                                     metrics: nil,
                                                     views: ["superview": view, "newView": newView])
        view.addConstraints(constraints)
        
        
        layerView(inside: newView, number: number - 1)
    }
}


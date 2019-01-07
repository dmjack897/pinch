//
//  ViewController.swift
//  PinchGesture
//
//  Created by 심동목 on 2018/10/01.
//  Copyright © 2018年 シムどんモク. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var txtPinch: UILabel!
    
    @IBOutlet var imgPinch: UIImageView!
    var initialFontSize:CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let pinch = UIPinchGestureRecognizer(target: self, action: #selector(ViewController.doPinch(_:)))
        self.view.addGestureRecognizer(pinch)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @objc func doPinch(_ pinch: UIPinchGestureRecognizer)
    {
        imgPinch.transform = imgPinch.transform.scaledBy(x: pinch.scale, y: pinch.scale)
    }

}


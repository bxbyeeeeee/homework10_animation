//
//  ViewController.swift
//  实验十animation
//
//  Created by student on 2018/12/13.
//  Copyright © 2018年 baoxinbei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { [weak weakSelf=self] (mytimer) in weakSelf?.myView.center.x += 20
        })
    }

    @IBAction func btnClicked(_ sender: Any) {
        timer?.invalidate()
        UIView.animate(withDuration: 4, delay: 1, options: [.curveLinear,.autoreverse], animations: {
            self.myView.alpha = 0
            self.myView.center.x = self.view.bounds.width
            self.myView.backgroundColor = UIColor.purple
            self.myView.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi))
            self.myView.transform = CGAffineTransform.identity
            self.myView.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi))
            self.myView.transform = CGAffineTransform.identity
            self.myView.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi))
            self.myView.transform = CGAffineTransform.identity
            self.myView.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi))
            self.myView.transform = CGAffineTransform.identity
            self.myView.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi))
            self.myView.transform = CGAffineTransform.identity
            self.myView.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi))
            self.myView.transform = CGAffineTransform.identity
            self.myView.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi))
            self.myView.transform = CGAffineTransform.identity
        }) { (finished) in
            if finished{
                self.myView.removeFromSuperview()
        }
        }
    }
    
}


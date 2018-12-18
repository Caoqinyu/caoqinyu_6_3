//
//  ViewController.swift
//  caoqinyu_6_3
//
//  Created by student on 2018/12/13.
//  Copyright © 2018年 caoqinyu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let yellowview=UIView()
        yellowview.backgroundColor=UIColor.yellow
           self.view.addSubview(yellowview)
         yellowview.translatesAutoresizingMaskIntoConstraints = false

        let greenview=UIView()
        greenview.backgroundColor=UIColor.green
        self.view.addSubview(greenview)
        greenview.translatesAutoresizingMaskIntoConstraints = false
        
        //自身宽度约束
        let widthConstraint = NSLayoutConstraint(item: yellowview, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 0.0, constant: 200)
        yellowview.addConstraint(widthConstraint)
       //自身高度约束
        let heightConstraint = NSLayoutConstraint(item: yellowview, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 0.0, constant: 100)
        yellowview.addConstraint(heightConstraint)
        //右边约束
        let rightConstraint = NSLayoutConstraint(item: yellowview, attribute: .right, relatedBy: .equal, toItem: self.view, attribute: .right, multiplier: 1.0, constant: -20)
        yellowview.superview!.addConstraint(rightConstraint)//父控件添加约束
        //左边约束
        let leftConstraint = NSLayoutConstraint(item: yellowview, attribute: .left, relatedBy: .equal, toItem: self.view, attribute: .left, multiplier: 1.0, constant: 20)
        yellowview.superview!.addConstraint(leftConstraint)//父控件添加约束
        //上边约束
        let topConstraint = NSLayoutConstraint(item: yellowview, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 20)
        yellowview.superview!.addConstraint(topConstraint)
        //下边约束
        let bottomConstraint = NSLayoutConstraint(item: yellowview, attribute: .bottom, relatedBy: .equal, toItem: greenview, attribute: .top, multiplier: 1.0, constant: -20)
        yellowview.superview?.addConstraint(bottomConstraint)
        
        //自身宽度约束
        let gwidthConstraint = NSLayoutConstraint(item: greenview, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 0.0, constant: 200)
        greenview.addConstraint(gwidthConstraint)
        //自身高度约束
        let gheightConstraint = NSLayoutConstraint(item: greenview, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 0.0, constant: 100)
        greenview.addConstraint(gheightConstraint)
        //右边约束
        let grightConstraint = NSLayoutConstraint(item: greenview, attribute: .right, relatedBy: .equal, toItem: self.view, attribute: .right, multiplier: 1.0, constant: -20)
        greenview.superview!.addConstraint(grightConstraint)//父控件添加约束
        //左边约束
        let gleftConstraint = NSLayoutConstraint(item: greenview, attribute: .left, relatedBy: .equal, toItem: self.view, attribute: .left, multiplier: 1.0, constant: 20)
        greenview.superview!.addConstraint(gleftConstraint)//父控件添加约束
        //上边约束
        let gtopConstraint = NSLayoutConstraint(item: greenview, attribute: .top, relatedBy: .equal, toItem: yellowview, attribute: .bottom, multiplier: 1.0, constant: 20)
        greenview.superview?.addConstraint(gtopConstraint)
        //下边约束
        let gbottomConstraint = NSLayoutConstraint(item: greenview, attribute: .bottom, relatedBy: .equal, toItem: self.view, attribute: .bottom, multiplier: 1.0, constant: -20)
        greenview.superview?.addConstraint(gbottomConstraint)
    }

}


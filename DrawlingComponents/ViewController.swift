//
//  ViewController.swift
//  DrawlingComponents
//
//  Created by Christian Petersen
//  Copyright (c) 2015 Reversebox. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  var scroller = RBScrollView(frame: CGRectMake(0, 100, 640, 80))
  var smallScroller: RBScrollView = RBScrollView(frame: CGRectMake(0, 200, 640, 80))

  
  override func viewDidLoad() {
    
    scroller.backgroundColor = UIColor.clearColor()
    smallScroller.backgroundColor = UIColor.clearColor()
    //scroller.contentSize = CGSizeMake(1136, 64)
    
    for (var i = 0; i < 10; i++) {
      
      // (current * (size + margin) + offset)
      var avatar: RBAvatarView = RBAvatarView(frame: CGRectMake(CGFloat(i * 48), 16, 48, 48),
        image: UIImage(named: "avatarStd")!)
      
      //(size + (size / 2)) + offset
      var avatarSmall: RBAvatarView = RBAvatarView(frame: CGRectMake(CGFloat(i * 32), 16, 32, 32),
        image: UIImage(named: "avatarStd")!)
      
      let rotation: CGFloat = ( i % 2 == 0) ? 0.00 : -0.00
      
      avatar.rotation = rotation
      avatarSmall.rotation = rotation
      
      scroller.addSubview(avatar)
      smallScroller.addSubview(avatarSmall)
    }
    
    self.view.addSubview(scroller)
    self.view.addSubview(smallScroller)
    super.viewDidLoad()
  }
  
  override func viewDidLayoutSubviews() {
    
  }
  
}


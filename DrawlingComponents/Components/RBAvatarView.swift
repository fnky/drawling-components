//
//  RBAvatar.swift
//  DrawlingComponents
//
//  Created by Christian Petersen
//  Copyright (c) 2015 Reversebox. All rights reserved.
//

import Foundation
import UIKit

class RBAvatarView : UIView {
  
  var imageView: UIImageView? = nil
  var rotation: CGFloat = 0.0 // 0 degrees to 360 degrees
  var pointView: RBPointView? = nil

  init(frame: CGRect, image: UIImage) {
    super.init(frame: frame)
    self.imageView = UIImageView(image: image)
    self.imageView?.frame = self.bounds
    
    var pSize = frame.size.width * 0.5
    self.pointView = RBPointView(frame: CGRectMake(
      (CGRectGetWidth(self.bounds) - (pSize/1.5)), -(pSize/2.0), pSize, pSize))
    let borderWidth: CGFloat = self.pointView!.layer.borderWidth
    println(frame.size.width)
    self.pointView?.layer.borderWidth = frame.size.width / (48 / borderWidth)
    // (frame.size.width * 2) / (48 / 2)
    
    self.backgroundColor = UIColor.clearColor()
    self.imageView?.layer.masksToBounds = true;
    self.imageView?.layer.cornerRadius = self.bounds.size.width / 16
    
    // add views
    self.addSubview(imageView!)
    self.addSubview(pointView!)

  }
  
  required init(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
  
  override func layoutSubviews() {
    self.imageView?.transform = CGAffineTransformMakeRotation(rotation)
    self.imageView!.bounds = CGRectMake(0, 0, frame.size.width, frame.size.height)
  }
}
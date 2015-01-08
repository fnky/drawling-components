//
//  RBScrollView.swift
//  DrawlingComponents
//
//  Created by Christian Petersen
//  Copyright (c) 2015 Reversebox. All rights reserved.
//

import Foundation
import UIKit

class RBScrollView : UIScrollView {
  
  // All subviews should conform to this ScrollView's height
  // with a aspect ratio.
  //let gradient: CAGradientLayer? = nil
  
  /*private func calculateContentSize(views: [AnyObject]) -> CGSize {
    var size: CGSize = CGSizeMake(0, 0)
    
    var counter: Int = 0
    for view in views {
      let x: CGFloat = view.bounds.origin.x
      let y: CGFloat = view.bounds.origin.y
      let w: CGFloat = view.bounds.size.width
      let h: CGFloat = view.bounds.size.height
    
      size.width += w
      
      counter++
    }
    
    println("view) \(size)")
    
    return CGSizeMake(size.width, self.frame.size.height)
  }*/
  
  private func calculateContentSize(views: [AnyObject]) -> CGSize {
    let lo = views.last as UIView
    let oy = lo.frame.origin.x
    let ht = lo.frame.size.width
    var s = CGSizeMake(oy + ht, self.frame.size.height)
    println(s)
    return s
  }
  
  override func layoutIfNeeded() {
    
  }
  
  override func layoutSubviews() {
    
  }
  
  override func addSubview(view: UIView) {
    // when adding subview, the given view's size
    // set itselfs contentSize accordingly
    
    super.addSubview(view)
    self.contentSize = calculateContentSize(self.subviews)
  }
  
  override func layoutSublayersOfLayer(layer: CALayer!) {
    let gradient: CAGradientLayer = CAGradientLayer(layer: layer)
    gradient.frame = self.bounds
    gradient.colors = [UIColor(white: 1, alpha: 1).CGColor, UIColor(white: 1, alpha: 0).CGColor]
    gradient.locations = [0.8, 1.0]
    gradient.startPoint = CGPointMake(0, 0.5)
    gradient.endPoint = CGPointMake(1, 0.5)
    layer.mask = gradient
  }
  
  override func drawRect(rect: CGRect) {
    
    
  }
  
}
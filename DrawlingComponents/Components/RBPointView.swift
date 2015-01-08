//
//  RBPointView.swift
//  DrawlingComponents
//
//  Created by iChrille on 08/01/15.
//  Copyright (c) 2015 Reversebox. All rights reserved.
//

import UIKit

class RBPointView : UIView {
  
  var text: String = "8"
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.layer.borderColor = UIColor.whiteColor().CGColor
    self.layer.borderWidth = 2.0
    self.layer.backgroundColor = UIColor(red: 0.858, green: 0.337, blue: 0.137, alpha: 1.0).CGColor
    self.layer.masksToBounds = true
    
    var label = UILabel(frame: CGRectMake(0, 0.0, frame.size.width, frame.size.height))
    label.textAlignment = .Center
    label.textColor = UIColor.whiteColor()
    label.backgroundColor = UIColor.clearColor()
    label.font = UIFont.boldSystemFontOfSize(frame.size.width / 1.5)
    label.drawTextInRect(self.frame)
    
    self.addSubview(label)
    label.text = self.text
  }
  
  required init(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
  }
 
  override func layoutSubviews() {
    self.layer.cornerRadius = self.bounds.size.height / 2
  }
  
  
}
//
//  UIView+SXConstraints.swift
//  TraitTests
//
//  Created by Francescu on 11/06/2015.
//  Copyright (c) 2015 Stupeflix. All rights reserved.
//

import UIKit

extension UIView {
    func sx_verticallyCenter() -> [NSLayoutConstraint] {
        if let superview = self.superview {
            return [NSLayoutConstraint(item: self, attribute:.CenterY, relatedBy: .Equal, toItem: superview, attribute: .CenterY, multiplier: 1, constant: 0)]
        }
        return []
    }
    
    func sx_horizontalCenter() -> [NSLayoutConstraint] {
        if let superview = self.superview {
            return [NSLayoutConstraint(item: self, attribute:.CenterX, relatedBy: .Equal, toItem: superview, attribute: .CenterX, multiplier: 1, constant: 0)]
        }
        return []
    }
    
    func sx_leadingSnap(margin:CGFloat = 0) -> [NSLayoutConstraint] {
        if let superview = self.superview {
            return [NSLayoutConstraint(item: self, attribute:.Leading, relatedBy: .Equal, toItem: superview, attribute: .Leading, multiplier: 1, constant: margin)]
        }
        return []
    }
    
    func sx_trailingSnap(margin:CGFloat = 0) -> [NSLayoutConstraint] {
        if let superview = self.superview {
            return [NSLayoutConstraint(item: self, attribute:.Trailing, relatedBy: .Equal, toItem: superview, attribute: .Trailing, multiplier: 1, constant: -margin)]
        }
        return []
    }
    
    func sx_horizontalFill(margin:CGFloat = 0) -> [NSLayoutConstraint] {
        return self.sx_leadingSnap(margin: margin) + self.sx_trailingSnap(margin: margin)
    }
    
    
    func sx_topSnap(margin:CGFloat = 0) -> [NSLayoutConstraint] {
        if let superview = self.superview {
            return [NSLayoutConstraint(item: self, attribute:.Top, relatedBy: .Equal, toItem: superview, attribute: .Top, multiplier: 1, constant: margin)]
        }
        return []
    }
    
    func sx_bottomSnap(margin:CGFloat = 0) -> [NSLayoutConstraint] {
        if let superview = self.superview {
            return [NSLayoutConstraint(item: self, attribute:.Bottom, relatedBy: .Equal, toItem: superview, attribute: .Bottom, multiplier: 1, constant: -margin)]
        }
        return []
    }
    
    func sx_verticalFill(margin:CGFloat = 0) -> [NSLayoutConstraint] {
        return self.sx_topSnap(margin: margin) + self.sx_bottomSnap(margin: margin)
    }
    
    func sx_fixedHeight(height:CGFloat) -> [NSLayoutConstraint] {
        return [NSLayoutConstraint(item: self, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 0, constant: height)]
    }
    
    func sx_verticalAfter(view:UIView, margin:CGFloat = 0) -> [NSLayoutConstraint] {
        return [NSLayoutConstraint(item: self, attribute:.Top, relatedBy: .Equal, toItem: view, attribute: .Bottom, multiplier: 1, constant: margin)]
    }
    
    func sx_horizontalAfter(view:UIView, margin:CGFloat = 0) -> [NSLayoutConstraint] {
        return [NSLayoutConstraint(item: self, attribute:.Leading, relatedBy: .Equal, toItem: view, attribute: .Trailing, multiplier: 1, constant: margin)]
    }
    
    func sx_aspectRatioSize(aspectRatio:CGFloat) -> [NSLayoutConstraint] {
        return [NSLayoutConstraint(item: self, attribute:.Width, relatedBy: .Equal, toItem: self, attribute: .Height, multiplier: aspectRatio, constant:0)]
    }
}


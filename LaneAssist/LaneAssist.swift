//
//  LaneAssist.swift
//  PicFit
//
//  Created by Garrit Schaap on 03.07.15.
//  Copyright (c) 2015 Garrit Schaap. All rights reserved.
//

/*
Licensed under the MIT License

Copyright (c) 2015 Garrit Schaap
http://www.garrit.io

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/

import UIKit

/**
    Subclass for adding methods to NSLayoutConstraint.
*/
public class LALayoutConstraint: NSLayoutConstraint {
    
    /**
        Adds a layout constraint to the `superview` of it's `firstItem`.
    
        :returns: The layout constraint.
    */
    
    public func addToSuperview() -> LALayoutConstraint {
        if let view = firstItem as? UIView {
            if let superview = view.superview {
                superview.addConstraint(self)
            }
        }
        return self
    }
    
    /**
        Adds a layout constraint to the specified view.
        
        :param: view The view to add the layoutConstraint to.
        
        :returns: The layout constraint.
    */
    
    public func addToView(view: UIView) -> LALayoutConstraint {
        view.addConstraint(self)
        return self
    }
    
    /**
        Sets the priority of the layout constraint.
    
        :param: priority The layout priority.
    
        :returns: The layout constraint.
    */
    
    public func priority(priority: UILayoutPriority) -> LALayoutConstraint {
        self.priority = priority
        return self
    }
}

/**
    Responsible to create the layout constraints on a view.
*/
public class LAObject {
    private let view: UIView
    
    /**
        Creates the Lane Assist Object.
        
        :param: view The view of the Lane Assist Object.
        
        :returns: The Lane Assist Object.
    */
    init(view: UIView) {
        self.view = view
        self.view.setTranslatesAutoresizingMaskIntoConstraints(false)
    }
    
    /**
        Creates a layout constraint.
    
        :param: firstAttribute The attribute of the first view participating in the constraint.
        :param: view The second view participating in the constraint. If not set, the superview of the first view will be used instead.
        :param: secondAttribute The attribute of the second view participating in the constraint. If not set, the `firstAttribute` will be used for the second aswell.
        :param: constant The constant added to the multiplied second attribute participating in the constraint. The default is 0.
        :param: multiplier The multiplier applied to the second attribute participating in the constraint. The default value is 1.
        :param: relation The relation between the two attributes in the constraint. The default is `.Equal`.
    
        :returns: The layout constraint.
    */
    public func constraint(firstAttribute attribute1: NSLayoutAttribute, var view: UIView? = nil, var secondAttribute attribute2: NSLayoutAttribute? = nil, constant: CGFloat = 0, multiplier: CGFloat = 1, relation: NSLayoutRelation = .Equal) -> LALayoutConstraint {
        if view == nil {
            view = self.view.superview!
        }
        if attribute2 == nil {
            attribute2 = attribute1
        }
        return LALayoutConstraint(item: self.view, attribute: attribute1, relatedBy: relation, toItem: view, attribute: attribute2!, multiplier: multiplier, constant: constant)
    }
    
    /**
        Creates a layout constraint with a fixed width. The first attribute is set to `.Width`, the second to `.NotAnAttribute` and the second item is set to `nil`.
    
        :param: constant The constant added to the multiplied second attribute participating in the constraint. The default is 0.
        :param: multiplier The multiplier applied to the second attribute participating in the constraint. The default value is 1.
        :param: relation The relation between the two attributes in the constraint. The default is `.Equal`.
    
        :returns: The layout constraint.
    */
    public func fixedWidth(constant: CGFloat = 0, multiplier: CGFloat = 1, relation: NSLayoutRelation = .Equal) -> LALayoutConstraint {
        return LALayoutConstraint(item: self.view, attribute: .Width, relatedBy: relation, toItem: nil, attribute: .NotAnAttribute, multiplier: multiplier, constant: constant)
    }
    
    /**
        Creates a layout constraint with a fixed height. The first attribute is set to `.Height`, the second to `.NotAnAttribute` and the second item is set to `nil`.
    
        :param: constant The constant added to the multiplied second attribute participating in the constraint. The default is 0.
        :param: multiplier The multiplier applied to the second attribute participating in the constraint. The default value is 1.
        :param: relation The relation between the two attributes in the constraint. The default is `.Equal`.
    
        :returns: The layout constraint.
    */
    public func fixedHeight(constant: CGFloat = 0, multiplier: CGFloat = 1, relation: NSLayoutRelation = .Equal) -> LALayoutConstraint {
        return LALayoutConstraint(item: self.view, attribute: .Height, relatedBy: relation, toItem: nil, attribute: .NotAnAttribute, multiplier: multiplier, constant: constant)
    }
    
    /**
        Creates a layout constraint with `.Width` as first and second attribute.
    
        :param: constant The constant added to the multiplied second attribute participating in the constraint. The default is 0.
        :param: view The second view participating in the constraint. If not set, the superview of the first view will be used instead.
        :param: attribute The attribute of the second view participating in the constraint. If not set, the `firstAttribute` will be used for the second aswell.
        :param: multiplier The multiplier applied to the second attribute participating in the constraint. The default value is 1.
        :param: relation The relation between the two attributes in the constraint. The default is `.Equal`.
    
        :returns: The layout constraint.
    */
    public func width(constant: CGFloat = 0, var view: UIView? = nil, var attribute: NSLayoutAttribute? = nil, multiplier: CGFloat = 1, relation: NSLayoutRelation = .Equal) -> LALayoutConstraint {
        if view == nil {
            view = self.view.superview!
        }
        if attribute == nil {
            attribute = .Width
        }
        return LALayoutConstraint(item: self.view, attribute: .Width, relatedBy: relation, toItem: view, attribute: attribute!, multiplier: multiplier, constant: constant)
    }
    
    /**
        Creates a layout constraint with `.Height` as first and second attribute.
    
        :param: constant The constant added to the multiplied second attribute participating in the constraint. The default is 0.
        :param: view The second view participating in the constraint. If not set, the superview of the first view will be used instead.
        :param: attribute The attribute of the second view participating in the constraint. If not set, the `firstAttribute` will be used for the second aswell.
        :param: multiplier The multiplier applied to the second attribute participating in the constraint. The default value is 1.
        :param: relation The relation between the two attributes in the constraint. The default is `.Equal`.
    
        :returns: The layout constraint.
    */
    public func height(constant: CGFloat = 0, var view: UIView? = nil, var attribute: NSLayoutAttribute? = nil, multiplier: CGFloat = 1, relation: NSLayoutRelation = .Equal) -> LALayoutConstraint {
        if view == nil {
            view = self.view.superview!
        }
        if attribute == nil {
            attribute = .Height
        }
        return LALayoutConstraint(item: self.view, attribute: .Height, relatedBy: relation, toItem: view, attribute: attribute!, multiplier: multiplier, constant: constant)
    }
    
    /**
        Creates a layout constraint with `.Top` as first and second attribute.
    
        :param: constant The constant added to the multiplied second attribute participating in the constraint. The default is 0.
        :param: view The second view participating in the constraint. If not set, the superview of the first view will be used instead.
        :param: attribute The attribute of the second view participating in the constraint. If not set, the `firstAttribute` will be used for the second aswell.
        :param: multiplier The multiplier applied to the second attribute participating in the constraint. The default value is 1.
        :param: relation The relation between the two attributes in the constraint. The default is `.Equal`.
    
        :returns: The layout constraint.
    */
    public func top(constant: CGFloat = 0, var view: UIView? = nil, var attribute: NSLayoutAttribute? = nil, multiplier: CGFloat = 1, relation: NSLayoutRelation = .Equal) -> LALayoutConstraint {
        if view == nil {
            view = self.view.superview!
        }
        if attribute == nil {
            attribute = .Top
        }
        return LALayoutConstraint(item: self.view, attribute: .Top, relatedBy: relation, toItem: view, attribute: attribute!, multiplier: multiplier, constant: constant)
    }
    
    /**
        Creates a layout constraint with `.Bottom` as first and second attribute.
    
        :param: constant The constant added to the multiplied second attribute participating in the constraint. The default is 0.
        :param: view The second view participating in the constraint. If not set, the superview of the first view will be used instead.
        :param: attribute The attribute of the second view participating in the constraint. If not set, the `firstAttribute` will be used for the second aswell.
        :param: multiplier The multiplier applied to the second attribute participating in the constraint. The default value is 1.
        :param: relation The relation between the two attributes in the constraint. The default is `.Equal`.
    
        :returns: The layout constraint.
    */
    public func bottom(constant: CGFloat = 0, var view: UIView? = nil, var attribute: NSLayoutAttribute? = nil, multiplier: CGFloat = 1, relation: NSLayoutRelation = .Equal) -> LALayoutConstraint {
        if view == nil {
            view = self.view.superview!
        }
        if attribute == nil {
            attribute = .Bottom
        }
        return LALayoutConstraint(item: self.view, attribute: .Bottom, relatedBy: relation, toItem: view, attribute: attribute!, multiplier: multiplier, constant: constant)
    }
    
    /**
        Creates a layout constraint with `.Left` as first and second attribute.
    
        :param: constant The constant added to the multiplied second attribute participating in the constraint. The default is 0.
        :param: view The second view participating in the constraint. If not set, the superview of the first view will be used instead.
        :param: attribute The attribute of the second view participating in the constraint. If not set, the `firstAttribute` will be used for the second aswell.
        :param: multiplier The multiplier applied to the second attribute participating in the constraint. The default value is 1.
        :param: relation The relation between the two attributes in the constraint. The default is `.Equal`.
    
        :returns: The layout constraint.
    */
    public func left(constant: CGFloat = 0, var view: UIView? = nil, var attribute: NSLayoutAttribute? = nil, multiplier: CGFloat = 1, relation: NSLayoutRelation = .Equal) -> LALayoutConstraint {
        if view == nil {
            view = self.view.superview!
        }
        if attribute == nil {
            attribute = .Left
        }
        return LALayoutConstraint(item: self.view, attribute: .Left, relatedBy: relation, toItem: view, attribute: attribute!, multiplier: multiplier, constant: constant)
    }
    
    /**
        Creates a layout constraint with `.Right` as first and second attribute.
    
        :param: constant The constant added to the multiplied second attribute participating in the constraint. The default is 0.
        :param: view The second view participating in the constraint. If not set, the superview of the first view will be used instead.
        :param: attribute The attribute of the second view participating in the constraint. If not set, the `firstAttribute` will be used for the second aswell.
        :param: multiplier The multiplier applied to the second attribute participating in the constraint. The default value is 1.
        :param: relation The relation between the two attributes in the constraint. The default is `.Equal`.
    
        :returns: The layout constraint.
    */
    public func right(constant: CGFloat = 0, var view: UIView? = nil, var attribute: NSLayoutAttribute? = nil, multiplier: CGFloat = 1, relation: NSLayoutRelation = .Equal) -> LALayoutConstraint {
        if view == nil {
            view = self.view.superview!
        }
        if attribute == nil {
            attribute = .Right
        }
        return LALayoutConstraint(item: self.view, attribute: .Right, relatedBy: relation, toItem: view, attribute: attribute!, multiplier: multiplier, constant: constant)
    }
    
    /**
        Creates a layout constraint with `.CenterX` as first and second attribute.
    
        :param: constant The constant added to the multiplied second attribute participating in the constraint. The default is 0.
        :param: view The second view participating in the constraint. If not set, the superview of the first view will be used instead.
        :param: attribute The attribute of the second view participating in the constraint. If not set, the `firstAttribute` will be used for the second aswell.
        :param: multiplier The multiplier applied to the second attribute participating in the constraint. The default value is 1.
        :param: relation The relation between the two attributes in the constraint. The default is `.Equal`.
    
        :returns: The layout constraint.
    */
    public func centerX(constant: CGFloat = 0, var view: UIView? = nil, var attribute: NSLayoutAttribute? = nil, multiplier: CGFloat = 1, relation: NSLayoutRelation = .Equal) -> LALayoutConstraint {
        if view == nil {
            view = self.view.superview!
        }
        if attribute == nil {
            attribute = .CenterX
        }
        return LALayoutConstraint(item: self.view, attribute: .CenterX, relatedBy: relation, toItem: view, attribute: attribute!, multiplier: multiplier, constant: constant)
    }
    
    /**
        Creates a layout constraint with `.CenterY` as first and second attribute.
        
        :param: constant The constant added to the multiplied second attribute participating in the constraint. The default is 0.
        :param: view The second view participating in the constraint. If not set, the superview of the first view will be used instead.
        :param: attribute The attribute of the second view participating in the constraint. If not set, the `firstAttribute` will be used for the second aswell.
        :param: multiplier The multiplier applied to the second attribute participating in the constraint. The default value is 1.
        :param: relation The relation between the two attributes in the constraint. The default is `.Equal`.
        
        :returns: The layout constraint.
    */
    public func centerY(constant: CGFloat = 0, var view: UIView? = nil, var attribute: NSLayoutAttribute? = nil, multiplier: CGFloat = 1, relation: NSLayoutRelation = .Equal) -> LALayoutConstraint {
        if view == nil {
            view = self.view.superview!
        }
        if attribute == nil {
            attribute = .CenterY
        }
        return LALayoutConstraint(item: self.view, attribute: .CenterY, relatedBy: relation, toItem: view, attribute: attribute!, multiplier: multiplier, constant: constant)
    }
}

/**
    Extension to add the Lane Assist Object to every UIView.
*/
public extension UIView {
    
    /**
        The Lane Assist property to create layout constraints.
    
        :returns: The Lane Asset Object.
    */
    public var LA: LAObject {
        get {
            return LAObject(view: self)
        }
    }
}

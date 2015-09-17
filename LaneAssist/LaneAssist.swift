//
//  LaneAssist.swift
//  LaneAssist
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
    Sets the relation of the LayoutConstraint to `.Equal`.
    
    :returns: The layout constraint.
    */
    public func equalTo() -> LALayoutConstraint {
        return LALayoutConstraint(item: self.firstItem, attribute: self.firstAttribute, relatedBy: .Equal, toItem: self.secondItem, attribute: self.secondAttribute, multiplier: self.multiplier, constant: self.constant)
    }
    
    /**
    Sets the relation of the LayoutConstraint to `.GreaterThanOrEqual`.
    
    :returns: The layout constraint.
    */
    public func greaterThanOrEqual() -> LALayoutConstraint {
        return LALayoutConstraint(item: self.firstItem, attribute: self.firstAttribute, relatedBy: .GreaterThanOrEqual, toItem: self.secondItem, attribute: self.secondAttribute, multiplier: self.multiplier, constant: self.constant)
    }
    
    /**
    Sets the relation of the LayoutConstraint to `.LessThanOrEqual`.
    
    :returns: The layout constraint.
    */
    public func lessThanOrEqual() -> LALayoutConstraint {
        return LALayoutConstraint(item: self.firstItem, attribute: self.firstAttribute, relatedBy: .LessThanOrEqual, toItem: self.secondItem, attribute: self.secondAttribute, multiplier: self.multiplier, constant: self.constant)
    }
    
    /**
    Sets the second attribute of the LayoutConstraint to `.Width`.
    
    :returns: The layout constraint.
    */
    public func toWidth() -> LALayoutConstraint {
        return LALayoutConstraint(item: self.firstItem, attribute: self.firstAttribute, relatedBy: self.relation, toItem: self.secondItem, attribute: .Width, multiplier: self.multiplier, constant: self.constant)
    }
    
    /**
    Sets the second attribute of the LayoutConstraint to `.Height`.
    
    :returns: The layout constraint.
    */
    public func toHeight() -> LALayoutConstraint {
        return LALayoutConstraint(item: self.firstItem, attribute: self.firstAttribute, relatedBy: self.relation, toItem: self.secondItem, attribute: .Height, multiplier: self.multiplier, constant: self.constant)
    }
    
    /**
    Sets the second attribute of the LayoutConstraint to `.Left`.
    
    :returns: The layout constraint.
    */
    public func toLeft() -> LALayoutConstraint {
        return LALayoutConstraint(item: self.firstItem, attribute: self.firstAttribute, relatedBy: self.relation, toItem: self.secondItem, attribute: .Left, multiplier: self.multiplier, constant: self.constant)
    }
    
    /**
    Sets the second attribute of the LayoutConstraint to `.Right`.
    
    :returns: The layout constraint.
    */
    public func toRight() -> LALayoutConstraint {
        return LALayoutConstraint(item: self.firstItem, attribute: self.firstAttribute, relatedBy: self.relation, toItem: self.secondItem, attribute: .Right, multiplier: self.multiplier, constant: self.constant)
    }
    
    /**
    Sets the second attribute of the LayoutConstraint to `.Top`.
    
    :returns: The layout constraint.
    */
    public func toTop() -> LALayoutConstraint {
        return LALayoutConstraint(item: self.firstItem, attribute: self.firstAttribute, relatedBy: self.relation, toItem: self.secondItem, attribute: .Top, multiplier: self.multiplier, constant: self.constant)
    }
    
    /**
    Sets the second attribute of the LayoutConstraint to `.Bottom`.
    
    :returns: The layout constraint.
    */
    public func toBottom() -> LALayoutConstraint {
        return LALayoutConstraint(item: self.firstItem, attribute: self.firstAttribute, relatedBy: self.relation, toItem: self.secondItem, attribute: .Bottom, multiplier: self.multiplier, constant: self.constant)
    }
    
    /**
    Sets the second attribute of the LayoutConstraint to `.BottomMargin`.
    
    :returns: The layout constraint.
    */
    public func toBottomMargin() -> LALayoutConstraint {
        return LALayoutConstraint(item: self.firstItem, attribute: self.firstAttribute, relatedBy: self.relation, toItem: self.secondItem, attribute: .BottomMargin, multiplier: self.multiplier, constant: self.constant)
    }
    
    /**
    Sets the second attribute of the LayoutConstraint to `.Baseline`.
    
    :returns: The layout constraint.
    */
    public func toBaseline() -> LALayoutConstraint {
        return LALayoutConstraint(item: self.firstItem, attribute: self.firstAttribute, relatedBy: self.relation, toItem: self.secondItem, attribute: .Baseline, multiplier: self.multiplier, constant: self.constant)
    }
    
    /**
    Sets the second attribute of the LayoutConstraint to `.CenterX`.
    
    :returns: The layout constraint.
    */
    public func toCenterX() -> LALayoutConstraint {
        return LALayoutConstraint(item: self.firstItem, attribute: self.firstAttribute, relatedBy: self.relation, toItem: self.secondItem, attribute: .CenterX, multiplier: self.multiplier, constant: self.constant)
    }
    
    /**
    Sets the second attribute of the LayoutConstraint to `.CenterXWithinMargins`.
    
    :returns: The layout constraint.
    */
    public func toCenterXWithinMargins() -> LALayoutConstraint {
        return LALayoutConstraint(item: self.firstItem, attribute: self.firstAttribute, relatedBy: self.relation, toItem: self.secondItem, attribute: .CenterXWithinMargins, multiplier: self.multiplier, constant: self.constant)
    }
    
    /**
    Sets the second attribute of the LayoutConstraint to `.CenterY`.
    
    :returns: The layout constraint.
    */
    public func toCenterY() -> LALayoutConstraint {
        return LALayoutConstraint(item: self.firstItem, attribute: self.firstAttribute, relatedBy: self.relation, toItem: self.secondItem, attribute: .CenterY, multiplier: self.multiplier, constant: self.constant)
    }
    
    /**
    Sets the second attribute of the LayoutConstraint to `.CenterYWithinMargins`.
    
    :returns: The layout constraint.
    */
    public func toCenterYWithinMargins() -> LALayoutConstraint {
        return LALayoutConstraint(item: self.firstItem, attribute: self.firstAttribute, relatedBy: self.relation, toItem: self.secondItem, attribute: .CenterYWithinMargins, multiplier: self.multiplier, constant: self.constant)
    }
    
    /**
    Sets the second attribute of the LayoutConstraint to `.FirstBaseline`.
    
    :returns: The layout constraint.
    */
    public func toFirstBaseline() -> LALayoutConstraint {
        return LALayoutConstraint(item: self.firstItem, attribute: self.firstAttribute, relatedBy: self.relation, toItem: self.secondItem, attribute: .FirstBaseline, multiplier: self.multiplier, constant: self.constant)
    }
    
    /**
    Sets the second attribute of the LayoutConstraint to `.Leading`.
    
    :returns: The layout constraint.
    */
    public func toLeading() -> LALayoutConstraint {
        return LALayoutConstraint(item: self.firstItem, attribute: self.firstAttribute, relatedBy: self.relation, toItem: self.secondItem, attribute: .Leading, multiplier: self.multiplier, constant: self.constant)
    }
    
    /**
    Sets the second attribute of the LayoutConstraint to `.LeadingMargin`.
    
    :returns: The layout constraint.
    */
    public func toLeadingMargin() -> LALayoutConstraint {
        return LALayoutConstraint(item: self.firstItem, attribute: self.firstAttribute, relatedBy: self.relation, toItem: self.secondItem, attribute: .LeadingMargin, multiplier: self.multiplier, constant: self.constant)
    }
    
    /**
    Sets the second attribute of the LayoutConstraint to `.LeftMargin`.
    
    :returns: The layout constraint.
    */
    public func toLeftMargin() -> LALayoutConstraint {
        return LALayoutConstraint(item: self.firstItem, attribute: self.firstAttribute, relatedBy: self.relation, toItem: self.secondItem, attribute: .LeftMargin, multiplier: self.multiplier, constant: self.constant)
    }
    
    /**
    Sets the second attribute of the LayoutConstraint to `.RightMargin`.
    
    :returns: The layout constraint.
    */
    public func toRightMargin() -> LALayoutConstraint {
        return LALayoutConstraint(item: self.firstItem, attribute: self.firstAttribute, relatedBy: self.relation, toItem: self.secondItem, attribute: .RightMargin, multiplier: self.multiplier, constant: self.constant)
    }
    
    /**
    Sets the second attribute of the LayoutConstraint to `.TopMargin`.
    
    :returns: The layout constraint.
    */
    public func toTopMargin() -> LALayoutConstraint {
        return LALayoutConstraint(item: self.firstItem, attribute: self.firstAttribute, relatedBy: self.relation, toItem: self.secondItem, attribute: .TopMargin, multiplier: self.multiplier, constant: self.constant)
    }
    
    /**
    Sets the second attribute of the LayoutConstraint to `.Trailing`.
    
    :returns: The layout constraint.
    */
    public func toTrailing() -> LALayoutConstraint {
        return LALayoutConstraint(item: self.firstItem, attribute: self.firstAttribute, relatedBy: self.relation, toItem: self.secondItem, attribute: .Trailing, multiplier: self.multiplier, constant: self.constant)
    }
    
    /**
    Sets the second attribute of the LayoutConstraint to `.TrailingMargin`.
    
    :returns: The layout constraint.
    */
    public func toTrailingMargin() -> LALayoutConstraint {
        return LALayoutConstraint(item: self.firstItem, attribute: self.firstAttribute, relatedBy: self.relation, toItem: self.secondItem, attribute: .TrailingMargin, multiplier: self.multiplier, constant: self.constant)
    }
    
    /**
    Sets the layout constraint to a fixed Value. The second attribute is set to `.NotAnAttribute` and the second item is set to `nil`.
    
    :param: constant The constant added to the multiplied second attribute participating in the constraint. The default is 0.
    
    :returns: The layout constraint.
    */
    public func setFixed(constant: CGFloat) -> LALayoutConstraint {
        return LALayoutConstraint(item: self.firstItem, attribute: self.firstAttribute, relatedBy: self.relation, toItem: nil, attribute: .NotAnAttribute, multiplier: self.multiplier, constant: constant)
    }
    
    /**
    Sets the secondItem to a view.
    
    :param: view The secondItem View.
    
    :returns: The layout constraint.
    */
    public func ofView(view: UIView) -> LALayoutConstraint {
        return LALayoutConstraint(item: self.firstItem, attribute: self.firstAttribute, relatedBy: self.relation, toItem: view, attribute: self.secondAttribute, multiplier: self.multiplier, constant: self.constant)
    }
    
    /**
    Sets the constant to a different Value.
    
    :param: constant The constant added to the multiplied second attribute participating in the constraint. The default is 0.
    
    :returns: The layout constraint.
    */
    public func withConstant(constant: CGFloat) -> LALayoutConstraint {
        self.constant = constant
        return self
    }
    
    /**
    Sets the multiplier to a different Value.
    
    :param: multiplier The multiplier to multiplie the second attribute participating in the constraint. The default is 1.
    
    :returns: The layout constraint.
    */
    public func withMultiplier(multiplier: CGFloat) -> LALayoutConstraint {
        return LALayoutConstraint(item: self.firstItem, attribute: self.firstAttribute, relatedBy: self.relation, toItem: self.secondItem, attribute: self.secondAttribute, multiplier: multiplier, constant: self.constant)
    }
    
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
    
    public func withPriority(priority: UILayoutPriority) -> LALayoutConstraint {
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
    Creates a layout constraint with `.Left` as first and second attribute and the view as firstItem and the superview, if available, as secondItem.
    
    :returns: A layout constraint.
    */
    public var setLeft: LALayoutConstraint {
        get {
            return LALayoutConstraint(item: self.view, attribute: .Left, relatedBy: .Equal, toItem: self.view.superview, attribute: .Left, multiplier: 1, constant: 0)
        }
    }
    
    /**
    Creates a layout constraint with `.Right` as first and second attribute and the view as firstItem and the superview, if available, as secondItem.
    
    :returns: A layout constraint.
    */
    public var setRight: LALayoutConstraint {
        get {
            return LALayoutConstraint(item: self.view, attribute: .Right, relatedBy: .Equal, toItem: self.view.superview, attribute: .Right, multiplier: 1, constant: 0)
        }
    }
    
    /**
    Creates a layout constraint with `.Top` as first and second attribute and the view as firstItem and the superview, if available, as secondItem.
    
    :returns: A layout constraint.
    */
    public var setTop: LALayoutConstraint {
        get {
            return LALayoutConstraint(item: self.view, attribute: .Top, relatedBy: .Equal, toItem: self.view.superview, attribute: .Top, multiplier: 1, constant: 0)
        }
    }
    
    /**
    Creates a layout constraint with `.Bottom` as first and second attribute and the view as firstItem and the superview, if available, as secondItem.
    
    :returns: A layout constraint.
    */
    public var setBottom: LALayoutConstraint {
        get {
            return LALayoutConstraint(item: self.view, attribute: .Bottom, relatedBy: .Equal, toItem: self.view.superview, attribute: .Bottom, multiplier: 1, constant: 0)
        }
    }
    
    /**
    Creates a layout constraint with `.Width` as first and second attribute and the view as firstItem and the superview, if available, as secondItem.
    
    :returns: A layout constraint.
    */
    public var setWidth: LALayoutConstraint {
        get {
            return LALayoutConstraint(item: self.view, attribute: .Width, relatedBy: .Equal, toItem: self.view.superview, attribute: .Width, multiplier: 1, constant: 0)
        }
    }
    
    /**
    Creates a layout constraint with `.Height` as first and second attribute and the view as firstItem and the superview, if available, as secondItem.
    
    :returns: A layout constraint.
    */
    public var setHeight: LALayoutConstraint {
        get {
            return LALayoutConstraint(item: self.view, attribute: .Height, relatedBy: .Equal, toItem: self.view.superview, attribute: .Height, multiplier: 1, constant: 0)
        }
    }
    
    /**
    Creates a layout constraint with `.CenterX` as first and second attribute and the view as firstItem and the superview, if available, as secondItem.
    
    :returns: A layout constraint.
    */
    public var setCenterX: LALayoutConstraint {
        get {
            return LALayoutConstraint(item: self.view, attribute: .CenterX, relatedBy: .Equal, toItem: self.view.superview, attribute: .CenterX, multiplier: 1, constant: 0)
        }
    }
    
    /**
    Creates a layout constraint with `.CenterY` as first and second attribute and the view as firstItem and the superview, if available, as secondItem.
    
    :returns: A layout constraint.
    */
    public var setCenterY: LALayoutConstraint {
        get {
            return LALayoutConstraint(item: self.view, attribute: .CenterY, relatedBy: .Equal, toItem: self.view.superview, attribute: .CenterY, multiplier: 1, constant: 0)
        }
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

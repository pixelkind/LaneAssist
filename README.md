# Lane Assist

An Assistant for AutoLayout in Swift

You know the problem: you just want to set a NSLayoutConstraint in your Code and you end up with something like this:

```swift
addConstraint(NSLayoutConstraint(item: view, attribute: .Top, relatedBy: .Equal, toItem: self, attribute: .Top, multiplier: 1, constant: 0))
```

Wouldn't it be nice to write something more swift-like and readable? Like this:

```swift
view.LA.top().addToSuperview()
```

With Lane Assist you can! Just add Lane Assist to your project and you're done. Lane Assist is not a DSL on top of AutoLayout that you have to learn, instead it just creates basic NSLayoutConstraints with some easy function calls. Method chaining makes it even more comfortable to use.

## Usage

## Available methods

### Standard Layout methods

* `width()`
* `height()`
* `top()`
* `bottom()`
* `left()`
* `right()`
* `centerX()`
* `centerY()`
 
Here you have the following optional parameters with their default values:

* `constant: CGFloat = 0`
* `view: UIView? = nil`
* `multiplier: CGFloat = 1`
* `relation: NSLayoutRelation = .Equal`
 
> ⚠️ If you leave out the view, Lane Assist will automatically use the superview of your view as second View-Item. So make sure you have added your view to the view-hierarchy before using the Lane Assist methods.

### Methods to create fixed Layout Attributes

These methods create an NSLayoutConstraint with the second view set to `nil` and the second attribute set to `.NotAnAttribute`.

* `fixedWidth()`
* `fixedHeight()`

Here you have the following optional parameters with their default values:

* `constant: CGFloat = 0`
* `multiplier: CGFloat = 1`
* `relation: NSLayoutRelation = .Equal`


### Method to create custom constraints

* `constraint(firstAttribute: NSLayoutAttribute)`

The first parameter is non-optional and the following optional parameters with their default values are:

* `view: UIView? = nil`
* `secondAttribute: NSLayoutAttribute? = nil`
* `constant: CGFloat = 0`
* `multiplier: CGFloat = 1`
* `relation: NSLayoutRelation = .Equal`

If you leave out the second attribute, the method will just use the first attribute as the second.

### Methods to add a constraint to a view

* `addToSuperview()`
* `addToView(view: UIView)`
 
### Method to set the priority of a constraint

* `priority(priority: UILayoutPriority)`

## More examples

The usual NSLayoutConstraint code to place a view horizontally centered, 100px from top, with the same width as the superview and the same height as the view's width:

```swift
addConstraint(NSLayoutConstraint(item: view, attribute: .CenterX, relatedBy: .Equal, toItem: self, attribute: .CenterX, multiplier: 1, constant: 0))
addConstraint(NSLayoutConstraint(item: view, attribute: .Top, relatedBy: .Equal, toItem: self, attribute: .Top, multiplier: 1, constant: 100))
addConstraint(NSLayoutConstraint(item: view, attribute: .Width, relatedBy: .Equal, toItem: self, attribute: .Width, multiplier: 1, constant: 0))
addConstraint(NSLayoutConstraint(item: view, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 1, constant: 0))
```

The same code using Lane Assist:

```swift
view.LA.centerX().addToSuperview()
view.LA.top(constant: 100).addToSuperview()
view.LA.width().addToSuperview()
view.LA.constraint(firstAttribute: .Height, view: view, secondAttribute: .Width).addToSuperview()
```

To hold on to a constraint (for example if you want to animate it), just assign it to a variable. Let's say we want to animate the top-constraint:

```swift
let topConstraint = view.LA.top(constant: 100).addToSuperview()

UIView.animateWithDuration(2, animations: { () -> Void in
    self.topConstraint.constant = 200
    self.layoutIfNeeded()
})
```

> ⚠️ Per default Lane Assists calls `setTranslatesAutoresizingMaskIntoConstraints(false)` on your view, if used.

Lane Assist is currently used in a real world Project by me. If you end up using Lane Assist in your projects too, I'd happy to hear your thoughts and ideas. You can reach me through [Twitter](https://twitter.com/pixelkindcom).
# Lane Assist

An Assistant for AutoLayout in Swift

You know the problem: you just want to set a NSLayoutConstraint in your Code and you end up with something like this:

```swift
addConstraint(NSLayoutConstraint(item: view, attribute: .Top, relatedBy: .Equal, toItem: self, attribute: .Top, multiplier: 1, constant: 0))
```

Wouldn't it be nice to write something more swift-like and readable? Like this:

```swift
view.LA.setTop.addToSuperview()
```

With Lane Assist you can! Just add Lane Assist to your project and you're done. Lane Assist is not a DSL on top of AutoLayout that you have to learn, instead it just creates basic NSLayoutConstraints with some easy function calls. Method chaining makes it even more comfortable to use.

## Installation

You can copy and add the `LaneAssist/LaneAssist.swift` file manually to your project to use it. If your project is targeting iOS 7, this is the only possible way.

### Cocoapods (Only for Version 1.0 currently, update soon)

Just add `pod 'LaneAssist'` to your Podfile. You need to set `use_frameworks!` and you have to target iOS 8 or higher.

## Usage

### Standard Layout variables

* `setWidth`
* `setHeight`
* `setTop`
* `setBottom`
* `setLeft`
* `setRight`
* `setCenterX`
* `setCenterY`

### Method to set the constant of a constraint

* `withConstant(constant: CGFloat)`

### Other Methods

* `ofView(view: UIView)`
* `withMultiplier(multiplier: CGFloat)`
* `setFixed(constant: CGFloat)`

### Methods to declare your LayoutConstraint (coming soon)

### Methods to add a constraint to a view

* `addToSuperview()`
* `addToView(view: UIView)`
 
### Method to set the priority of a constraint

* `withPriority(priority: UILayoutPriority)`

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
view.LA.setCenterX.addToSuperview()
view.LA.setTop.withConstant(100).addToSuperview()
view.LA.setWidth.addToSuperview()
view.LA.setHeight.toWidth().ofView(view).addToSuperview()
```

To hold on to a constraint (for example if you want to animate it), just assign it to a variable. Let's say we want to animate the top-constraint:

```swift
let topConstraint = view.LA.setTop.withConstant(100).addToSuperview()

UIView.animateWithDuration(2, animations: { () -> Void in
    self.topConstraint.constant = 200
    self.layoutIfNeeded()
})
```

> ⚠️ Per default Lane Assists calls `setTranslatesAutoresizingMaskIntoConstraints(false)` on your view, if used.

Lane Assist is currently used in real world Projects by me. If you end up using Lane Assist in your projects too, I'd happy to hear your thoughts and ideas. You can reach me through [Twitter](https://twitter.com/pixelkindcom).

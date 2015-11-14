Fucking Scroll View Autolayout - Examples
=========================================

This repository holds examples for the four different ways of implementing scroll views with autolayout described at [fuckingscrollviewautolayout.com](http://fuckingscrollviewautolayout.com).

`Main.storyboard` contains two examples setups using Interface Builder. One using `UIStackView` and one building autolayout constraints manually.

`CodeStackViewController` is a view controller built using code with a `UIStackView` as the content view of the scroll view.

`PureCodeViewController` is built using just plain layout constraints.

`LayoutMarginsRespectingStackView` is an `IBDesignable` `UIStackView` subclass which sets its `layoutMarginsRelativeArrangement` property to `true` because of [Radar 21630496](https://openradar.appspot.com/21630496)

## Requirements

* Xcode 7 & up
* A deployment target of iOS 9.0 and up (because of UIStackView & layout anchors)

You could modify these techniques for supporting iOS 7+ with [OAStackView](https://github.com/oarrabi/OAStackView) or even down to iOS 6 with pure autolayout.

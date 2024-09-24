import Foundation

/*

 // MARK: First Part of Event Handling

 Hit testing - it's a recursive search in view's hierarchy to find the one User had interaction with. iOS is trying to understand what is the first (front) view is under user's finger before event will occure

// MARK: All Views have method hitTest(pointInside() -> Bool) -> UIView()

 pointInside() it's a side method of hitTest to return true or false accordingly of the fact - is there an event occured inside the borders of specific view.

 HitTest is working from Parent to the deepest child.

 For example if we have RootView -> red and blue views inside it -> green and orange views inside them accordingly.
 If we press orange view:

 1. HitTest will start from RootView and pointInside will return `true` because this event has occurred inside the border of the RootView
 2. HitTest will try to dig deeper and test the Red View. pointInside will return false
 3. HitTest will try to dig deeper and test the Blue View. pointInside will return true
 4. HitTest will try to check subView of BlueView - OrangeView. pointInside will return true.
 5. If there is no more child Views it's mean we found the view which is placed right under the event of the user.

 // MARK: Task 1

 If in the same case we will forbid any user's interactions with the parent view (Blue) of the orange view it's mean that HitTest will not be able to dig deeper inside it's subviews so orange view will not be reachable.
 So, our event should be handled by RootView.

 // MARK: Task 2

 If we increase the size of child orange view and touch it's part that is not inside the border of the parent Blue View it's mean that HitTest will return false when we try to find responder here by method pointInside()
 So, our event should be handled by RootView again.

 // MARK: Task 3

 How to increase the area of HitTesting of specific View, so if we have a very little button but want allow to user be able to press it anyway?

 Solution: create a customButton and override it's method oh HitTesting - pointInside and increase the area of the area to search point in
 return bounds.insetBy(dx: -30, dy: -30).contains(point)

 // MARK: From Parent View -> to Child View




 */

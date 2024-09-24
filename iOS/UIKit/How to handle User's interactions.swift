import Foundation

// MARK: That how algorithm of User's interactions should be handled via HitTest and Responder Chain

/*
 1. Pressing/Tapping
 2. Notification of the system about this event
 3. Send information about this event to the object of `UIEvent` class (coordinates, time, fingers)
 4. Send to UIWindow via method UIApplication.shared.sendEvent()
 5. UIWindow use HitTest method hitTest(withEvent) which is contains method point(inside) to find UIResponder and makes it firstResponder
 6. Send information to UIView
 7. View handles the event
 */

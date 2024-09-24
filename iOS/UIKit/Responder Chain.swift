import Foundation

/*

 // MARK: Second Part of Event Handling

 MARK: Responder Chain it's a sequence of the people's (view's) whom might pass the message until someone understand it and responds.

 Responder chain allows events (like touches) to be passed from one object to another until one of the handles the event.

 // MARK: Responder Chain in iOS app it's a Linked List of objects in hierachy that can respond to events.

 These objects are called - Responders and they include:

 - UIView

 - UIViewController

 - UIWindow

 - UIApplication

// MARK: - How does it work

 When an event occurs, it starts from the First Responder (the object that first received the event)
 and is passed up the chain until it is handled.
 If an object can't handle the event, it passes the event to it's next responder

 // MARK: - Key Methods

 1. touchesBegan(_:with:) - Called when a touch begins
 2. touchesMoved(_:with:) - Called when a touch moves
 3. touchesEnded(_:with:) - Called when a touch ends
 4. touchesCancelled(_:with:) - Called when a touch canceled
 5. nextResponder - Returns the next responder in the chain

 We won't call nextResponder from the view if it's not handle the event
 Instead we just simply should call super.touchesBegan.
 In other words we say to superView to start to handle an events

 So, the structure of these methods is the same and difference only is a type of EVENTS, such as:

 // MARK: Check for event type:

 - press
 - touch
 - motion
 - remote control

 // MARK: Check for Action type (and being able to perform):

 - canPerformAction(_:withSender:)

 So, both processes should run simultaneously

 We should continue to dig through Responder Chain untill all events will be handled or until the end of the Responder Chain

 // MARK: From ChildView -> to ParentView

You can define multiple Gesture Recognizers for the single View when UIButton can't
Also GestureRecognizer can handle a more wild variety of events 






 */

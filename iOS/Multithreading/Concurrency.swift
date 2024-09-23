
import Foundation

// MARK: - Serial Queue / Sync Tasks
// In this example, three synchronous tasks are added to a serial queue. Each task will complete before the next one starts.

/*

 let serialQueue = DispatchQueue(label: "com.example.serial.queue")

 serialQueue.sync {
 for i in 1...3 {
 print("Sync Task 1 - \(i)")
 }
 }

 serialQueue.sync {
 for i in 1...3 {
 print("Sync Task 2 - \(i)")
 }
 }

 serialQueue.sync {
 for i in 1...3 {
 print("Sync Task 3 - \(i)")
 }
 }




 // MARK: - Serial Queue / Async Tasks
 In this example, three asynchronous tasks are added to a serial queue. Each task will start in the order they were added, but they will run one after another.

 let serialQueue = DispatchQueue(label: "com.example.serial.queue")

 serialQueue.async {
	 for i in 1...3 {
		 print("Async Task 1 - \(i)")
	 }
 }

 serialQueue.async {
	 for i in 1...3 {
		 print("Async Task 2 - \(i)")
	 }
 }

 serialQueue.async {
	 for i in 1...3 {
		 print("Async Task 3 - \(i)")
	 }
 }

 // Keep the main thread alive to see the output
 RunLoop.main.run()



 // MARK: - Concurrent Queue / Sync Tasks
 // In this example, three synchronous tasks are added to a concurrent queue. Each task will complete before the next one starts, but they are added to the queue concurrently. However, since they are synchronous, they will effectively run one after another.

 //let concurrentQueue = DispatchQueue(label: "com.example.concurrent.queue", attributes: .concurrent)
 //
 //concurrentQueue.sync {
 //	for i in 1...3 {
 //		Thread.sleep(forTimeInterval: 1)
 //		print("Sync Task 1 - \(i)")
 //	}
 //}
 //
 //concurrentQueue.sync {
 //	for i in 1...3 {
 //		Thread.sleep(forTimeInterval: 1)
 //		print("Sync Task 2 - \(i)")
 //	}
 //}
 //
 //concurrentQueue.sync {
 //	for i in 1...3 {
 //		Thread.sleep(forTimeInterval: 1)
 //		print("Sync Task 3 - \(i)")
 //	}
 //}

 // No need for RunLoop.main.run() since sync tasks block the main thread



 // MARK: - Concurrent Queue / Async Tasks
 // In this example, three asynchronous tasks are added to a concurrent queue. They will start and run concurrently, potentially interleaving their output.

 //let concurrentQueue = DispatchQueue(label: "com.example.concurrent.queue", attributes: .concurrent)
 //
 //concurrentQueue.async {
 //	for i in 1...3 {
 //		Thread.sleep(forTimeInterval: 1)
 //		print("Async Task 1 - \(i)")
 //	}
 //}
 //
 //concurrentQueue.async {
 //	for i in 1...3 {
 //		Thread.sleep(forTimeInterval: 1)
 //		print("Async Task 2 - \(i)")
 //	}
 //}
 //
 //concurrentQueue.async {
 //	for i in 1...3 {
 //		Thread.sleep(forTimeInterval: 1)
 //		print("Async Task 3 - \(i)")
 //	}
 //}
 //
 //// Keep the main thread alive to see the output
 //RunLoop.main.run()
 */

// MARK: High priority task is blocked by Low priority task

import Foundation

let semaphore = DispatchSemaphore(value: 1)

let highPriorityQueue = DispatchQueue.global(qos: .userInteractive)
let mediumPriorityQueue = DispatchQueue.global(qos: .userInitiated)
let lowPriorityQueue = DispatchQueue.global(qos: .background)

// Low priority task
lowPriorityQueue.async {
	semaphore.wait()
	print("Low priority task is running")
	sleep(3) // Simulate work
	print("Low priority task is done")
	semaphore.signal()
}

// Medium priority task
mediumPriorityQueue.async {
	// Wait to ensure the low priority task runs first
	sleep(1)
	print("Medium priority task is running")
	sleep(2) // Simulate work
	print("Medium priority task is done")
}

// High priority task
highPriorityQueue.async {
	// Wait to ensure it runs after the low and medium tasks
	sleep(1)
	print("High priority task is waiting for the low priority task to finish")
	semaphore.wait()
	print("High priority task is now running")
	sleep(1) // Simulate work
	semaphore.signal()
}

RunLoop.main.run() // Keep the main thread alive to observe output

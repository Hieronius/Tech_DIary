// MARK: Multiple threads are trying to change resource value + Race Condition

import Foundation

class SharedResource {
	private var resource = 0

	func accessResource() {
		// Simulate some work with the shared resource
		for _ in 0..<1000 {
			resource += 1
		}
	}
}

let sharedResource = SharedResource()
let queue = DispatchQueue(label: "ResourceContentionQueue", attributes: .concurrent)
let group = DispatchGroup()

// Create multiple concurrent tasks that access the shared resource
for _ in 1...10 {
	group.enter()
	queue.async {
		sharedResource.accessResource()
		group.leave()
	}
}

// Wait for all tasks to complete
group.wait()

print("Final resource value: \(sharedResource.resource)")

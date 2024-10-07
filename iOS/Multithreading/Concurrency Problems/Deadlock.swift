import Foundation

// MARK: A few threads can block each other

let queue = DispatchQueue(label: "label")
queue.sync { // 1
	queue.sync { // 2
		// deadlock
	}
}

// or

queue.async { // 1
	queue.sync { // 2
		// deadlock
	}
}

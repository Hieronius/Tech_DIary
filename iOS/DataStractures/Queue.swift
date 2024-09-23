import Foundation

final class Queue<T> {
	private var queue: [T] = []

	func enqueue(task: T) {
		 queue.append(task)
	}

	func dequeue() -> T? {
		return queue.isEmpty ? nil : queue.removeFirst()
	}

	func execute(_ action: (T) -> Void) {
		guard let task = dequeue() else { return }
		action(task)
	}

	func peek() -> T? {
		return queue.first
	}

	func isEmpty() -> Bool {
		return queue.isEmpty
	}
}

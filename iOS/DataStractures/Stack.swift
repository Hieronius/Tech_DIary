import Foundation

final class Stack<T> {
	private var stack: [T] = []

	func push(_ item: T) {
		stack.append(item)
	}

	func pop() -> T {
		stack.removeLast()
	}

	func peek() -> T? {
		stack.last
	}

	func execute(_ action: (T) -> Void) {
		let item = pop()
		action(item)
	}
}

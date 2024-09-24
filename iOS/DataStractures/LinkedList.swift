
// MARK: Add comformance of Collection Protocols

struct LinkedList<T: Equatable> {
	private var head: Node<T>?
	private var tail: Node<T>?

	init() {}

	var isEmpty: Bool {
		head == nil
	}

	mutating func push(_ data: T) {
		head = Node(data: data, next: head)
		if tail == nil {
			tail = head
		}
	}

	mutating func append(_ data: T) {
		guard !isEmpty else {
			push(data)
			return
		}

		guard let tailNode = tail else { return }

		tailNode.next = Node(data:data)
		tail = tailNode.next
	}

	func node(at index: Int) -> Node<T>? {
		var currentNode = head
		var currentIndex = 0

		while currentNode != nil && currentIndex < index {
			currentNode = currentNode!.next
			currentIndex += 1
		}

		return currentNode
	}

	@discardableResult
	mutating func insert(_ data: T, after node: Node<T>) -> Node<T> {
		guard tail != node else {
			append(data)
			return tail!
		}

		return node.next!
	}

	@discardableResult
	mutating func pop() -> T? {
		defer {
			head = head?.next
			if isEmpty {
				tail = nil
			}
		}
		return head?.data
	}

	@discardableResult
	mutating func removeLast() -> T? {
		guard let head else { return nil }

		var prev = head
		var current = head

		while let next = current.next {
			prev = current
			current = next
		}

		prev.next = nil
		tail = prev
		return current.data
	}

	@discardableResult
	mutating func remove(after node: Node<T>) -> T? {
		defer {
			if node.next === tail {
				tail = node
			}
			node.next = node.next?.next
		}
		return node.next?.data
	}
}

class Node<T: Equatable> {
	var data: T
	var next: Node?

	init(data: T, next: Node? = nil) {
		self.data = data
		self.next = next
	}
}












extension Node: CustomStringConvertible {
	var description: String {
		guard let next else { return "\(self.data)" }
		return "\(self.data) -> " + String(describing: next) + ""
	}
}

extension Node: Equatable {
	static func == (lhs: Node<T>, rhs: Node<T>) -> Bool {
		return lhs == rhs
	}
}


extension LinkedList: CustomStringConvertible {
	var description: String {
		guard let head else {
			return "Empty list"
		}
		return String(describing: head)
	}
}

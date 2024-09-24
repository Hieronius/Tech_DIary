import Foundation

final class Task {
	private let action: () -> Void

	init(action: @escaping () -> Void) {
		self.action = action
	}

	func execute() {
		action()
	}
}

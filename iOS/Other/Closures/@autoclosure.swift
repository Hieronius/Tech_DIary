import Foundation

class TaskManager2 {
	func addTask(task: @autoclosure () -> Void) {
		task()
	}
}



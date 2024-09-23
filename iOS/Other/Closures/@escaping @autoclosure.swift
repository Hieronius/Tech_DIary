import Foundation

class TaskManager3 {
	var tasks: [() -> Void] = []

	// Add actions to the "tasks" array but also allow to write not a closure but a direct action like "print("something")"

	func addTask(task: @autoclosure @escaping () -> Void) {
		tasks.append(task)
	}

	func executeTasks() {
		for task in tasks {
			task()
		}
	}
}

import Foundation

class TaskManager1 {
	var tasks: [() -> Void] = []

	// We can't remove "@escaping" so we won't be able to add action to the "tasks" array

	func addTask(task: @escaping () -> Void) {
		tasks.append(task)
	}

	func executeTasks() {
		for task in tasks {
			task()
		}
	}
}

import Foundation

func executeImmediately(action: () -> Void) {
	action()
}


// @escaping - so we can store tasks in array

class customManager1 {

	var tasksArray: [() -> Void] = []

	func addTask(task: @escaping () -> Void) {
		tasksArray.append(task)
	}

	func runTasks() {
		for task in tasksArray {
			task()
		}
	}
}

// @autoclosure - so we can pass normal code to wrape it in closure

class customManager2 {

	func addTask(task: @autoclosure () -> Void) {
		task()
	}
}

// @escaping @autoclosure - so we can store and also pass a common code to wrape it into closure

class customManager3 {

	var tasksArray: [() -> Void] = []

	func addTask(task: @escaping @autoclosure () -> Void) {
		tasksArray.append(task)
	}

	func runTasks() {
		for task in tasksArray {
			task()
		}
	}
}

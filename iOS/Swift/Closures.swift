import Foundation

/*

// MARK: - Normal Closure
// Can be just called in any parts of the code
// Can't be stored

executeImmediately {
	print("This is executed immediately")
}

// MARK: - @escaping Closure
// Can be stored in array of closures because of it's delayed execution
// Should be defined as classic closure signature

let manager1 = TaskManager1()

manager1.addTask {
	print("Task 1 executed")
}

manager1.addTask {
	print("Task 2 executed")
}

manager1.executeTasks()

// MARK: @autoclosure
// Can't be stored in array for delayed execution
// Allows to write normal code which is will be wrapped in closure

let manager2 = TaskManager2()

manager2.addTask(task: print("Task 11 executed"))
manager2.addTask(task: print("Task 22 executed"))

// MARK: - @escaping @autoclosure
// Can be stored in array for delayed execution
// Normal pieces of code can be passed so they will be wrapped in closure

let manager3 = TaskManager3()

manager3.addTask(task: print("Task 111 executed"))
manager3.addTask(task: print("Task 222 executed"))

manager3.executeTasks()

// @escaping

print("MY CUSTOM IMPLEMENTATION STARTS HERE")

let customMan1 = customManager1()

customMan1.addTask {
	print("this is custom @escaping task 1")
}

customMan1.addTask {
	print("this is custom @escaping task 2")
}

customMan1.runTasks()

// @autoclosure

let customMan2 = customManager2()

customMan2.addTask(task: print("This is custom @autoclosure task 1"))
customMan2.addTask(task: print("This is custom @autoclosure task 2"))

// @escaping @autoclosure

let customMan3 = customManager3()

customMan3.addTask(task: print("This is custom @escaping @autoclosure task 1"))
customMan3.addTask(task: print("This is custom @escaping @autoclosure task 2"))

customMan3.runTasks()

 */

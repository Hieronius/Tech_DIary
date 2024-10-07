import Foundation

let queue = DispatchQueue(label: "Queue")
var value = 1

func changeValue() {
	sleep(1)
	value += 1
}

// 1. Изменим свойство в async
print(value)
queue.async {
	changeValue()

}

// 2. Изменим свойство в sync
print(value)
queue.sync {
	changeValue()

}
print(value)

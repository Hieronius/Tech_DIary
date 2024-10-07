// MARK: Problem when one thread is trying to read data when the other is trying to write data
// Can be solved with NSLock/Semaphore/Mutex

import Foundation

var count = 0

let thread1 = Thread {
	for _ in 0...999 {
		count += 1
	}
}

let thread2 = Thread {
	for _ in 0...999 {
		count += 1
	}
}

thread1.start()
thread2.start()

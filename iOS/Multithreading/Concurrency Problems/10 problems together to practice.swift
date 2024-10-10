//
//  10 problems together to practice.swift
//  Tech Diary
//
//  Created by Арсентий Халимовский on 09.10.2024.
//

import Foundation

/*

// 1. Deadlock
class DeadlockExample {
	let lock1 = NSLock()
	let lock2 = NSLock()

	func deadlock() {
		DispatchQueue.global().async {
			self.lock1.lock()
			print("Lock 1 acquired")
			sleep(1) // Simulate work
			self.lock2.lock()
			print("Lock 2 acquired")
			self.lock2.unlock()
			self.lock1.unlock()
		}

		DispatchQueue.global().async {
			self.lock2.lock()
			print("Lock 2 acquired")
			sleep(1) // Simulate work
			self.lock1.lock()
			print("Lock 1 acquired")
			self.lock1.unlock()
			self.lock2.unlock()
		}
	}
}

// 2. LiveLock
 class LivelockExample {
	 var isTaskCompleted = false
	 var attempts = 0

	 func startLivelock() {
		 let queue1 = DispatchQueue(label: "com.example.livelock1", attributes: .concurrent)
 		let queue2 = DispatchQueue(label: "com.example.livelock2", attributes: .concurrent)

		 queue1.async {
			 while !self.isTaskCompleted {
				 print("Thread 1: Not completed, retrying... (Attempt \(self.attempts + 1))")
				 self.attempts += 1
				 sleep(1) // Simulate work
			 }
			 self.isTaskCompleted = true
			 print("Thread 1: Task completed.")
		 }

 		queue2.async {
 			while !self.isTaskCompleted {
 				print("Thread 2: Not completed, retrying... (Attempt \(self.attempts + 1))")
 				self.attempts += 1
 				sleep(1) // Simulate work
 			}
 			self.isTaskCompleted = true
 			print("Thread 2: Task completed.")
 		}
	 }
 }

// 3. Starvation
class StarvationExample {
	let lock = NSLock()
	var resource = 0

	func starvation() {
		DispatchQueue.global().async {
			while true {
				self.lock.lock()
				self.resource += 1
				print("Resource incremented: \(self.resource)")
				self.lock.unlock()
				sleep(0.1)
			}
		}

		DispatchQueue.global().async {
			while true {
				// High priority task that may starve the low priority task
				if self.resource > 0 {
					self.lock.lock()
					self.resource -= 1
					print("Resource decremented: \(self.resource)")
					self.lock.unlock()
				}
				sleep(0.01) // Short sleep to simulate high priority
			}
		}
	}
}

// 4. Resource Contention
class ResourceContentionExample {
	let lock = NSLock()
	var sharedResource = 0

	func contention() {
		let group = DispatchGroup()

		for _ in 0..<10 {
			group.enter()
			DispatchQueue.global().async {
				self.lock.lock()
				for _ in 0..<1000 {
					self.sharedResource += 1
				}
				self.lock.unlock()
				group.leave()
			}
		}

		group.wait() // Wait for all tasks to complete
		print("Final value: \(sharedResource)")
	}
}

// 5. Priority Inversion
class PriorityInversionExample {
	let lock = NSLock()

	func lowPriorityTask() {
		lock.lock()
		print("Low priority task started")
		sleep(3) // Simulate long task
		lock.unlock()
		print("Low priority task finished")
	}

	func highPriorityTask() {
		sleep(1) // Ensure it starts after low priority task locks the resource
		lock.lock()
		print("High priority task started")
		lock.unlock()
		print("High priority task finished")
	}
}

// 6. False Sharing
class FalseSharingExample {
	var values: [Int] = Array(repeating: 0, count: 2)

	func falseSharing() {
		DispatchQueue.concurrentPerform(iterations: values.count) { index in
			for _ in 0..<1000000 {
				values[index] += 1 // False sharing occurs if both threads modify adjacent cache lines.
			}
		}

		print("Values: \(values)")
	}
}

// 7. Thread Explosion
class ThreadExplosionExample {

	func threadExplosion() {
		for _ in 0..<10000 { // Creating too many threads can lead to performance issues.
			DispatchQueue.global().async {
				print("Thread running")
				sleep(1)
			}
		}
	}
}

// 8. Data Race
class DataRaceExample {
	var counter = 0

	func dataRace() {
		DispatchQueue.concurrentPerform(iterations: 1000) { _ in
			counter += 1 // This can lead to a data race.
		}

		print("Final counter value: \(counter)") // Unpredictable output.
	}
}

// 9. Race Condition
class RaceConditionExample {

	var sharedCounter = 0

	func raceCondition() {
		let queue = DispatchQueue(label: "com.example.queue", attributes: .concurrent)

		for _ in 0..<1000 {
			queue.async {
				let temp = self.sharedCounter
				sleep(0.01) // Simulate some delay
				self.sharedCounter = temp + 1 // Race condition here.
			}
		}

		sleep(2) // Wait for all tasks to finish.
		print("Final counter value: \(sharedCounter)") // Unpredictable output.
	}
}

// 10. Atomicity Violations
class AtomicityViolationExample {

	var balance: Int = 100

	func atomicityViolation() {
		DispatchQueue.global().async {
			for _ in 0..<50 {
				if self.balance > 0 {
					self.balance -= 1 // This operation is not atomic.
					print("Balance decreased to \(self.balance)")
				}
			}
		}

		DispatchQueue.global().async {
			for _ in 0..<50 {
				if self.balance < 100 {
					self.balance += 1 // This operation is also not atomic.
					print("Balance increased to \(self.balance)")
				}
			}
		}

		sleep(2) // Wait for both tasks to finish.
		print("Final balance: \(balance)") // Unpredictable output due to atomicity violation.
	}
}

 */

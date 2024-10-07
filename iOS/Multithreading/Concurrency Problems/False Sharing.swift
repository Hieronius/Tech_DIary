// MARK: count1 and count2 shares the same cache line so in attempt to access them concurrently can lead to false sharing and CPU performance degrodation

import Foundation

class Counter {
	var count1: Int64 = 0
	var count2: Int64 = 0 // Assume count1 and count2 are in the same cache line
}

let counter = Counter()
let iterations = 1_000_000

let queue = DispatchQueue.global(qos: .default)
let group = DispatchGroup()

// Thread 1 increments count1
group.enter()
queue.async {
	for _ in 0..<iterations {
		counter.count1 += 1
	}
	group.leave()
}

// Thread 2 increments count2
group.enter()
queue.async {
	for _ in 0..<iterations {
		counter.count2 += 1
	}
	group.leave()
}

group.wait()
print("Final count1: \(counter.count1), Final count2: \(counter.count2)")

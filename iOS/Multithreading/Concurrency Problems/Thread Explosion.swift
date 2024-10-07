// MARK: Creation of high volume of threads without managing can lead to system's recourses exhaustion

import Foundation

final class HeavyWork {
	static func dispatchGlobal(seconds: UInt32) {
		DispatchQueue.global(qos: .background).async {
			sleep(seconds)
			// Recursive call to create multiple threads
			for _ in 1...150 {
				HeavyWork.dispatchGlobal(seconds: 3)
			}
		}
	}
}

// Start the thread explosion
HeavyWork.dispatchGlobal(seconds: 3)

// Keep the main thread alive to observe the output
RunLoop.main.run()

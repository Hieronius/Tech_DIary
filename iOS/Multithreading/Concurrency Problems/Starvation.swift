// MARK: Problem occurrs when thread can't get resources needed to do the work (Live lock it's a personal case)
// difference that one of some threads can starve when in LiveLock both participants of the conflicts are waiting it's turn to work

import Foundation

public class SoundCloud {
	static func downloadSound() -> [String] {
		print("Обработка файлов")
		sleep(5) // Имитация тяжелого метода
		return ["SomeSound"]
	}
}

public class iPad {
	public func playSound() {
		print("Песня включилась")
	}

	public func shareSound() {
		print("Поделиться песней")
	}
}

var ipad = iPad()
let queue = DispatchQueue(label: "Starvation")

// Загрузить песню
queue.sync {
	SoundCloud.downloadSound()
}

// Включить песню
queue.async {
	ipad.playSound()
}

// Поделиться песней
queue.async {
	ipad.shareSound()
}

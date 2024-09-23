import Foundation

// MARK: Component

final class Barista {

	// MARK: Out #1

	private(set) var moneyEarn: Result<Double, WorkError>?

	// MARK: In #1 - Resources

	private let menu: Menu // In #1
	private let resources: Resources // Deps, coffee, milk, water, ...

	// MARK: Configuration + Dependencies

	init(menu: Menu,
		 resources: Resources) {
		self.menu = menu
		self.resources = resources
	}

	// MARK: Functionality

	// Client order - In #2, Coffee - Out #2
	func makeTheCoffee(clientOrder: Order) -> Result<Coffee, WorkError> {
		// Use Resources #1 and client order #2 to produce Out #1 and Out #2
		return .success(Coffee.cappuccino)
	}
}

enum WorkError: Error {
	case workError
}

enum Resources {
	case milk
	case coffee
	case water
}

enum Menu {
	case latte
	case cappuccino
	case espresso
}

enum Order {
	case coffee
	case desert
	case sandwich
}

enum Coffee {
	case latte
	case cappuccino
	case espresso
}

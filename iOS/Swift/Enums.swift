import Foundation

/*

enum TypeDevice {
	case laptop(mark: Mark)
	case desktopComputer(mark: Mark)
	case tablet(mark: Mark)
	case smartPhone(mark: Mark)
	case smartWatch(mark: Mark)

	// You can nest another Enum in Enum
	enum Mark {
		case apple
		case acer
		case hp
	}
}

enum CardBrandOption {
	case ford
	case toyota
	case honda

	// You can use nested computed properties
	var title: String {
		switch self {
		case .ford:
			return "ford"
		case .toyota:
			return "toyota"
		case .honda:
			return "honda"
		default:
			return "Default Value"
		}
	}
}

// You can iterate through Enum cases by assigning it to the CaseIterable protocol
enum example: CaseIterable {}

// Recursive Enums (indirect for specific cases)
enum ArithmeticExpression {
	case number(Int)
	indirect case addition(ArithmeticExpression, ArithmeticExpression)
	indirect case multiplication(ArithmeticExpression, ArithmeticExpression)

	func evaluate(_ expression: ArithmeticExpression) -> Int {
		switch expression {
		case let .number(value):
			return value
		case let .addition(left, right):
			return evaluate(left) + evaluate(right)
		case let .multiplication(left, right):
			return evaluate(left) * evaluate(right)
		}
	}
}

// Recursive Enums (for the whole Enum)
indirect enum ArithmeticExpressions {
	case number(Int)
	case addition(ArithmeticExpressions, ArithmeticExpressions)
	case multiplication(ArithmeticExpressions, ArithmeticExpressions)
}

let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(five, four)
let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2)) // 18

// Result
let result = Result<Any, Error>()

 */



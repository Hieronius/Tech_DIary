/*
 MARK: Check list of how to approach the problem

 MARK: D. The Game on Tora

 Read condition a few times and ask questions from interviewer (chatGPT to clear the way)
 Add answers to the check list

 1. Come up with any Core Solution (algorithm) of the problem
 - Grid representation as 2D array of Matrix
 - Torus Grid Properties
 - Breadth-First Search or Depth-First Search
 - Queue Data Stracture to implement Breadth-First Search


 2. Define how to Input Data
 - readLine() with guard will do


 3. Define how to Output Data
 - print(result) will do


 4. Decide what checks to process


 5. Decide to use forIn/while or high order functions


 6. Measure the Speed (O) of Solution


 7. Measure the Memory Usage of Solution


 8. Provide The Clarity of the code



 9. Provide The Shorteness of the code


 10. Provide The Style of the code


 11. Tests and EdgeCases


 */

struct FieldSize {
	var lines: Int
	var columns: Int
}

struct Coordinates {
	var x: Int
	var y: Int
}

//func getSolution() {
//
//	var rawInput = [String]()
//
//	while let input = readLine(), input != "" {
//		rawInput.append(input)
//	}
//
//	var processedInput = rawInput
//		.map { $0.components(separatedBy: " ") }
//		.map { $0.compactMap { Int($0)} }
//
//	guard processedInput[0].count == 2,
//		  processedInput[1].count == 4
//	else { return }
//
//	let fieldSize = FieldSize(
//		lines: processedInput[0][0],
//		columns: processedInput[0][1]
//	)
//	processedInput.removeFirst()
//
//	let start = Coordinates(
//		x: processedInput[0][0],
//		y: processedInput[0][1]
//	)
//
//	let finish = Coordinates(
//		x: processedInput[0][2],
//		y: processedInput[0][3]
//	)
//
//	processedInput.removeFirst()
//
//	let gameField = processedInput
//
//
//
//	// 5. Output data
//	print(fieldSize)
//	print(start)
//	print(finish)
//
//	gameField.map { print($0) }
//}
//
//getSolution()


// MARK: implementation of the Queue
// queue data stracture (one for X, one for Y, and one for Z (3D)
// n - number of nodes in the graph
// g - adjacency list representing unweighted graph

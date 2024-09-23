import Foundation

// Speed - O(n * log n)
// Space - O(n)

func merge(_ left: [Int], _ right: [Int]) -> [Int] {
	// 1.
	var leftIndex = 0
	var rightIndex = 0

	// 2.
	var orderedArray: [Int] = []

	// Merging logic here!

	// 2.1
	while leftIndex < left.count && rightIndex < right.count {
		let leftElement = left[leftIndex]
		let rightElement = right[rightIndex]


		if leftElement < rightElement {
			orderedArray.append(leftElement)
			leftIndex += 1
		} else if leftElement > rightElement {
			orderedArray.append(rightElement)
			rightIndex += 1
		} else { // if both elemets are equal
			orderedArray.append(leftElement)
			leftIndex += 1
			orderedArray.append(rightElement)
			rightIndex += 1
		}
	}

	// 2.2
	while leftIndex < left.count {
		orderedArray.append(left[leftIndex])
		leftIndex += 1
	}

	while rightIndex < right.count {
		orderedArray.append(right[rightIndex])
		rightIndex += 1
	}

	return orderedArray
}

func mergeSort(_ array: [Int]) -> [Int] {
	// 1. Check if there a single element and return it because it's already sorted
	// It's a base case for any recursion functions
	guard array.count > 1 else { return array }

	// 2. Split an array into the small ones until you can't do it anymore
	// Recursion gives us ability to try split an array again and again until base case of recursion will drop us from the function
	let middleIndex = array.count / 2

	let leftArray = mergeSort(Array(array[0..<middleIndex]))
	let rightArray = mergeSort(Array(array[middleIndex..<array.count]))

	return merge(leftArray, rightArray)
}

/*
 MergeSort([5, 3, 8, 4, 2, 6, 1, 7])
 |
 |-- MergeSort([5, 3, 8, 4])
 |   |
 |   |-- MergeSort([5, 3])
 |   |   |
 |   |   |-- MergeSort([5])
 |   |   |-- MergeSort([3])
 |   |   |-- Merge([5], [3]) -> [3, 5]
 |   |
 |   |-- MergeSort([8, 4])
 |   |   |
 |   |   |-- MergeSort([8])
 |   |   |-- MergeSort([4])
 |   |   |-- Merge([8], [4]) -> [4, 8]
 |   |
 |   |-- Merge([3, 5], [4, 8]) -> [3, 4, 5, 8]
 |
 |-- MergeSort([2, 6, 1, 7])
	 |
	 |-- MergeSort([2, 6])
	 |   |
	 |   |-- MergeSort([2])
	 |   |-- MergeSort([6])
	 |   |-- Merge([2], [6]) -> [2, 6]
	 |
	 |-- MergeSort([1, 7])
	 |   |
	 |   |-- MergeSort([1])
	 |   |-- MergeSort([7])
	 |   |-- Merge([1], [7]) -> [1, 7]
	 |
	 |-- Merge([2, 6], [1, 7]) -> [1, 2, 6, 7]

 Merge([3, 4, 5, 8], [1, 2, 6, 7]) -> [1, 2, 3, 4, 5, 6, 7, 8]
 */

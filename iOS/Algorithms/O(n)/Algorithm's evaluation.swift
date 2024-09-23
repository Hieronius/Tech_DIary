//
//  Algorithm's evaluation.swift
//  Tech Diary
//
//  Created by Халимовский Арсентий Владимирович on 07.08.2024.
//

import Foundation

/*

 MARK: - O(1) - Constant Time:

  An algorithm with O(1) complexity runs in constant time, regardless of the input size.

  func getFirstElement(array: [Int]) -> Int? {
	 return array.first
  }

  Explanation: The function getFirstElement always takes the same amount of time to execute, no matter how large the array is.


MARK: - O(log n) - Logarithmic Time:

 An algorithm with O(log n) complexity typically involves dividing the problem in half each time.

 func binarySearch(array: [Int], target: Int) -> Bool {
	 var left = 0
	 var right = array.count - 1

	 while left <= right {
		 let mid = (left + right) / 2
		 if array[mid] == target {
			 return true
		 } else if array[mid] < target {
			 left = mid + 1
		 } else {
			 right = mid - 1
		 }
	 }
	 return false
 }

 Explanation: The binarySearch function halves the search space with each iteration, resulting in a logarithmic time complexity.

 MARK: - O(n) - Linear Time:

 An algorithm with O(n) complexity scales linearly with the input size.

 func linearSearch(array: [Int], target: Int) -> Bool {
	 for element in array {
		 if element == target {
			 return true
		 }
	 }
	 return false
 }

 Explanation: The linearSearch function checks each element in the array, so the time taken grows linearly with the size of the array.

 MARK: - O(n log n) - Linearithmic Time:

 An algorithm with O(n log n) complexity is common in efficient sorting algorithms like merge sort and quicksort.

 func mergeSort(array: [Int]) -> [Int] {
	 guard array.count > 1 else { return array }

	 let middleIndex = array.count / 2
	 let leftArray = mergeSort(array: Array(array[0..<middleIndex]))
	 let rightArray = mergeSort(array: Array(array[middleIndex..<array.count]))

	 return merge(leftArray, rightArray)
 }

 func merge(_ left: [Int], _ right: [Int]) -> [Int] {
	 var leftIndex = 0
	 var rightIndex = 0
	 var orderedArray: [Int] = []

	 while leftIndex < left.count && rightIndex < right.count {
		 if left[leftIndex] < right[rightIndex] {
			 orderedArray.append(left[leftIndex])
			 leftIndex += 1
		 } else {
			 orderedArray.append(right[rightIndex])
			 rightIndex += 1
		 }
	 }

	 orderedArray.append(contentsOf: left[leftIndex..<left.count])
	 orderedArray.append(contentsOf: right[rightIndex..<right.count])

	 return orderedArray
 }

 Explanation: The mergeSort function divides the array into halves (log n splits) and then merges them (n operations), resulting in O(n log n) complexity.

 MARK: - O(n^2) - Quadratic Time:

 An algorithm with O(n^2) complexity typically involves nested loops.

 func bubbleSort(array: inout [Int]) {
	 for i in 0..<array.count {
		 for j in 0..<(array.count - i - 1) {
			 if array[j] > array[j + 1] {
				 array.swapAt(j, j + 1)
			 }
		 }
	 }
 }

 Explanation: The bubbleSort function has nested loops that iterate over the array, resulting in quadratic time complexity.	


 */

//
//  Bug In Library.swift
//  Tech Diary
//
//  Created by Халимовский Арсентий Владимирович on 03.09.2024.
//

/*
 import Foundation

 func getSolution() {
	 var lines = [String]()

	 while let line = readLine(), !line.isEmpty {
		 lines.append(line)
	 }

	 var resultDict = [Int: String]()

	 for line in lines {
		 var testLine = String()
		 var indexPosition = String()
		 for char in line {
			 guard Int(String(char)) != nil else {
				 testLine.append(char)
				 continue
			 }
			 indexPosition.append(char)
		 }
		 guard let num = Int(indexPosition) else { return }
		 resultDict[num] = testLine
	 }

	 resultDict.keys
		 .sorted(by: { $0 < $1 })
		 .forEach { key in
			 guard let line = resultDict[key] else { return }
			 print(line)
		 }

 }
 getSolution()
 */

//
//  UnknownAlgorithms.swift
//  Unknown Algorithms
//
//  Created by Begg, Alistair (AMM) on 30/11/2021.
//

import Foundation

class UnknownAlgorithms {
    func firstAndLast(_ array: [Int]) -> Int {
        if array.count <= 0 {
            return 0
        } else if array.count == 1 {
            return array[0] * 2
        } else {
            return array[0] + array[array.count - 1]
        }
    }
    
    func findMode(_ array: [Int]) -> Int {
        var amountOfEachInteger: [Int: Int] = [:]
        for i in 1..<array.count {
            if amountOfEachInteger[array[i]] == nil {
                amountOfEachInteger[array[i]] = 1
            }
            if array[i] == array[i - 1] {
                amountOfEachInteger[array[i]] = amountOfEachInteger[array[i]]! + 1
            }
        }
        if let maximum = (amountOfEachInteger.max { a,b in a.value < b.value }) {
            return maximum.key
        } else {
            return 0
        }
    }
    
    private func findSmallestIndex(_ array: [Int]) -> Int {
        var smallestIndex = 0
        for i in 1..<array.count {
            if array[smallestIndex] > array[i] {
                smallestIndex = i
            }
        }
        return smallestIndex
    }
    
    func findSecondSmallest(_ array: [Int]) -> Int {
        var secondArray = array
        let smallestIndex = findSmallestIndex(array)
        secondArray.remove(at: smallestIndex)
        let secondSmallestIndex = findSmallestIndex(secondArray)
        if secondSmallestIndex < smallestIndex {
            return array[secondSmallestIndex]
        } else {
            return array[secondSmallestIndex + 1]
        }
    }
}

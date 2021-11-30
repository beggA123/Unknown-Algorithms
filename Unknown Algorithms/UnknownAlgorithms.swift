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
        var amountSame = 1
        for i in 1..<array.count {
            if array[i] == array[i - 1] {
                amountSame += 1
                
            } else {
                amountSame = 1
            }
        }
    }
}

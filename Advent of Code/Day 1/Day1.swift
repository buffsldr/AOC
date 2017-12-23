//
//  Day1.swift
//  test
//
//  Created by Dave DeLong on 12/23/17.
//  Copyright © 2017 Dave DeLong. All rights reserved.
//

import Foundation

class Day1: Day {
    
    let input: Array<UInt>
    
    required init() {
        input = Day1.trimmedInput().map { UInt(String($0))! }
    }
    
    func checksum(_ ints: Array<UInt>, offset: Int) -> UInt {
        let consecutivelyEqual = ints.enumerated().map { (index, element) -> UInt in
            let pair = ints[(index + offset) % ints.count]
            return element == pair ? element : 0
        }
        
        let sum = consecutivelyEqual.reduce(0, +)
        return sum
    }
    
    func part1() {
        print(checksum(input, offset: 1))
    }
    
    func part2() {
        print(checksum(input, offset: input.count / 2))
    }
    
}

//
//  Day5.swift
//  test
//
//  Created by Dave DeLong on 12/22/17.
//  Copyright © 2017 Dave DeLong. All rights reserved.
//

extension Year2017 {

class Day5: Day {
    
    init() { super.init() }
    
    override func part1() -> String {
        var input = trimmedInputLineIntegers
        var stepCount = 0
        var index = 0
        while index < input.count {
            let offset = input[index]
            input[index] = offset + 1
            index += offset
            stepCount += 1
        }
        return "\(stepCount)"
    }
    
    override func part2() -> String {
        var input = trimmedInputLineIntegers
        var stepCount = 0
        var index = 0
        while index < input.count {
            let offset = input[index]
            
            let delta = (offset >= 3) ? -1 : 1
            input[index] = offset + delta
            index += offset
            stepCount += 1
        }
        return "\(stepCount)"
    }
}

}

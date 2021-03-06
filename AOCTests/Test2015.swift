//
//  Test2015.swift
//  AOCTests
//
//  Created by Dave DeLong on 12/8/18.
//  Copyright © 2015 Dave DeLong. All rights reserved.
//

import XCTest
import AOC

class Test2015: XCTestCase {
    
    func testDay1() {
        let d = Year2015.Day1()
        let (p1, p2) = d.run()
        
        XCTAssertEqual(p1, "74")
        XCTAssertEqual(p2, "1795")
    }
    
    func testDay2() {
        let d = Year2015.Day2()
        let (p1, p2) = d.run()
        
        XCTAssertEqual(p1, "1606483")
        XCTAssertEqual(p2, "3842356")
    }
    
    func testDay3() {
        let d = Year2015.Day3()
        let (p1, p2) = d.run()
        
        XCTAssertEqual(p1, "2565")
        XCTAssertEqual(p2, "2639")
    }
    
    func testDay4() {
        let d = Year2015.Day4()
        let (p1, p2) = d.run()
        
        XCTAssertEqual(p1, "117946")
        XCTAssertEqual(p2, "3938038")
    }
    
    func testDay5() {
        let d = Year2015.Day5()
        let (p1, p2) = d.run()
        
        XCTAssertEqual(p1, "255")
        XCTAssertEqual(p2, "55")
    }
    
    func testDay6() {
        let d = Year2015.Day6()
        let (p1, p2) = d.run()
        
        XCTAssertEqual(p1, "377891")
        XCTAssertEqual(p2, "14110788")
    }
    
    func testDay7() {
        let d = Year2015.Day7()
        let (p1, p2) = d.run()
        
        XCTAssertEqual(p1, "956")
        XCTAssertEqual(p2, "40149")
    }
    
    func testDay8() {
        let d = Year2015.Day8()
        let (p1, p2) = d.run()
        
        XCTAssertEqual(p1, "1342")
        XCTAssertEqual(p2, "2074")
    }
    
    func testDay9() {
        let d = Year2015.Day9()
        let (p1, p2) = d.run()
        
        XCTAssertEqual(p1, "251")
        XCTAssertEqual(p2, "898")
    }
    
    func testDay10() {
        let d = Year2015.Day10()
        let (p1, p2) = d.run()
        
        XCTAssertEqual(p1, "492982")
        XCTAssertEqual(p2, "6989950")
    }
    
    func testDay11() {
        let d = Year2015.Day11()
        let (p1, p2) = d.run()
        
        XCTAssertEqual(p1, "hepxxyzz")
        XCTAssertEqual(p2, "heqaabcc")
    }
    
    func testDay12() {
        let d = Year2015.Day12()
        let (p1, p2) = d.run()
        
        XCTAssertEqual(p1, "191164")
        XCTAssertEqual(p2, "87842")
    }
    
    func testDay13() {
        let d = Year2015.Day13()
        let (p1, p2) = d.run()
        
        XCTAssertEqual(p1, "733")
        XCTAssertEqual(p2, "725")
    }
    
    func testDay14() {
        let d = Year2015.Day14()
        let (p1, p2) = d.run()
        
        XCTAssertEqual(p1, "2640")
        XCTAssertEqual(p2, "1102")
    }
    
    func testDay15() {
        let d = Year2015.Day15()
        let (p1, p2) = d.run()
        
        XCTAssertEqual(p1, "222870")
        XCTAssertEqual(p2, "117936")
    }
    
    func testDay16() {
        let d = Year2015.Day16()
        let (p1, p2) = d.run()
        
        XCTAssertEqual(p1, "103")
        XCTAssertEqual(p2, "405")
    }
    
    func testDay17() {
        let d = Year2015.Day17()
        let (p1, p2) = d.run()
        
        XCTAssertEqual(p1, "654")
        XCTAssertEqual(p2, "57")
    }
    
    func testDay18() {
        let d = Year2015.Day18()
        let (p1, p2) = d.run()
        
        XCTAssertEqual(p1, "1061")
        XCTAssertEqual(p2, "1006")
    }
    
    func testDay19() {
        let d = Year2015.Day19()
        let (p1, p2) = d.run()
        
        XCTAssertEqual(p1, "535")
        XCTAssertEqual(p2, "212")
    }
    
    func testDay20() {
        let d = Year2015.Day20()
        let (p1, p2) = d.run()
        
        XCTAssertEqual(p1, "786240")
        XCTAssertEqual(p2, "831600")
    }
    
    func testDay21() {
        let d = Year2015.Day21()
        let (p1, p2) = d.run()
        
        XCTAssertEqual(p1, "111")
        XCTAssertEqual(p2, "188")
    }
    
    func testDay22() {
        let d = Year2015.Day22()
        let (p1, p2) = d.run()
        
        XCTAssertEqual(p1, "")
        XCTAssertEqual(p2, "")
    }
    
    func testDay23() {
        let d = Year2015.Day23()
        let (p1, p2) = d.run()
        
        XCTAssertEqual(p1, "")
        XCTAssertEqual(p2, "")
    }
    
    func testDay24() {
        let d = Year2015.Day24()
        let (p1, p2) = d.run()
        
        XCTAssertEqual(p1, "")
        XCTAssertEqual(p2, "")
    }
    
    func testDay25() {
        let d = Year2015.Day25()
        let (p1, p2) = d.run()
        
        XCTAssertEqual(p1, "")
        XCTAssertEqual(p2, "")
    }
    
}

//
//  Day3.swift
//  test
//
//  Created by Dave DeLong on 12/23/17.
//  Copyright © 2017 Dave DeLong. All rights reserved.
//


extension CGRect {
    func positions() -> Set<Position> {
        let xRange = Int(minX) ..< Int(maxX)
        let yRange = Int(minY) ..< Int(maxY)
        
        return Set(xRange.flatMap { x -> Array<Position> in
            return yRange.map { Position(x: x, y: $0) }
        })
    }
}

extension Year2018 {
    
    struct Claim {
        let id: String
        let rect: CGRect
    }

    public class Day3: Day {
        
        private let claimRegex = Regex(pattern: "^\\#(\\d+) @ (\\d+),(\\d+): (\\d+)x(\\d+)$")
        
        lazy var claims: Array<Claim> = {
            let lines = input.trimmed.lines.raw
            let claims = lines.map { line -> Claim in
                let match = claimRegex.match(line)!
                let c = Claim(id: match[1]!, rect: CGRect(x: Double(match[2]!)!,
                                                          y: Double(match[3]!)!,
                                                          width: Double(match[4]!)!,
                                                          height: Double(match[5]!)!))
                return c
            }
            return claims
        }()
        
        public init() { super.init(inputSource: .file(#file)) }
        
        public override func run() -> (String, String) {
            let usedPositions = claims.flatMap { $0.rect.positions() }
            let counts = CountedSet(counting: usedPositions)
            
            let overlaps = counts.values.count(where: { $0 >= 2 })
            
            let loneClaim = claims.first { claim -> Bool in
                claim.rect.positions().allSatisfy { counts[$0] == 1 }
            }
            
            return ("\(overlaps)", loneClaim!.id)
        }
        
    }

}

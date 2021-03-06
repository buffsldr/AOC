//
//  main.swift
//  test
//
//  Created by Dave DeLong on 12/13/17.
//  Copyright © 2015 Dave DeLong. All rights reserved.
//

extension Year2015 {

    public class Day14: Day {
        
        struct ReindeerState {
            var points: Int
            var distanceTraveled: Int
            var timeRemaining: Int
            var isResting: Bool
        }
        
        struct Reindeer {
            let velocity: Int
            let travelTime: Int
            let restTime: Int
        }
        
        public init() { super.init(inputSource: .file(#file)) }
        
        lazy var reindeer: Dictionary<String, Reindeer> = {
            let r = Regex(pattern: "(.+?) can fly (\\d+) km/s for (\\d+) seconds, but then must rest for (\\d+) seconds\\.")
            let tuples = input.lines.raw.map { l -> (String, Reindeer) in
                let m = r.match(l)!
                return (m[1]!, Reindeer(velocity: Int(m[2]!)!, travelTime: Int(m[3]!)!, restTime: Int(m[4]!)!))
            }
            return Dictionary(uniqueKeysWithValues: tuples)
        }()
        
        override public func run() -> (String, String) {
            var state = Dictionary<String, ReindeerState>()
            
            for (name, r) in reindeer {
                state[name] = ReindeerState(points: 0, distanceTraveled: 0, timeRemaining: r.travelTime, isResting: false)
            }
            
            for _ in 0 ..< 2503 {
                for (name, r) in reindeer {
                    var s = state[name]!
                    if s.isResting == false {
                        s.distanceTraveled += r.velocity
                    }
                    s.timeRemaining -= 1
                    if s.timeRemaining == 0 {
                        s.isResting.toggle()
                        if s.isResting {
                            s.timeRemaining = r.restTime
                        } else {
                            s.timeRemaining = r.travelTime
                        }
                    }
                    state[name] = s
                }
                
                let furthest = state.values.map { $0.distanceTraveled }.max()!
                for (name, r) in state {
                    if r.distanceTraveled == furthest {
                        var newState = r
                        newState.points += 1
                        state[name] = newState
                    }
                }
            }
            
            let furthestReindeer = state.values.map { $0.distanceTraveled }.max()!
            let mostPoints = state.values.map { $0.points }.max()!
            
            return ("\(furthestReindeer)", "\(mostPoints)")
        }
        
    }

}

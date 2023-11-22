//
//  Int+RandomExcludingSome.swift
//  SemanaTec
//
//  Created by Hector Reyes on 24/10/23.
//

import Foundation
extension Int {
    static func random(in range: ClosedRange<Int>, excluding x: Int) -> Int {
        if range.contains(x) {
            let r = Int.random(in: Range(uncheckedBounds: (range.lowerBound, range.upperBound)))
            return r == x ? range.upperBound : r
        } else {
            return Int.random(in: range)
        }
    }
}

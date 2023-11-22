//
//  Array+Identifiable.swift
//  SemanaTec
//
//  Created by Hector Reyes on 24/10/23.
//

import Foundation

extension Array where Element: Identifiable {
    func firstIndex(matching: Element) -> Int? {    // return value is an Optional
        for index in 0 ..< self.count {
            if self[index].id == matching.id {
                return index
            }
        }
        return nil
    }
}

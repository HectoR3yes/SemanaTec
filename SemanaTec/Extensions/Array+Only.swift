//
//  Array+Only.swift
//  SemanaTec
//
//  Created by Hector Reyes on 24/10/23.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}

//
//  SemanaTecApp.swift
//  SemanaTec
//
//  Created by Hector Reyes on 24/10/23.
//

import SwiftUI

@main
struct memory_card_matching_game_App: App {
    var body: some Scene {
        WindowGroup {
            ThemeSelectionView(tcManager: ThemeCollectionManager())
        }
    }
}

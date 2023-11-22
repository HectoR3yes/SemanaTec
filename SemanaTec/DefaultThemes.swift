//
//  DefaultThemes.swift
//  SemanaTec
//
//  Created by Hector Reyes on 24/10/23.
//

import SwiftUI

struct DefaultThemes {

    static let theme0 = ThemeCollection.Theme (
        name: "Fruits",
        accentColor: UIColor(Color.pink),
        emojiSet: ["🍎", "🍊", "🍋", "🍌", "🍉", "🍇"]
    )
    
    static let theme1 = ThemeCollection.Theme (
        name: "Animals",
        accentColor: UIColor(Color.orange),
        emojiSet: ["🦊", "🐻", "🐼", "🐨", "🐯", "🦁"]
    )
    
    static let theme2 = ThemeCollection.Theme (
        name: "Balls",
        accentColor: UIColor(Color.yellow),
        emojiSet: ["⚽️", "🏀", "🏈", "🎾", "🏐", "🎱"]
    )
    
    
    static let theme3 = ThemeCollection.Theme (
        name: "Vegetables",
        accentColor: UIColor(Color.green),
        emojiSet: ["🥦","🥬","🥒","🫑","🌽","🍆"]
    )
    
    static let theme4 = ThemeCollection.Theme (
        name: "Countries",
        accentColor: UIColor(Color.blue),
        emojiSet: ["🇨🇦", "🇺🇸", "🇨🇳", "🇫🇷", "🇷🇺", "🇬🇧"]
    )
    
    static let theme5 = ThemeCollection.Theme (
        name: "Vehicles",
        accentColor: UIColor(Color.purple),
        emojiSet: ["🚎","🛵","🚕","🚓","🚑","🚚","🚒"]
    )
}

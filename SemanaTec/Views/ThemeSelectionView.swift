//
//  ThemeSelectionView.swift
//  SemanaTec
//
//  Created by Hector Reyes on 24/10/23.
//

import SwiftUI

struct ThemeSelectionView: View {
    @ObservedObject var tcManager: ThemeCollectionManager
    @Environment(\.presentationMode) var presentation
    @State private var editMode = EditMode.inactive
    @State private var showingSheet = false
    @State private var selectedTheme: ThemeCollection.Theme? = nil
    
    var body: some View {
        return NavigationView {
            VStack {
                List {
                    ForEach(tcManager.themes) { theme in
                        NavigationLink(destination: DestinationPageView(theme: theme)) {
                            HStack {
                                displayCircularEditButton(theme: theme)
                                VStack(alignment: .leading, spacing: 8) {
                                    Text(theme.name)
                                    Text(theme.emojiSet.joined(separator: " "))
                                }.font(.headline).padding()
                            }
                        }
                    }.onDelete(perform: onDelete)
                    .onMove(perform: onMove)
                }
                .listStyle(InsetGroupedListStyle())
                .toolbar {

                }
                .navigationTitle("Themes")
            }
            DestinationPageView(theme: DefaultThemes.theme1)
        }
    }
    
    private func onDelete(atOffsets: IndexSet) {
        tcManager.removeTheme(atOffsets: atOffsets)
    }
    
    private func onMove(source: IndexSet, destination: Int) {
        tcManager.moveTheme(fromOffsets: source, toOffset: destination)
    }
    
    @ViewBuilder
    private func displayCircularEditButton(theme: ThemeCollection.Theme) -> some View {
        withAnimation(.easeIn) {
            ZStack{
                Image(systemName: "pencil.circle.fill")
                    .foregroundColor(.blue)
                    .imageScale(.large)
                    .opacity(editMode.isEditing ? 1:0)
                    .onTapGesture {
                        selectedTheme = theme
                        showingSheet = true
                    }
                Image(systemName: "chevron.right.circle.fill")
                    .opacity(editMode.isEditing ? 0:1)
                    .foregroundColor(Color(theme.accentColor))
            }
        }
    }
}

struct DestinationPageView: View {
    var theme: ThemeCollection.Theme
    var viewModel: EmojiMemoryGameViewModel
    
    init(theme: ThemeCollection.Theme) {
        self.theme = theme
        self.viewModel = EmojiMemoryGameViewModel(theme: theme)
    }

    var body: some View {
        viewModel.resetGame()
        return EmojiMemoryGameView(viewModel: viewModel)
    }
}

struct ThemeSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        ThemeSelectionView(tcManager: ThemeCollectionManager())
    }
}

//
//  EmotiApp.swift
//  Emoti
//
//  Created by 김 형석 on 6/1/24.
//

import SwiftUI

@main
struct EmotiApp: App {
    @State private var viewModel = IslandViewModel()
    var body: some Scene {
        WindowGroup(id: viewModel.islandId){
            IslandArea(viewModel: viewModel)
        }
        .windowStyle(.volumetric)
    }
}

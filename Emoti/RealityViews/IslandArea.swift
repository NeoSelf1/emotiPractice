//
//  IslandArea.swift
//  Emoti
//
//  Created by 김 형석 on 6/1/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct IslandArea: View {
    
    var viewModel: IslandViewModel
//    var myArr = [
//    ]
    var body: some View {
        RealityView{ content in
            content.add(viewModel.setupContentEntity())
        } update: { content in
            print("RealityView changes detected...")
        } placeholder: {
            ProgressView()
                .progressViewStyle(.circular)
                .controlSize(.large)
        }
    }
}

#Preview {
    IslandArea(viewModel: IslandViewModel())
}

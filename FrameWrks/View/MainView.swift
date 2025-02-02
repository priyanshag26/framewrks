//
//  ContentView.swift
//  FrameWrks
//
//  Created by Priyansh on 31/01/25.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = FrameworkViewModel()
    var body: some View {
        if viewModel.isGridView {
            GridView(viewModel: viewModel)
        }
        else {
            ListView(viewModel: viewModel)
        }
    }
}

#Preview {
    MainView()
        .preferredColorScheme(.dark)
}


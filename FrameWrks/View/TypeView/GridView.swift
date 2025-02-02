//
//  GridView 2.swift
//  FrameWrks
//
//  Created by Priyansh on 31/01/25.
//

import SwiftUI

struct GridView: View {
    @StateObject var viewModel = FrameworkViewModel()
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid (columns: columns) {
                    ForEach (MockData.frameworks) { framework in
                        GridItemTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                GridDetailView(framework: viewModel.selectedFramework!,
                               isShowingDetailView: $viewModel.isShowingDetailView)
            }
            .toolbar {
                ToolbarItem (placement: .navigationBarLeading){
                    Text("Apple Frameworks")
                        .font(.title)
                        .fontWeight(.bold)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack (spacing: 0) {
                        Button(action: {
                            viewModel.isGridView.toggle()
                        }) {
                            Image(systemName: "list.dash")
                                .imageScale(.medium)
                                .padding(5)
                            Image(systemName: "square.grid.2x2")
                                .imageScale(.medium)
                                .padding(5)
                                .background(viewModel.isGridView ? Color.white.opacity(0.2) : Color.clear)
                                .clipShape(RoundedRectangle(cornerRadius: 5))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(viewModel.isGridView ? Color.white : Color.clear, lineWidth: 2)
                                )
                        }
                    }
                }
            }
            .padding()
        }
    }
}

struct GridItemTitleView: View {
    let framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 80, height: 80)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}

#Preview {
    GridView()
}

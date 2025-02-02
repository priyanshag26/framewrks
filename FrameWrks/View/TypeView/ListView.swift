//
//  ListView.swift
//  FrameWrks
//
//  Created by Priyansh on 31/01/25.
//

import SwiftUI

struct ListView: View {
    @StateObject var viewModel = FrameworkViewModel()
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 50) {
                List {
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink(destination:
                                        ListDetailView(framework: framework)) {
                            ListItemTitleView(framework: framework)
                                .padding(.vertical, 8)
                        }
                    }
                }
                .listStyle(PlainListStyle())
            }
            .toolbar {
                ToolbarItem (placement: .navigationBarLeading){
                    Text("Apple Frameworks")
                        .font(.title)
                        .fontWeight(.bold)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack(spacing: 0){
                        Button(action: {
                            viewModel.isGridView.toggle()
                        }) {
                            Image(systemName: "list.dash")
                                .imageScale(.medium)
                                .padding(5)
                                .background(viewModel.isGridView ? Color.clear : Color.white.opacity(0.2))
                                .clipShape(RoundedRectangle(cornerRadius: 5))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(viewModel.isGridView ? Color.clear : Color.white, lineWidth: 2)
                                )
                            Image(systemName: "square.grid.2x2")
                                .imageScale(.medium)
                                .padding(5)
                        }
                    }
                }
            }
            .padding()
        }
    }
}


struct ListItemTitleView: View {
    var framework: Framework
    var body: some View {
        HStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 70, height: 70)
            Text(framework.name)
                .font(.title2)
                .scaledToFit()
        }
    }
}

#Preview {
    ListView()
}

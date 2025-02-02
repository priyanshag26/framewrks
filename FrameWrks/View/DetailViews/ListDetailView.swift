//
//  ListDetailView.swift
//  FrameWrks
//
//  Created by Priyansh on 31/01/25.
//

import SwiftUI

struct ListDetailView: View {
    var framework: Framework
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 100, height: 100)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.medium)
                .padding()
            Text(framework.description)
                .font(.body)
                .padding(.horizontal, 25)
                .padding(.bottom, 40)
                .multilineTextAlignment(.center)
            Button {
                isShowingSafariView = true
            } label: {
                LinkButton(title: "Learn More")
            }
            .fullScreenCover(isPresented: $isShowingSafariView) {
                LinkView(url: URL(string: framework.urlString) ?? URL(string: "developer.apple.com")!)
            }
        }
    }
}


//
//  DetailView.swift
//  FrameWrks
//
//  Created by Priyansh on 31/01/25.
//

import SwiftUI

struct GridDetailView: View {
    var framework: Framework
    @State private var isShowingSafariView = false
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    isShowingDetailView = false
                } label: {
                    DismissButton()
                }
            }
            .padding(.top
            )
            FrameworkDataView(framework: framework)
            Button {
                isShowingSafariView = true
            } label: {
                LinkButton(title: "Learn More")
            }
            .fullScreenCover(isPresented: $isShowingSafariView, content: {
                LinkView(url:  URL(string: framework.urlString) ?? URL(string: "developer.google.com")!)
            })
            .padding(.all)
        }
        .padding(.all)
    }
}

struct FrameworkDataView: View {
    var framework: Framework
    
    var body: some View {
        VStack(alignment: .center) {
            Image(framework.imageName)
                .resizable()
                .frame(width: 100, height: 100)
                .padding()
            Text(framework.name)
                .font(.title)
                .fontWeight(.semibold)
                .padding(.bottom, 5)
            Text(framework.description)
                .font(.body)
                .fixedSize(horizontal: false, vertical: true)
                .padding()
                .lineLimit(nil)
                .multilineTextAlignment(.center)
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    GridDetailView(framework: MockData.sampeFramework, isShowingDetailView: .constant(.random()))
        .preferredColorScheme(.dark)
}


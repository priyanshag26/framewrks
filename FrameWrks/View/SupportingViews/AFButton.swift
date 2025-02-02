//
//  Button.swift
//  FrameWrks
//
//  Created by Priyansh on 31/01/25.
//

import SwiftUI

struct LinkButton: View {
    let title: String
    var body: some View {
        Text(title)
            .frame(width: 120, height: 40)
            .background(.red.gradient)
            .foregroundColor(.white)
            .fontWeight(.medium)
            .cornerRadius(15)
    }
}

struct DismissButton: View {
    var body: some View {
        Image(systemName: "xmark")
            .foregroundColor(Color(.label))
            .imageScale(.large)
            .frame(width: 40, height: 40)
    }
}

struct LayoutButton: View {
    var body: some View {
        HStack {
            Image(systemName: "square.grid.2x2")
            Image(systemName: "list.bullet")
        }
    }
}

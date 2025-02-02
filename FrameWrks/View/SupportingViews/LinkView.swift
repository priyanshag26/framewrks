//
//  LinkView.swift
//  FrameWrks
//
//  Created by Priyansh on 31/01/25.
//

import SwiftUI
import SafariServices

struct LinkView: UIViewControllerRepresentable {
    
    let url: URL
    
    func makeUIViewController(context: Context) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {
    }
}

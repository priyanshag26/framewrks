//
//  FrameworkGridViewModel.swift
//  FrameWrks
//
//  Created by Priyansh on 01/02/25.
//

import Foundation

final class FrameworkViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView = false
    @Published var isGridView = true
}

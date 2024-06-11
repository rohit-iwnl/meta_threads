//
//  ThreadsTextFieldModifier.swift
//  MetaThreads
//
//  Created by Rohit Manivel on 6/10/24.
//

import SwiftUI

struct ThreadsTextFieldModifier : ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray5))
            .cornerRadius(10)
            .padding(.horizontal,24)
    }
}

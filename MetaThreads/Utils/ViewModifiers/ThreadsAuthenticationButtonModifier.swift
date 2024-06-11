//
//  ThreadsAuthenticationButtonModifier.swift
//  MetaThreads
//
//  Created by Rohit Manivel on 6/10/24.
//
import SwiftUI

struct ThreadsAuthenticationButtonModifier : ViewModifier {
    func body(content : Content) -> some View{
        content
            .font(.subheadline)
            .foregroundStyle(.white)
            .frame(width: 350, height: 44)
            .background(.black)
            .cornerRadius(12)
            .padding(.vertical)
    }
}

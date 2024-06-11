//
//  FeedView.swift
//  MetaThreads
//
//  Created by Rohit Manivel on 6/10/24.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack{
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    ForEach(0 ... 10, id: \.self){ thread in
                        ThreadCell()
                    }
                }
            }
            .refreshable {
                print("DEBUG : Refresh Threads")
            }
            .navigationTitle("Threads")
            .navigationBarTitleDisplayMode(.large)
        }
        .toolbar{
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    
                } label : {
                    Image(systemName: "arrow.counterclockwise")
                        .foregroundStyle(.black)
                }
            }
        }
    }
}

#Preview {
    NavigationStack{
        FeedView()
    }
}

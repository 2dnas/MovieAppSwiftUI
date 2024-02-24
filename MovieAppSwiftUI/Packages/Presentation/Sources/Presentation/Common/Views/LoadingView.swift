//
//  SwiftUIView.swift
//
//
//  Created by Sshanshiashvili on 2/23/24.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle(tint: .gray)) 
            .scaleEffect(1.5, anchor: .center)
            .padding()
    }
}

#Preview {
    LoadingView()
}

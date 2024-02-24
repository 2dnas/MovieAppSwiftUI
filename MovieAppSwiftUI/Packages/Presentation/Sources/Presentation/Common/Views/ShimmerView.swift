//
//  SwiftUIView.swift
//  
//
//  Created by Sshanshiashvili on 2/24/24.
//

import SwiftUI

struct ShimmerView: View {
    var body: some View {
        Rectangle()
            .fill(Color.gray.opacity(0.5))
            .background(Color.gray)
            .mask(ShimmerMask())
    }
}


#Preview {
    ShimmerView()
}


struct ShimmerMask: View {
    // Animation state
    @State private var phase = -1.0
    
    let gradient = Gradient(colors: [
        Color.black.opacity(0),
        Color.black.opacity(0.5),
        Color.black.opacity(1),
        Color.black.opacity(0.5),
        Color.black.opacity(0)
    ])
    
    var body: some View {
        LinearGradient(gradient: gradient, startPoint: .leading, endPoint: .trailing)
            .aspectRatio(contentMode: .fill)
            .frame(width: 2)
            .offset(x: phase * UIScreen.main.bounds.width)
            .animation(
                Animation.linear(duration: 1.5)
                    .repeatForever(autoreverses: false),
                value: phase
            )
            .onAppear {
                phase = 1.0
            }
    }
}

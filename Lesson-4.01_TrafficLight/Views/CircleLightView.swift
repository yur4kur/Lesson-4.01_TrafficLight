//
//  CircleLightView.swift
//  Lesson-4.01_TrafficLight
//
//  Created by Юрий Куринной on 18.11.2023.
//

import SwiftUI

// MARK: - CircleLightView

struct CircleLightView: View {
    
    // MARK: Public properties
    
    let color: Color
    
    
    // MARK: CircleLightView Body
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 100, height: 100)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(color: color, radius: 40)
    }
}

// MARK: - CircleLightView Preview

struct CircleLightView_Previews: PreviewProvider {
    static var previews: some View {
        CircleLightView(color: .red)
    }
}

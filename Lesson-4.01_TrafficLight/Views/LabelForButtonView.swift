//
//  StartButtonView.swift
//  Lesson-4.01_TrafficLight
//
//  Created by Юрий Куринной on 18.11.2023.
//

import SwiftUI

// MARK: - LabelForButtonView

struct LabelForButtonView: View {

    // MARK: Public properties
    
    let title: Text
    
    
    // MARK: - LabelForButtonView Body
    
    var body: some View {
            title
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding(.vertical, 10)
            .padding(.horizontal, 40)
            .background(Color.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 4))
    }
}

// MARK: - LabelForButtonView Preview

struct LabelForButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LabelForButtonView(title: Text("Start"))
    }
}

//
//  ContentView.swift
//  Lesson-4.01_TrafficLight
//
//  Created by Юрий Куринной on 18.11.2023.
//

import SwiftUI

// MARK: - HomeView

struct HomeView: View {
    
    // MARK: Wrapped properties
    
    @State private var redLight: Color = .red.opacity(0.3)
    @State private var yellowLight: Color = .yellow.opacity(0.3)
    @State private var greenLight: Color = .green.opacity(0.3)
    @State private var currentLight = Light.red
    @State private var buttonTitle = Constants.buttonStartTitle
    
    // MARK: Private properties
    
    private var lightIsOn: CGFloat = 1
    private var lightisOff: CGFloat = 0.3
    
    // MARK: HomeView Body
    var body: some View {
        ZStack {
           
            ///Changing background color
            Color.black
                .ignoresSafeArea()
            
            VStack {
                
                ///Initializing TrafficLights
                CircleLightView(color: redLight)
                    .padding(.bottom, 30)
                CircleLightView(color: yellowLight)
                    .padding(.bottom, 30)
                CircleLightView(color: greenLight)
                Spacer()
                
                /// Initializing Start button
                Button(action: turnOnLight) {
                    LabelForButtonView(title: Text(buttonTitle))
                }
            }
            .padding()
        }
    }
    
    // MARK: Private methods
    
    private func turnOnLight() {
        
        /// Checking title for a change
        if buttonTitle == Constants.buttonStartTitle {
            buttonTitle = Constants.buttonNextTitle
        }
        
        /// Changing lights
        switch currentLight {
        case .red:
            greenLight = .green.opacity(lightisOff)
            redLight = .red.opacity(lightIsOn)
            currentLight = .yellow
        case .yellow:
            redLight = .red.opacity(lightisOff)
            yellowLight = .yellow.opacity(lightIsOn)
            currentLight = .green
        case .green:
            greenLight = .green.opacity(lightIsOn)
            yellowLight = .yellow.opacity(lightisOff)
            currentLight = .red
        }
    }
}

// MARK: - Constants

extension HomeView {
    enum Constants {
        static let buttonStartTitle = "Start"
        static let buttonNextTitle = "Next"
    }
}

// MARK: - HomeView Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

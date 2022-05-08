//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Евгений Волошенко on 06.05.2022.
//

import SwiftUI

enum Lights {
    case off
    case red
    case yellow
    case green
}

struct ContentView: View {

    @State private var currentLight: Lights = .off
    @State private var buttonText = "START"
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                VStack(spacing: 30) {
                    LightView(color: .red, opacity: currentLight == .red ? 1 : 0.3)
                    LightView(color: .yellow, opacity: currentLight == .yellow ? 1 : 0.3)
                    LightView(color: .green, opacity: currentLight == .green ? 1 : 0.3)
                }
                Spacer()
                TurnButton(buttonText: buttonText) {
                    changeLight()
                }
            }
            .padding()
        }
    }
    
    private func changeLight() {
        switch currentLight {
        case .off:
            currentLight = .red
            buttonText = "NEXT"
        case .red:
            currentLight = .yellow
        case .yellow:
            currentLight = .green
        case .green:
            currentLight = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

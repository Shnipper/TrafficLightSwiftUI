//
//  LightView.swift
//  TrafficLightSwiftUI
//
//  Created by Евгений Волошенко on 06.05.2022.
//

import SwiftUI

struct LightView: View {
    
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 110, height: 110)
            .foregroundColor(color)
            .opacity(opacity)
            .overlay(Circle().stroke(.white, lineWidth: 4))
    }
}

struct LightView_Previews: PreviewProvider {
    static var previews: some View {
        LightView(color: .green, opacity: 0.3)
    }
}

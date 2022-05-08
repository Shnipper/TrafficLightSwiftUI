//
//  TurnButton.swift
//  TrafficLightSwiftUI
//
//  Created by Евгений Волошенко on 07.05.2022.
//

import SwiftUI

struct TurnButton: View {
    
    let buttonText: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(buttonText)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 50)
        .background(Color.blue)
        .cornerRadius(15)
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color.white, lineWidth: 4)
        )
    }
}

struct TurnButton_Previews: PreviewProvider {
    static var previews: some View {
        TurnButton(buttonText: "START", action: {})
    }
}

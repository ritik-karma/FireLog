//
//  CapsuleButtonStyle.swift
//  FireLog
//
//  Created by Ritik Karma on 02/10/24.
//

import SwiftUI

struct CapsuleButtonStyle: ButtonStyle {
    
    var fontColour: Color = .white
    var backgroundColour: Color = .purple
    var hasBorder: Bool = false
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .frame(maxWidth: .infinity)
            .background(Capsule().fill(backgroundColour))
            .foregroundStyle(fontColour)
            .scaleEffect(configuration.isPressed ? 0.95 : 1)
            .overlay {
                hasBorder ? Capsule()
                    .stroke(lineWidth: 1) : nil
            }
        
        
    }
}


//
//  LightView.swift
//  TrafficLightSUI
//
//  Created by Виталий Гринчик on 19.06.23.
//

import SwiftUI

struct LightView: View {
    
    let color: Color
    let opacity: CGFloat
    
    var body: some View {
        VStack {
            Circle()
                .foregroundColor(color)
                .opacity(opacity)
                .overlay(Circle().stroke(Color.white, lineWidth: 6))
        }
    }

}

struct LightView_Previews: PreviewProvider {
    static var previews: some View {
        LightView(color: .red, opacity: 1.0)
    }
}

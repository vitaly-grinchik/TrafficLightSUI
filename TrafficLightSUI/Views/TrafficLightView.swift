//
//  TrafficLightView.swift
//  TrafficLightSUI
//
//  Created by Виталий Гринчик on 19.06.23.
//

import SwiftUI

struct TrafficLightView: View {
    
    @State private var isTapped = false
    
    @State private var redIsOn = false
    @State private var yellowIsOn = false
    @State private var greenIsOn = false
    
    
    private var buttonTitle: String {
        isTapped ? "Next" : "Start"
    }
    
    var body: some View {
        
        let lightOffOpacity = 0.3
        
        VStack(spacing: 50) {
            ZStack {
                PlateView()
                    .padding([.leading, .trailing], 50)
                VStack(spacing: 40) {
                    LightView(color: .red, opacity: redIsOn ? 1 : lightOffOpacity)
                    LightView(color: .yellow, opacity: yellowIsOn ? 1 : lightOffOpacity)
                    LightView(color: .green, opacity: greenIsOn ? 1 : lightOffOpacity)
                }
                .padding([.top, .bottom], 50)
            }
            
            Spacer()
            
            ButtonView(title: buttonTitle) {
                buttonTapped()
            }
        }
    }
    
    private func buttonTapped() {
        if !isTapped { isTapped.toggle() }
        
        if redIsOn {
            redIsOn.toggle()
            yellowIsOn.toggle()
        } else if yellowIsOn {
            yellowIsOn.toggle()
            greenIsOn.toggle()
        } else if greenIsOn {
            greenIsOn.toggle()
            redIsOn.toggle()
        } else {
            redIsOn.toggle()
        }
    }
}

struct TrafficLightView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightView()
    }
}

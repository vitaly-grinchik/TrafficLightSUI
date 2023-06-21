//
//  TrafficLightView.swift
//  TrafficLightSUI
//
//  Created by Виталий Гринчик on 19.06.23.
//

import SwiftUI

struct TrafficLightView: View {
    
    @State var isTapped = false
    
    @State var redIsOn = false
    @State var yellowIsOn = false
    @State var greenIsOn = false
    
    private let lightOffOpacity = 0.3
    
    private var buttonTitle: String {
        isTapped ? "Next" : "Start"
    }
    
    var body: some View {
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
            ButtonView(title: isTapped ? "Next" : "Start") {
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

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
    
    private var buttonTitle: String {
        isTapped ? "Next" : "Start"
    }
    
    var body: some View {
        VStack(spacing: 50) {
            ZStack {
                PlateView()
                    .padding([.leading, .trailing], 50)
                VStack(spacing: 40) {
                    LightView(color: redIsOn ? .red : .red.opacity(0.2))
                    LightView(color: yellowIsOn ? .yellow : .yellow.opacity(0.2))
                    LightView(color: greenIsOn ? .green : .green.opacity(0.2))
                }
                .padding([.top, .bottom], 50)
            }
            Spacer()
            Button(action: buttonTapped) {
                Text(buttonTitle)
                    .frame(width: 100)
                    .font(.title)
            }
            .buttonStyle(.borderedProminent)
        }
    }
    
    func buttonTapped() {
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

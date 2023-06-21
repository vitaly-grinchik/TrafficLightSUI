//
//  PlateView.swift
//  TrafficLightSUI
//
//  Created by Виталий Гринчик on 19.06.23.
//

import SwiftUI

struct PlateView: View {
    
    var body: some View {
        Rectangle()
            .border(.black, width: 8)
            .cornerRadius(40)
            .overlay(RoundedRectangle(cornerRadius: 40)
                .stroke(.gray, lineWidth: 8))
    }
}

struct PlateView_Previews: PreviewProvider {

    static var previews: some View {
        PlateView()
    }
    
}

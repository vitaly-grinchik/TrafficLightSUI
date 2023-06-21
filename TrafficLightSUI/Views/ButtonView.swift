//
//  ButtonView.swift
//  TrafficLightSUI
//
//  Created by Виталий Гринчик on 21.06.23.
//

import SwiftUI

struct ButtonView: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .frame(width: 100)
                .font(.title)
        }
        .buttonStyle(.borderedProminent)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "Start") { }
    }
}

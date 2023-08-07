//
//  ContentView.swift
//  Shared
//
//  Created by Паша on 7.08.23.
//

import SwiftUI

struct ContentView: View {
    @State var isOn = false
    
    var body: some View {
        VStack {
            Circle()
                .frame(maxHeight: 200)
                .foregroundColor(isOn ? .purple : .mint)
                .shadow(color: isOn ? .indigo : .orange, radius: 20)
                .scaleEffect( isOn ? 2 : 1.5)
                .animation(.spring(response: 1, dampingFraction: 1, blendDuration: 1), value: isOn)
            Button("Press Me") {
                isOn.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  Shared
//
//  Created by Паша on 7.08.23.
//

import SwiftUI

struct ContentView: View {
    @State var isOn = false
    @State var color = Color.primary
    
    var body: some View {
        VStack {
            Toggle("On/off", isOn: $isOn)
            ColorPicker("Select a color", selection: $color)
            Image(systemName: isOn ? "battery.100" : "battery.25")
                .font(.system(size: 150))
                .foregroundColor(color)
            Text("Ого, он меняет цвет 😱")
                .font(.largeTitle)
                .foregroundColor(color)
            Circle()
                .frame(maxHeight: 200)
                .foregroundColor(isOn ? .purple : .mint)
                .shadow(color: isOn ? .black : .blue, radius: 20)
                .scaleEffect( isOn ? 1.2 : 1)
                .animation(.spring(response: 1, dampingFraction: 1, blendDuration: 1), value: isOn)
            Button("Press Me") {
                isOn.toggle()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}

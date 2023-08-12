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
    
    @State var width: Double = 0
    
    @State var name = ""
    @State var hobby = ""
    @State var favoriteFood = ""
    
    @State var showStory = false
    
    var body: some View {
        ScrollView{
            VStack {
                Group {
                    Toggle("On/off", isOn: $isOn)
                    ColorPicker("Select a color", selection: $color)
                    Image(systemName: isOn ? "battery.100" : "battery.25")
                        .font(.system(size: 150))
                        .foregroundColor(color)
                    Text("Ого, он меняет цвет 😱")
                        .font(.largeTitle)
                        .foregroundColor(color)
                }
                
                Circle()
                    .frame(height: 200)
                    .foregroundColor(isOn ? .purple : .mint)
                    .shadow(color: isOn ? .black : .blue, radius: 20)
                    .scaleEffect( isOn ? 1.2 : 1)
                    .animation(.spring(response: 1, dampingFraction: 1, blendDuration: 1), value: isOn)
                Button("Press Me") {
                    isOn.toggle()
                }
                Slider(value: $width)
                Rectangle()
                    .frame(width: width * 300, height: 100)
                TextField(
                        "Enter your name",
                        text: $name
                    )
                TextField(
                        "Enter your hobby",
                        text: $hobby
                    )
                TextField(
                        "Enter your favorite food",
                        text: $favoriteFood
                    )
                Button("Show story") {
                    showStory.toggle()
                }
                if showStory {
                    Text("Hello, my name is \(name), my favorite hobby is \(hobby) and I can't stop eating \(favoriteFood)")
                        .padding()
                }
            }
            .padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}

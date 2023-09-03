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
        
        VStack {
//            Group {
//                Toggle("On/off", isOn: $isOn)
//                ColorPicker("Select a color", selection: $color)
//                Image(systemName: isOn ? "battery.100" : "battery.25")
//                    .font(.system(size: 150))
//                    .foregroundColor(color)
//                Text("Ого, он меняет цвет 😱")
//                    .font(.largeTitle)
//                    .foregroundColor(color)
//            }
//
//            Group {
//                Circle()
//                    .frame(height: 200)
//                    .foregroundColor(isOn ? .purple : .mint)
//                    .shadow(color: isOn ? .black : .blue, radius: 20)
//                    .scaleEffect( isOn ? 1.2 : 1)
//                    .animation(.spring(response: 1, dampingFraction: 1, blendDuration: 1), value: isOn)
//                Button("Press Me") {
//                    isOn.toggle()
//                }
//            }
//            Slider(value: $width)
//            Rectangle()
//                .frame(width: width * 300, height: 100)
//            Group {
//                TextField(
//                        "Enter your name",
//                        text: $name
//                    )
//                TextField(
//                        "Enter your hobby",
//                        text: $hobby
//                    )
//                TextField(
//                        "Enter your favorite food",
//                        text: $favoriteFood
//                    )
//                Button("Show story") {
//                    showStory.toggle()
//                }
//            }
//            NavigationView {
//                VStack {
//                    List {
//                        NavigationLink("First link") {
//                                                    Text("hi")
//                                                }
//                        NavigationLink("Second link") {
//                            Text("hi")
//                        }
//                        NavigationLink {
//                        } label : {
//                            HStack {
//                                Text("Tap to navigate")
//                                Spacer()
//                                Image(systemName: "arrow.forward.circle")
//                                    .font(.largeTitle)
//                            }
//                        }
//
//                    }
//                }
//            }
//            HStack {
//                Image("landmark")
//                                .resizable()
//                                .frame(width: 50, height: 50)
//                            Text("landmark.name")
//
//                            Spacer()
//                Image(systemName: "star.fill")
//                                    .foregroundColor(.yellow)
//            }
//            if showStory {
//                Text("Hello, my name is \(name), my favorite hobby is \(hobby) and I can't stop eating \(favoriteFood)")
//                    .padding()
//            }


            NavigationView {
                List {
                    NavigationLink {
                        Text("Hello")
                    } label : {
                        HStack {
                            Text("Tap to go to greeting")
                            Spacer()
                            Image(systemName: "arrowshape.bounce.right")
                                .font(.largeTitle)
                        }
                    }
                }
            }

            
        }
        .padding()
        .navigationBarTitle("Meowww", displayMode: .inline) // Добавьте заголовок
    }


}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}

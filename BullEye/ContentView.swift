//
//  ContentView.swift
//  BullEye
//
//  Created by Anthony Phan on 6/26/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isAlertVisible : Bool = false
    @State private var sliderChange: Double = 50.0
    
    var body: some View {
        VStack {
            Text("Put The Bulleyes as close as you can to ")
                .fontWeight(.bold)
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .padding(.top, 0.0)
                .lineSpacing(1.0)
                .font(.headline)

            
            Text("89")
                .bold()
                .kerning(-1)
                .fontWeight(.black)
                .font(.largeTitle)
            HStack {
                Text("1")
                    .fontWeight(.bold)
                    .font(.headline)
                    .kerning(1)
                    .padding(20)
                    .multilineTextAlignment(.center)
                Slider(value: $sliderChange, in:1.0...100.0)
                Text("100")
                    .fontWeight(.bold)
                    .font(.headline)
                    .kerning(1)
                    .padding(20)
                    .multilineTextAlignment(.center)
            
            }
            Button(action: {
                isAlertVisible = true
            }) {
            Text("Hit Me")
            }
            .alert(Text("This is a popup"), isPresented: $isAlertVisible, actions: {
                Button("Cancel", role: .cancel, action: {} )
            }, message: {
                Text("Hellooo")
            })
            
            


            
 
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {

        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
            .previewInterfaceOrientation(.landscapeLeft)
        ContentView()

    }
}

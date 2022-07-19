//
//  ContentView.swift
//  First Project
//
//  Created by MAC on 09/07/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var total = ""
    @State var tipPercent = 15.0
    
    var body: some View {
        VStack{
            Text("Percentage calculator")
                .font(.title)
                .foregroundColor(Color.blue)
                .bold()
            .padding()
            HStack{
                Text("$")
                    .font(.title2)
                TextField("Amount", text: $total)
                Text("\(total)")
                    .font(.headline)
                    .foregroundColor(Color.gray)
            }
            .padding(.all)
            HStack{
                Slider(value: $tipPercent, in: 1...30, step: 1.0)
                Text("\(Int(tipPercent))%")
            }
            .padding()
            if let totalNum = Double(total) {
                Text("Total perceentage: $\(totalNum * tipPercent / 100.0, specifier: "%0.2f")")
            } else {
                Text("Please enter a numerical value")
            }
            }
            }
        
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

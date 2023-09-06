//
//  ContentView.swift
//  Design_M1L4_ButtonStyles
//
//  Created by tom montgomery on 8/31/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        // RULE: Use gradients, shapes, sfsymbols etc before resorting to images.  It's much more performant
        
        ZStack {
            
            LinearGradient(
                gradient: Gradient(colors: [Color.red, Color.blue, Color.purple]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
            .ignoresSafeArea()
            // Could also specify a Unit Point start/end point between 0 top 1
            // use as backgrounds AND as button colors
            
            // Gradient "STOPS" control when it goes from one color to the next.  Each stop is a color and a position
            
            LinearGradient(stops: [.init(color: Color.red, location: 0.1), .init(color: Color.blue, location: 0.3), .init(color: Color.purple, location: 0.7)], startPoint: UnitPoint(x: 0.5, y: 0), endPoint: UnitPoint(x: 0.5, y: 1))
                .ignoresSafeArea()
            
            // TODO: use SFSymbols
            
            VStack{
                ZStack{
                    Capsule()
                        .foregroundColor(.blue)
                        .frame(width: 200, height: 40)
                    Text("Submit")
                        .foregroundColor(.white)
                }
                // default is grey
                //.shadow(radius: 10)
                .shadow(color: .blue, radius: 10, x: 5, y: 5)
                //.blur(radius: 3)
                // opaque attribute id rarely used.  can't see to lower layers
                
                // Linear Gradient Button
                ZStack{
                    Capsule()
                        .fill(LinearGradient(gradient: Gradient(colors: [Color.mint, Color.blue]), startPoint: .leading, endPoint: .trailing))
                        .frame(width: 200, height: 40)
                    Text("Submit")
                        .foregroundColor(.white)
                }
                
                // Radial Gradient Button
                ZStack{
                    Capsule()
                        .fill(RadialGradient(gradient: Gradient(colors: [Color.red, Color.yellow]), center: .center, startRadius: 0, endRadius: 100))
                        .frame(width: 200, height: 40)
                    Text("Submit")
                        .foregroundColor(.white)
                    
                }
                
                // Angular Gradient Button
                ZStack{
                    Capsule()
                        .fill(AngularGradient(gradient: Gradient(colors: [Color.yellow, Color.green]), center: .center, startAngle: Angle(degrees: 34), endAngle: Angle(degrees: 100)))
                        .frame(width: 200, height: 40)
                    Text("Submit")
                        .foregroundColor(.white)
                    
                }
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

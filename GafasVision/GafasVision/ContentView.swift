//
//  ContentView.swift
//  GafasVision
//
//  Created by alumno on 10/16/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    @State var pulsaciones: Bool = true
    
    var body: some View {
        VStack {
            if pulsaciones
            {
                Model3D(named: "Scene", bundle: realityKitContentBundle)
                    .padding(.bottom, 50)
            }
            else
            {
                Model3D(named: "Prueba", bundle: realityKitContentBundle)
                    .padding(.bottom, 0)
            }

            Text("Hello, world!")
            Text("Hello, world! \(pulsaciones)")
            Button(action: {
                pulsaciones = !pulsaciones
                print("Hola aguacate \(pulsaciones)")}, label: {Text("Aguacate")})
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}

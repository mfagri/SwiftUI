//
//  ContentView.swift
//  Shared
//
//  Created by Marouane Fagri on 6/29/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
     ZStack{
    //    Color(.blue).edgesIgnoringSafeArea(.all)
    LinearGradient(gradient: Gradient(colors: [.blue,.white]), startPoint:.topLeading, endPoint: .bottomTrailing)
    .edgesIgnoringSafeArea(.all)
     }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

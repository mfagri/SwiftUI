//
//  ContentView.swift
//  Shared
//
//  Created by Marouane Fagri on 6/29/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
     VStack{
           Circle().fill(
            Color.blue
        ).padding()
            Circle().fill(
            Color.red
        ).padding()
     }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

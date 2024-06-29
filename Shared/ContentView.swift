//
//  ContentView.swift
//  Shared
//
//  Created by Marouane Fagri on 6/29/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Circle().fill(
            Color.blue
        ).padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

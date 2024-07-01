//
//  ContentView.swift
//  Shared
//
//  Created by Marouane Fagri on 6/29/24.
//

import SwiftUI

struct ContentView: View {
    @State private var currentTime = "00:00"
    @State private var timer: Timer? = nil
    @State private var textColor = Color.white

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(.all)
                
                Circle().fill(Color.blue.opacity(0.4)).padding(.all, 24)
                Circle().fill(Color.blue.opacity(0.5)).padding(.all, 44).overlay(    VStack {
                        Color.blue
                            .frame(width: geometry.size.width / 2, height: 100)
                            .cornerRadius(20)
                            .overlay(
                              Button(action: {
                        startTimer()
                    }) {  Text(currentTime)
                                    .foregroundColor(textColor)
                                    .font(.largeTitle)
                    }
                            )
                
                    })
                
                VStack {
                    Spacer()
               
                    Button(action: {
                        stopTimer()
                    }) {
                        Text("Stop Timer")
                            .font(.title)
                            .padding()
                            .background(Color.red)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding(.bottom, 30)
                }
            }
        }
        .onAppear(perform: startTimer)
    }

    func startTimer() {
        // Update the time every second
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
            let formatter = DateFormatter()
            formatter.dateFormat = "HH:mm:ss"
            self.currentTime = formatter.string(from: Date())
        }
        textColor = .white
    }

    func stopTimer() {
        // Invalidate the timer and change text color to red
        timer?.invalidate()
        timer = nil
        textColor = .red
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


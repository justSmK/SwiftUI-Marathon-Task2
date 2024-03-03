//
//  ContentView.swift
//  SwiftUIMarathonTask2
//
//  Created by Sergei Semko on 3/3/24.
//

import SwiftUI

struct ContentView: View {
    @State private var sliderValue: Double = 300
    private let sliderRange: ClosedRange<Double> = 100...300
    private let sliderStep: Double = 1
    
    var body: some View {
        VStack {
            TextContainer()
                .frame(
                    width: sliderValue,
                    height: 250
                )
                .border(.red)
                .animation(
                    .easeInOut(duration: 0.5),
                    value: sliderValue
                )
            Slider(
                value: $sliderValue,
                in: sliderRange,
                step: sliderStep
            )
        }
        .padding()
    }
}

struct TextContainer: View {
    var body: some View {
        Text("Marathon ")
            .foregroundStyle(.gray)
            .font(.body)
        +
        Text("по SwiftUI ")
            .foregroundStyle(.black)
            .font(.headline)
        +
        Text("\"Отцовский пинок\"")
            .foregroundStyle(.blue)
            .font(.largeTitle)
    }
}

#Preview {
    ContentView()
}

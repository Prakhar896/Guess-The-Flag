//
//  ContentView.swift
//  Guess The Flag
//
//  Created by Prakhar Trivedi on 16/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        VStack {
//            Spacer()
//            Text("First")
//            Text("Second")
//            Text("Third")
//            Spacer()
//            Spacer()
//        }
//        VStack(alignment: .leading, spacing: 20) {
//            Text("Hello, world!")
//            Text("This is a second text view.")
//        }
//        ZStack {
//            Text("Hello world!")
//            Text("This is inside a stack")
//        }
        // 3 by 3 grid challenge (MY ANSWER)
//        VStack(spacing: 50) {
//            HStack {
//                Image(systemName: "square")
//                    .padding()
//                Spacer()
//                Image(systemName: "square")
//                    .padding()
//                Spacer()
//                Image(systemName: "square")
//                    .padding()
//            }
//            HStack {
//                Image(systemName: "square")
//                    .padding()
//                Spacer()
//                Image(systemName: "square")
//                    .padding()
//                Spacer()
//                Image(systemName: "square")
//                    .padding()
//            }
//            HStack {
//                Image(systemName: "square")
//                    .padding()
//                Spacer()
//                Image(systemName: "square")
//                    .padding()
//                Spacer()
//                Image(systemName: "square")
//                    .padding()
//            }
//            Spacer()
//        }
        // Paul Hudson's answer
//        VStack {
//            HStack {
//                Text("1")
//                Text("2")
//                Text("3")
//            }
//            HStack {
//                Text("4")
//                Text("5")
//                Text("6")
//            }
//            HStack {
//                Text("7")
//                Text("8")
//                Text("9")
//            }
//        }
//        ZStack {
//            VStack(spacing: 0) {
//                Color.red
//                Color.blue
//            }
//
//            Text("Your content")
//                .foregroundStyle(.secondary) // makes the blue and red come through the text
//                .padding(50)
//                .background(.ultraThinMaterial)
//            Color(red: 1, green: 0.8, blue: 0)
//                .edgesIgnoringSafeArea(.all)
//                .ignoresSafeArea()
//            Color.blue
//            Color.secondary
//                .frame(minWidth: 200, maxWidth: .infinity, maxHeight: 200)
//            Text("Your content")
//        }
        Text("Hello world!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

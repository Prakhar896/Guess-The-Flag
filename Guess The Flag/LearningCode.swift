//
//  ContentView.swift
//  Guess The Flag
//
//  Created by Prakhar Trivedi on 16/11/21.
//

// THIS FILE CONTAINS CODE THAT WAS WRITTEN WHEN PAUL HUDSON WAS TEACHING THE SWIFTUI CONCEPTS, FOR APP CODE LOOK AT CONTENTVIEW.SWIFT

//import SwiftUI
//
//struct ContentView: View {
//
//    @State private var showingAlert = false
//
//    var body: some View {
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
                
        //        LinearGradient(gradient: Gradient(stops: [
        //            Gradient.Stop(color: .white, location: 0.45),
        //            .init(color: .black, location: 0.55) //.init is the same thing as Gradient.Stop in this scenario and can be used as a shortcut
        //        ]), startPoint: .top, endPoint: .bottom)
                
        //        RadialGradient(gradient: Gradient(colors: [.blue, .black]), center: .center, startRadius: 20, endRadius: 200)
                
        //        AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center)
                
        //        Button("Delete selection", role: .destructive, action: executeDelete)
        
//        VStack {
//            Button("Button 1") {}
//            .buttonStyle(.bordered)
//            Button("Button 2", role: .destructive) {}
//            .buttonStyle(.bordered)
//            Button("Button 3") {}
//            .buttonStyle(.borderedProminent)
//            .tint(.mint)
//            Button("Button 4", role: .destructive) {}
//            .buttonStyle(.borderedProminent)
//        }
        
//        Button {
//            print("Edit button was tapped!")
//        } label: {
//            Text("Tap me!")
//                .padding()
//                .foregroundColor(.white)
//                .background(.red)

//            Image(systemName: "pencil")

//            Label("Edit", systemImage: "pencil")
//        }
//        .renderingMode(.original) //use this if your image is being coloured unintentionally by SwiftUI (this is usually because SwiftUI colours it to show that its tappable) note that this modifier only works on images
        
//        Image(systemName: "pencil")
        
//        Button {
//            showingAlert = true
//        } label: {
//            Text("Show Alert")
//        }
//        .alert("Important message", isPresented: $showingAlert) {
//            Button("OK") {
//                print("Alert dismissed!")
//            }
//            Button("Cancel", role: .cancel) {
//                print("Alert dismissed with cancel")
//            }
//        } message: {
//            Text("Please read this")
//        }
//    }
//
//    func executeDelete() {
//        print("Now deleting")
//    }
//}

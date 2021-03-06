//
//  ContentView.swift
//  Guess The Flag
//
//  Created by Prakhar Trivedi on 16/11/21.
//

import SwiftUI

struct ContentView: View {
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var userScore: Int = 0
    @State private var questionCount = 1
    @State private var showingGameEndAlert: Bool = false
    
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    
    var body: some View {
        ZStack {
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.75, green: 0.15, blue: 0.26), location: 0.3),
            ], center: .top, startRadius: 200, endRadius: 700)
                .ignoresSafeArea()
            
            
            VStack {
                Spacer()
                Text("Guess the Flag")
                    .font(.largeTitle.bold())
                    .foregroundColor(.white)
                
                Spacer()
                VStack(spacing: 15) {
                    VStack {
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy))
                        Text(countries[correctAnswer])
                            .font(.largeTitle.weight(.heavy))
                    }
                    
                    ForEach(0..<3) { number in
                        Button {
                            // flag was tapped
                            flagTapped(number)
                        } label: {
                            Image(countries[number])
                                .renderingMode(.original)
                                .clipShape(Capsule())
                                .shadow(radius: 10)
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.thinMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                
                Spacer()
                
                Text("Score: \(userScore)")
                    .foregroundColor(.white)
                    .font(.title.bold())
                Spacer()
            }
            .padding()
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your score is \(userScore)")
        }
        .alert("And that's game!", isPresented: $showingGameEndAlert) {
            Button("Restart game! ??????", action: reset)
        } message: {
            Text("You had a score of \(userScore)! " + getScoreJudgeText(userScore))
        }
    }
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct!"
            userScore += 1
        } else {
            scoreTitle = "Wrong! That's the flag of \(countries[number])."
        }
        
        showingScore = true
    }
    
    func askQuestion() {
        if questionCount == 8 {
            self.showingGameEndAlert = true
        } else {
            self.countries.shuffle()
            self.correctAnswer = Int.random(in: 0...2)
            self.questionCount += 1
        }
    }
    
    func getScoreJudgeText(_ score: Int) -> String {
        var judgeText: String = ""
        if score == 8 {
            judgeText = "That's a perfect score! Great job!"
        } else if score >= 6 && score < 8 {
            judgeText = "Almost there! Keep trying!"
        } else if score >= 4 && score < 6 {
            judgeText = "Someone slept during their Social Studies lesson..."
        } else if score >= 2 && score < 4 {
            judgeText = "Man you've got some work to do! Don't worry, keep trying!"
        } else {
            judgeText = "Ehhh your score's ummmm, I mean...you can keep trying..."
        }
        
        return judgeText
    }
    
    func reset() {
        self.countries.shuffle()
        self.correctAnswer = Int.random(in: 0...2)
        self.questionCount = 0
        self.userScore = 0
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  YesChef
//
//  Created by Ege Çam on 9.03.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Welcome back, Ege")
                .font(.largeTitle)
                .bold()
                .padding()
        }
        
        
        Text("You are learning Italian cuisine.")
            .font(.title2)
        Divider()
        
        VStack {
            ScrollView() {
                ForEach(0..<10) { index in
                    CourseCard(title: "Risotto", isCompleted: false, difficulty: 1)
                    
                    ProgressStick(isPreviousCourseCompleted: false, difficultyOfNextCourse: 1)
                }
            }
            .ignoresSafeArea()
            .scrollTargetLayout()
            .scrollTargetBehavior(.viewAligned)
            .scrollBounceBehavior(.basedOnSize)
            
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}

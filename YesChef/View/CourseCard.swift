//
//  CourseCard.swift
//  YesChef
//
//  Created by Ege Çam on 11.03.2024.
//

import SwiftUI

struct CourseCard: View {
    let title: String
    let isCompleted: Bool
    let difficulty: Int
    @State var color: Color = Color.brown
    
    func setColor(_: Int) -> Color {
        if (difficulty == 1) {
            let color = Color.blue.opacity(0.25)
            return color
        }
        
        if (difficulty == 2) {
            let color = Color.orange.opacity(0.25)
            return color
        }
        
        if (difficulty == 3) {
            let color = Color.pink.opacity(0.25)
            return color
        }
        
        return color
    }
    
    var body: some View {
        
        if isCompleted {
            ZStack {
                setColor(difficulty)
                    .clipShape(RoundedRectangle(cornerRadius: 18.0))
                
                VStack(alignment: .leading) {
                    Text(title)
                        .font(.title3)
                    Text("\(isCompleted == true ? "Completed" : "Not Completed")")
                        .font(.caption)
                }
                .opacity(0.5)
                
                ZStack {
                    Color.green
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .frame(width: 40, height: 40)
                        .offset(x: 65, y: -40)
                    
                    Image(systemName: "checkmark.circle.fill")
                        .font(.title)
                        .bold()
                        .foregroundStyle(.white)
                        .offset(x: 65, y: -40)
                }
                
            }
            .frame(width: 150, height: 100)
            .frame(maxWidth: .infinity)
        }
        
        else {
            ZStack {
                setColor(difficulty)
                    .clipShape(RoundedRectangle(cornerRadius: 18.0))
                
                VStack(alignment: .leading) {
                    Text(title)
                        .font(.title3)
                    Text("\(isCompleted == true ? "Completed" : "Not Completed")")
                        .font(.caption)
                }
            }
            .frame(width: 150, height: 100)
            .frame(maxWidth: .infinity)
            
        }
    }
    
}

#Preview {
    CourseCard(title: "Risotto", isCompleted: true, difficulty: 1)
}

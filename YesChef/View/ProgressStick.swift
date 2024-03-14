//
//  ProgressStick.swift
//  YesChef
//
//  Created by Ege Çam on 14.03.2024.
//

import SwiftUI

struct ProgressStick: View {
    let isPreviousCourseCompleted: Bool
    let difficultyOfNextCourse: Int
    
    func setStickLength(difficulty: Double) -> Double {
        var length: Double = 0
        length = difficulty * 20
        
        return length
    }
    
    var body: some View {
        if isPreviousCourseCompleted {
            Color.gray
                .frame(width: 8, height: setStickLength(difficulty: Double(difficultyOfNextCourse)))
                .clipShape(
                    RoundedRectangle(cornerRadius: 20))
        } else {
            Color.gray
                .opacity(0.5)
                .frame(width: 8, height: setStickLength(difficulty: Double(difficultyOfNextCourse)))
                .clipShape(
                    RoundedRectangle(cornerRadius: 20))
        }
        
    }
}

#Preview {
    ProgressStick(isPreviousCourseCompleted: false, difficultyOfNextCourse: 1)
}

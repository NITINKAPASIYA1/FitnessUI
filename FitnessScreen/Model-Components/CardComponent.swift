//
//  CardComponent.swift
//  FitnessScreen
//
//  Created by Nitin ‘s on 10/11/24.
//

import SwiftUI

struct ActiveLessonCard: View {
    var body: some View {
        ZStack(alignment: .leading) {
            Image("arrangement-with-dumbbells-gym")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .opacity(0.9)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.black.opacity(0.45))
                )
            
            VStack(alignment: .leading, spacing: 10) {
                Spacer()
                
                HStack {
                    Text("Next:")
                        .foregroundColor(.white)
                        .font(.system(size: 24, weight: .medium))
                    
                    Text("HIIT Session")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.white)
                }
                
                Text("A Fit life is a great life")
                    .font(.system(size: 16))
                    .foregroundColor(.white)
                
                Button(action: {
                    // Continue action
                }) {
                    HStack {
                        Image(systemName: "text.rectangle.page.fill")
                        Text("CONTINUE")
                            .font(.system(size: 12, weight: .heavy))
                    }
                    .padding(.vertical, 14)
                    .padding(.horizontal, 20)
                    .background(Color(red: 56/255, green: 56/255, blue: 56/255))
                    .foregroundColor(.white)
                    .clipShape(Capsule())
                    .overlay(
                        Capsule()
                            .stroke(Color.white, lineWidth: 1)
                    )
                }
                .padding(.bottom, 10)
                .padding(.top, 10)
            }
            .padding()
            .padding(.horizontal, 90)
        }
    }
}

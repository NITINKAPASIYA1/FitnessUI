//
//  CategoryButton.swift
//  FitnessScreen
//
//  Created by Nitin ‘s on 10/11/24.
//

import SwiftUI



struct CategoryButton: View {
    var category: String
    var emoji: String = ""
    @Binding var selectedCategory: String
    
    var isSelected: Bool {
        selectedCategory == category
    }
    
    var buttonShape: AnyShape {
        category == "All" ? AnyShape(Circle()) : AnyShape(Capsule())
    }

    var body: some View {
        Button(action: {
            selectedCategory = category
        }) {
            HStack(spacing: 8) {
                if !emoji.isEmpty {
                    ZStack {
                        Circle()
                            .foregroundColor(isSelected ? .white : Color.brown.opacity(0.2))
                            .frame(width: 40, height: 40)
                        Text(emoji)
                            .font(.system(size: 20))
                    }
                }
                Text(category)
                    .font(.system(size: 16, weight: .bold))
            }
            .padding(.vertical, 10)
            .padding(.horizontal, category == "All" ? 15 : 5)
            .frame(height: 50)
            .background(isSelected ? Color.black : Color.white)
            .foregroundColor(isSelected ? .white : .black)
            .clipShape(buttonShape)
            .overlay(
                category == "All" ? RoundedRectangle(cornerRadius: 30).stroke(Color.black, lineWidth: 2) : nil
            )
        }
    }
}


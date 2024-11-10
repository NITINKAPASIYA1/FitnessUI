import SwiftUI

struct FitnessCoursesView: View {
    @State private var selectedCategory: String = "All"
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                VStack(alignment: .leading, spacing: 20) {
                    Text("Your Active Lessons")
                        .font(.system(size: 18, weight: .heavy))
                        .foregroundColor(.white)
                        .padding(.horizontal)
                        .padding(.top, 20)
                    
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 30) {
                           
                            ActiveLessonCard()
                                .frame(width: geometry.size.width * 0.8, height: geometry.size.height / 2.0)
                                .padding(.horizontal, 10)
                                .background(Color.white)
                                .clipShape(RoundedRectangle(cornerRadius: geometry.size.width * 0.05))
                                .overlay(
                                    RoundedRectangle(cornerRadius: geometry.size.width * 0.05)
                                        .stroke(Color.white, lineWidth: 4)
                                )
                            
                            ActiveLessonCard()
                                .frame(width: geometry.size.width * 0.8, height: geometry.size.height / 2.0)
                                .padding(.horizontal, 10)
                                .background(Color.white)
                                .clipShape(RoundedRectangle(cornerRadius: geometry.size.width * 0.05))
                                .overlay(
                                    RoundedRectangle(cornerRadius: geometry.size.width * 0.05)
                                        .stroke(Color.white, lineWidth: 4)
                                )
                        }
                        .padding(.horizontal)
                    }
                    
                    // Category Section
                    Text("Categories")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.black)
                        .padding(.horizontal)
                    
                    // Category Buttons
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 15) {
                            CategoryButton(category: "All", selectedCategory: $selectedCategory)
                            CategoryButton(category: "Heart Attack", emoji: "💔", selectedCategory: $selectedCategory)
                            CategoryButton(category: "Running", emoji: "🚶‍♂️", selectedCategory: $selectedCategory)
                            CategoryButton(category: "Bodybuilding", emoji: "💪", selectedCategory: $selectedCategory)
                        }
                        .padding(.horizontal)
                    }
                    
                    // Selected Category Display
                    Text("\(selectedCategory) Selected")
                        .font(.system(size: 18)).fontWeight(.bold)
                        .foregroundColor(.black).opacity(0.6)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding(.horizontal)
                        .padding(.top, 30)
                    
                    Spacer()
                }
                
                .background(
                    VStack {
                        Color(red: 52/255, green: 55/255, blue: 63/255)
                            .ignoresSafeArea()
                            .frame(height: geometry.size.height / 2)
                        Color(red: 239/255, green: 236/255, blue: 232/255)
                            .ignoresSafeArea()
                    }
                )
            }
            .navigationTitle("Fitness Courses")
            .toolbarColorScheme(.dark, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}


struct FitnessCoursesView_Previews: PreviewProvider {
    static var previews: some View {
        FitnessCoursesView()
    }
}

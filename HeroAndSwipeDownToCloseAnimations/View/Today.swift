//
//  Today.swift
//  HeroAndSwipeDownToCloseAnimations
//
//  Created by ramil on 18.11.2020.
//

import SwiftUI

struct Today: View {
    var animation: Namespace.ID
    @EnvironmentObject var detail: DetailViewModel
    
    var body: some View {
        ScrollView {
            VStack {
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Saturday 14 November")
                            .foregroundColor(.gray)
                        Text("Today")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                    }
                    Spacer()
                    
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "person.circle")
                            .font(.largeTitle)
                    })
                }.padding()
                
                ForEach(item) { item in
                    TodayCardView(item: item, animation: animation)
                        .onTapGesture {
                            withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.8, blendDuration: 0.8)) {
                                detail.selectedItem = item
                                detail.show.toggle()
                            }
                        }
                }
            }.padding(.bottom)
        }.background(Color.primary.opacity(0.06).ignoresSafeArea())
    }
}

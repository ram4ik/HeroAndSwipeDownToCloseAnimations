//
//  TodayCardView.swift
//  HeroAndSwipeDownToCloseAnimations
//
//  Created by ramil on 18.11.2020.
//

import SwiftUI

struct TodayCardView: View {
    var item: TodayItem
    @Environment(\.colorScheme) var color
    var animation: Namespace.ID
    
    var body: some View {
        VStack {
            Image(item.contentImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width - 30, height: 250)
            HStack {
                Image(item.overlay)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .matchedGeometryEffect(id: item.contentImage, in: animation)
                    .frame(width: 65, height: 65)
                    .cornerRadius(15)
                VStack(alignment: .leading, spacing: 6, content: {
                    Text(item.title)
                        .fontWeight(.bold)
                        
                    Text(item.category)
                        .font(.caption)
                        .foregroundColor(.gray)
                })
                Spacer()
                VStack {
                    Button(action: {
                        
                    }, label: {
                        Text("GET")
                            .fontWeight(.bold)
                            .padding(.vertical, 10)
                            .padding(.horizontal, 25)
                            .background(Color.primary.opacity(0.1))
                            .clipShape(Capsule())
                    })
                    Text("In App Purchases")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
            }
            .matchedGeometryEffect(id: item.id, in: animation)
            .padding()
        }
        .background(color == .dark ? Color.black : Color.white)
        .cornerRadius(15)
        .padding(.horizontal)
        .padding(.top)
    }
}

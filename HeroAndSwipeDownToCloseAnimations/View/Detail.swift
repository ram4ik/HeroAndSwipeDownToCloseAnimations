//
//  Detail.swift
//  HeroAndSwipeDownToCloseAnimations
//
//  Created by ramil on 18.11.2020.
//

import SwiftUI

struct Detail: View {
    @ObservedObject var detail: DetailViewModel
    var animation: Namespace.ID
    
    var body: some View {
        VStack {
            Image(detail.selectedItem.contentImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .matchedGeometryEffect(id: detail.selectedItem.contentImage, in: animation)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2.5)
            
            HStack {
                Image(detail.selectedItem.overlay)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .matchedGeometryEffect(id: detail.selectedItem.contentImage, in: animation)
                    .frame(width: 65, height: 65)
                    .cornerRadius(15)
                VStack(alignment: .leading, spacing: 6, content: {
                    Text(detail.selectedItem.title)
                        .fontWeight(.bold)
                        
                    Text(detail.selectedItem.category)
                        .font(.caption)
                        .foregroundColor(.gray)
                })
                Spacer()
                VStack {
                    Button(action: {
                        
                        withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.8, blendDuration: 0.8)) {
                            detail.show.toggle()
                        }
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
            .matchedGeometryEffect(id: detail.selectedItem.id, in: animation)
            .padding()
            
            ScrollView {
                Text("""
                    Race through the ultimate street racing scene at dizzying speed! Have fun winning the racing car collection of your dreams. Pick an event, choose a lineup of cars from your collection, and start racing for infamy in the first Forza game for mobile.

                    COLLECT AND UPGRADE ICONIC CARS
                    Race to collect legendary cars at intense speed – from classic muscle to modern sports and retro supercars – turning your garage into a trophy case of iconic racing cars, with all the fun, attention to graphics detail, and speed Forza is known for.

                    TRUE CINEMATIC RACING
                    Streamlined controls focus on the fun - timing your gas, brake, and boost are the keys to victory, as action cams chase the racing adrenaline up close showcasing amazing graphics. The stunning, best in class, 3D visuals bring the action to life while you’re speeding across the asphalt. It’s a fun, new, and wholly unique way to enjoy Forza.

                    RACE ON YOUR TERMS
                    Race your collection of cars anytime, anywhere. Squeeze in a fun, quick one minute race, or dive into immersive story driven events with multiple paths to victory in the cars you love. New controls let you easily race with the tap of a finger to control your gas, brake, and boost. Forza Street has something fun for you any time you feel like racing at high speed and boosting across the finish line to victory.

                    Additional Game Features

                    Burn rubber on the road while you speed through streets to collect and upgrade iconic cars. Pit your collection against the world and compete in 1v1, point to point races to climb the ranks and top the leaderboards. Additional in-game events will always keep the action fresh and fun!

                    Collect, Customize, Compete with and Upgrade more than 50 real cars from top international car brands. Supercars from Lamborghini and McLaren. American Muscle cars from Chevrolet and Dodge. Sports cars from BMW and Porsche. And Street racers from Nissan and Ford. Build out your garage with cars from each category to take on the different Story mode bosses.
                    """)
                    .padding()
            } 
            
            Spacer()
        }
        .ignoresSafeArea(.all, edges: .top)
    }
}

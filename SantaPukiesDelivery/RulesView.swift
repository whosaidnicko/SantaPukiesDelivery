//
//  RulesView.swift
//  SantaPukiesDelivery
//
//  Created by Nicolae Chivriga on 09/12/2024.
//

import SwiftUI

struct RulesView: View {
    var body: some View {
        ZStack {
            Image("bg")
                .resizable()
                .ignoresSafeArea()
            
                Image("rectGreen")
                .overlay {
                    VStack {
                        Image("logo")
                            .resizable()
                            .frame(width: 267, height: 118)
                        
                        Text("Control Santa’s sleigh to collect all the gifts scattered across the map. Use arrows or swipes to move around. Avoid obstacles like trees, cars, and cones. Collect all the gifts before the timer runs out to progress to the next level. If you hit an obstacle or run out of time, the game is over.")
                            .font(.system(size: 14, weight: .semibold, design: .monospaced))
                            .foregroundStyle(.white)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 80)
                    }
                }
        }
        .navigationBarItems(leading: BackBtnView())
        .navigationBarBackButtonHidden()
    }
}

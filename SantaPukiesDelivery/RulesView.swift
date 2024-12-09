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
                        
                        Text("Take control of Santa as he rides his magical sleigh through the snowy skies! Collect as many falling presents as possible to earn points, but be careful to avoid obstacles like icy winds and chimneys that can slow you down. Keep your sleigh moving smoothly and aim for the highest score to save Christmas!")
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

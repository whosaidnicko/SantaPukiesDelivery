//
//  OptionsView.swift
//  SantaPukiesDelivery
//
//  Created by Nicolae Chivriga on 09/12/2024.
//

import SwiftUI
import StoreKit


struct OptionsView: View {
    @Environment(\.requestReview) var requestReview
    var body: some View {
        ZStack {
            Image("bg")
                .resizable()
                .ignoresSafeArea()
            
            Image("rectGreen")
                .overlay {
                    VStack(spacing: 16) {
                        Button {
                            requestReview()
                        } label: {
                            Image("btnRed")
                                .overlay {
                                    Text("Rate")
                                        .font(.system(size: 20, weight: .semibold, design: .monospaced))
                                        .foregroundStyle(.white)
                                }

                        }
                        
                        Button {
                            if let url = URL(string: "mailto:tuaiochocki@gmail.com") {
                                if UIApplication.shared.canOpenURL(url) {
                                    UIApplication.shared.open(url)
                                }
                            }
                        } label: {
                            Image("btnRed")
                                .overlay {
                                    Text("Contact")
                                        .font(.system(size: 20, weight: .semibold, design: .monospaced))
                                        .foregroundStyle(.white)
                                }

                        }

                    }
                }
        }
        .navigationBarBackButtonHidden()
        .navigationBarItems(leading: BackBtnView())
    }
}

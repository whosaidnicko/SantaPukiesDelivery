//
//  GameViewSanta.swift
//  SantaPukiesDelivery
//
//  Created by Nicolae Chivriga on 09/12/2024.
//

import SwiftUI
import Lottie

struct GameViewSanta: View {
    @State var show: Bool = false
    var body: some View {
        ZStack {
            Image("bg")
                .resizable()
                .ignoresSafeArea()
            WKWebViewRepresentable(url: URL(string: "https://plays.org/game/santa-chase/")!, onLoadCompletion: {
                withAnimation {
                        show = true
                }
            })
            .mask({
                if show {
                    Rectangle()
                }
            })
            
            VStack {
                LottieView(animation: .named("santamoving"))
                    .playing(loopMode: .loop)
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width, height: 390)
               
                Spacer()
            }
            .opacity(!show ? 1 : 0)
            
        }
        .navigationBarBackButtonHidden()
        .navigationBarItems(leading: BackBtnView())
        .ignoresSafeArea()
    }
}

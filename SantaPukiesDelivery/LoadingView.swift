//
//  LoadingView.swift
//  SantaPukiesDelivery
//
//  Created by Nicolae Chivriga on 09/12/2024.
//

import SwiftUI


struct LoadingView: View {
    @State var loadingPresented: Bool = false
    @State var menu: Bool = false
    var body: some View {
        ZStack {
            Image("bgBlur")
                .resizable()
                .ignoresSafeArea()
            
            NavigationLink("", destination: MenuView(), isActive: $menu)
            VStack {
                Image("logo")
                
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.init(hex: "#068F42"))
                    .overlay {
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.init(hex: "#E93F41"))
                            .frame(width:  230 * ( loadingPresented ? 1 : 0), height: 10)
                    }
                    .frame(width: 276, height: 23)
                
            }
            .onAppear() {
                withAnimation(Animation.linear(duration: 3.5)) {
                    loadingPresented = true
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.5) {
                    menu = true 
                }
            }
        }
    }
}
extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}

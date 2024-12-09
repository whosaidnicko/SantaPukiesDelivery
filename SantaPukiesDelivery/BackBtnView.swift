//
//  BackBtnView.swift
//  SantaPukiesDelivery
//
//  Created by Nicolae Chivriga on 09/12/2024.
//

import SwiftUI

struct BackBtnView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        Button {
            dismiss()
        } label: {
            Image("back")
                .resizable()
                .frame(width: 35, height: 35)
        }

   
    }
}

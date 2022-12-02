//
//  TopMoverItemView.swift
//  SwiftCoinTutorial
//
//  Created by Antonio Vuono on 30/11/22.
//

import SwiftUI

struct TopMoverItemView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
                .padding(.bottom, 8)
            
            HStack(spacing: 2) {
                Text("BTC")
                    .font(.caption)
                    .fontWeight(.bold)
                
                Text("$20,000,00")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            Text("+ 5,60%")
                .foregroundColor(.green)
        }
        .frame(width: 140, height: 140)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray4), lineWidth: 2)
        )
    }
}

struct TopMoverItemView_Previews: PreviewProvider {
    static var previews: some View {
        TopMoverItemView()
    }
}

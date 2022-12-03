//
//  AllCoinsView.swift
//  SwiftCoinTutorial
//
//  Created by Antonio Vuono on 30/11/22.
//

import SwiftUI

struct AllCoinsView: View {
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("All Coins")
                .font(.headline)
                .fontWeight(.bold)
                .padding()
            
            HStack {
                Text("Coin")
                    .font(.caption)
                    
                Spacer()
                
                Text("Price")
                    .font(.caption)
            }
            .font(.caption)
            .foregroundColor(.gray)
            .padding(.horizontal)
            
            ScrollView {
                VStack {
                    ForEach(viewModel.coins) { coin in
                        CoinRowView(coin: coin)
                    }
                }
            }
        }
    }
}

struct AllCoinsView_Previews: PreviewProvider {
    static var previews: some View {
        AllCoinsView()
    }
}
